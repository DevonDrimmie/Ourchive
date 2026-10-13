import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { supabase } from "@/lib/supabase";
import type {
  Entry,
  EntryDetails,
  EntryFull,
  EntryStatus,
  EntryWithProfile,
  MediaType,
  OwnershipStatus,
  Profile,
  SearchResult,
} from "@/types";
import { shouldBumpFeedEvent } from "@/lib/feedBump";
import { enrichGame } from "@/lib/api/rawg";
import {
  ENTRY_DETAILS_SELECT,
  ENTRY_DETAIL_TABLES,
  MEDIA_SELECT,
  entrySelect,
  normalizeEntry,
  normalizeMedia,
  toUpsertMediaArgs,
  type RawMediaRow,
} from "@/lib/media";
import { useAuth } from "./useAuth";

/** Find-or-create the media row and its typed subtype row; returns media id. */
export async function upsertMedia(result: SearchResult): Promise<string> {
  const toSave =
    result.media_type === "game"
      ? await enrichGame(result).catch(() => result)
      : result;

  const { data, error } = await supabase.rpc("upsert_media", toUpsertMediaArgs(toSave));
  if (error) throw error;
  return data as string;
}

/** Insert or replace the type-specific details row for an entry. */
export async function saveEntryDetails(
  entryId: string,
  mediaType: MediaType,
  details: EntryDetails
): Promise<void> {
  const { error } = await supabase
    .from(ENTRY_DETAIL_TABLES[mediaType])
    .upsert({ entry_id: entryId, ...details }, { onConflict: "entry_id" });
  if (error) throw error;
}

interface CreateEntryParams {
  searchResult: SearchResult;
  status: EntryStatus;
  ownership: OwnershipStatus;
  rating?: number | null;
  review?: string | null;
  consumed_date?: string | null;
  details?: EntryDetails | null;
}

export function useCreateEntry() {
  const queryClient = useQueryClient();
  const { user } = useAuth();

  return useMutation({
    mutationFn: async (params: CreateEntryParams) => {
      if (!user) throw new Error("Not authenticated");

      const mediaId = await upsertMedia(params.searchResult);

      const { data: existing } = await supabase
        .from("entries")
        .select("*")
        .eq("media_id", mediaId)
        .eq("user_id", user.id)
        .maybeSingle();

      let feed_bumped_at: string;
      if (existing) {
        const bump = shouldBumpFeedEvent(
          { status: existing.status, ownership: existing.ownership },
          { status: params.status, ownership: params.ownership }
        );
        feed_bumped_at = bump
          ? new Date().toISOString()
          : (existing.feed_bumped_at ?? existing.created_at);
      } else {
        feed_bumped_at = new Date().toISOString();
      }

      const { data, error } = await supabase
        .from("entries")
        .upsert(
          {
            media_id: mediaId,
            user_id: user.id,
            status: params.status,
            ownership: params.ownership,
            rating: params.rating ?? null,
            review: params.review ?? null,
            consumed_date: params.consumed_date ?? null,
            feed_bumped_at,
          },
          { onConflict: "media_id,user_id" }
        )
        .select()
        .single();

      if (error) throw error;

      if (params.details) {
        await saveEntryDetails(data.id, params.searchResult.media_type, params.details);
      }
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["entries"] });
      queryClient.invalidateQueries({ queryKey: ["feed"] });
    },
  });
}

type UpdateEntryParams = Partial<Omit<Entry, "details">> & {
  id: string;
  /** Required to save `details` (selects the *_entry_details table). */
  mediaType?: MediaType;
  details?: EntryDetails | null;
};

export function useUpdateEntry() {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({ id, mediaType, details, ...updates }: UpdateEntryParams) => {
      const { data: prev, error: fetchError } = await supabase
        .from("entries")
        .select("*")
        .eq("id", id)
        .single();

      if (fetchError) throw fetchError;
      if (!prev) throw new Error("Entry not found");

      const next = { ...prev, ...updates } as Entry;
      const bumpStatus = shouldBumpFeedEvent(
        { status: prev.status, ownership: prev.ownership },
        { status: next.status, ownership: next.ownership }
      );

      const mediaChanged =
        typeof updates.media_id === "string" &&
        updates.media_id !== prev.media_id;

      if (mediaChanged) {
        const { data: conflict, error: conflictErr } = await supabase
          .from("entries")
          .select("id")
          .eq("media_id", updates.media_id)
          .eq("user_id", prev.user_id)
          .neq("id", id)
          .maybeSingle();

        if (conflictErr) throw conflictErr;
        if (conflict) {
          throw new Error(
            "You already have an entry for that title. Remove or edit the other entry first."
          );
        }
      }

      const bump = bumpStatus || mediaChanged;

      const payload: Record<string, unknown> = { ...updates };
      if (bump) {
        payload.feed_bumped_at = new Date().toISOString();
      }

      const { data, error } = await supabase
        .from("entries")
        .update(payload)
        .eq("id", id)
        .select()
        .single();

      if (error) throw error;

      if (details && mediaType) {
        await saveEntryDetails(id, mediaType, details);
      }
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["entries"] });
      queryClient.invalidateQueries({ queryKey: ["feed"] });
      queryClient.invalidateQueries({ queryKey: ["media"] });
      queryClient.invalidateQueries({ queryKey: ["entries", "media"] });
    },
  });
}

export function useDeleteEntry() {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async (id: string) => {
      const { error } = await supabase.from("entries").delete().eq("id", id);
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["entries"] });
      queryClient.invalidateQueries({ queryKey: ["feed"] });
    },
  });
}

function toEntriesWithMedia(rows: Record<string, unknown>[] | null): EntryFull[] {
  return (rows ?? [])
    .filter((r) => r.media != null)
    .map((r) => normalizeEntry<EntryFull>(r));
}

export function useFeed(mediaTypeFilter?: string) {
  return useQuery({
    queryKey: ["feed", mediaTypeFilter],
    queryFn: async () => {
      const useInner =
        mediaTypeFilter && mediaTypeFilter !== "all";

      let query = supabase
        .from("entries")
        .select(entrySelect({ innerMedia: !!useInner }))
        .order("feed_bumped_at", { ascending: false })
        .limit(50);

      if (useInner) {
        query = query.eq("media.media_type", mediaTypeFilter);
      }

      const { data, error } = await query;
      if (error) throw error;
      return toEntriesWithMedia(data as unknown as Record<string, unknown>[] | null);
    },
  });
}

interface CollectionFilters {
  mediaType?: string;
  status?: string;
  ownership?: string;
  userId?: string;
  sortBy?: string;
}

export function useCollection(filters: CollectionFilters) {
  return useQuery({
    queryKey: ["entries", "collection", filters],
    queryFn: async () => {
      const useInner =
        filters.mediaType && filters.mediaType !== "all";

      let query = supabase
        .from("entries")
        .select(entrySelect({ innerMedia: !!useInner }));

      if (useInner) {
        query = query.eq("media.media_type", filters.mediaType);
      }
      if (filters.userId) {
        query = query.eq("user_id", filters.userId);
      }
      if (filters.status && filters.status !== "all") {
        query = query.eq("status", filters.status);
      }
      if (filters.ownership && filters.ownership !== "all") {
        if (filters.ownership === "owned") {
          query = query.in("ownership", ["physical", "digital"]);
        } else {
          query = query.eq("ownership", filters.ownership);
        }
      }

      switch (filters.sortBy) {
        case "rating":
          query = query.order("rating", { ascending: false, nullsFirst: false });
          break;
        case "title":
          query = query.order("created_at", { ascending: false });
          break;
        case "date":
        default:
          query = query.order("updated_at", { ascending: false });
      }

      const { data, error } = await query;
      if (error) throw error;
      return toEntriesWithMedia(data as unknown as Record<string, unknown>[] | null);
    },
  });
}

export function useMediaEntries(mediaId: string) {
  return useQuery({
    queryKey: ["entries", "media", mediaId],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("entries")
        .select(`*, ${ENTRY_DETAILS_SELECT}, profiles(*)`)
        .eq("media_id", mediaId);

      if (error) throw error;
      return ((data ?? []) as unknown as Record<string, unknown>[]).map((r) =>
        normalizeEntry<EntryWithProfile>(r)
      );
    },
    enabled: !!mediaId,
  });
}

/**
 * Fetch every entry (any user) for a given list of media IDs.
 * Used by the collection page so the blended card can show all users
 * who have the media, even when the page is filtered to one user's list.
 */
export function useEntriesForMediaList(mediaIds: string[]) {
  const sortedKey = [...mediaIds].sort().join(",");
  return useQuery({
    queryKey: ["entries", "media-list", sortedKey],
    queryFn: async () => {
      if (mediaIds.length === 0) return [];
      const { data, error } = await supabase
        .from("entries")
        .select(`*, ${ENTRY_DETAILS_SELECT}, profiles(*)`)
        .in("media_id", mediaIds);

      if (error) throw error;
      return ((data ?? []) as unknown as Record<string, unknown>[]).map((r) =>
        normalizeEntry<EntryWithProfile>(r)
      );
    },
    enabled: mediaIds.length > 0,
  });
}

export function useMediaDetail(mediaId: string) {
  return useQuery({
    queryKey: ["media", mediaId],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("media")
        .select(MEDIA_SELECT)
        .eq("id", mediaId)
        .single();

      if (error) throw error;
      return normalizeMedia(data as unknown as RawMediaRow);
    },
    enabled: !!mediaId,
  });
}

export function useProfiles() {
  return useQuery({
    queryKey: ["profiles"],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("profiles")
        .select("*");

      if (error) throw error;
      return data as Profile[];
    },
  });
}
