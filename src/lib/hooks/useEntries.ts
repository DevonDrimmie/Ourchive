import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { supabase } from "@/lib/supabase";
import type { Entry, EntryStatus, Media, OwnershipStatus, Profile, SearchResult } from "@/types";
import { useAuth } from "./useAuth";

export async function upsertMedia(result: SearchResult): Promise<string> {
  if (result.external_id && result.external_source) {
    const { data: existing } = await supabase
      .from("media")
      .select("id")
      .eq("external_id", result.external_id)
      .eq("external_source", result.external_source)
      .single();

    if (existing) return existing.id;
  }

  const { data, error } = await supabase
    .from("media")
    .insert({
      media_type: result.media_type,
      title: result.title,
      year: result.year,
      cover_url: result.cover_url,
      genres: result.genres,
      external_id: result.external_id,
      external_source: result.external_source,
      metadata: result.metadata,
    })
    .select("id")
    .single();

  if (error) throw error;
  return data.id;
}

interface CreateEntryParams {
  searchResult: SearchResult;
  status: EntryStatus;
  ownership: OwnershipStatus;
  rating?: number | null;
  review?: string | null;
  consumed_date?: string | null;
}

export function useCreateEntry() {
  const queryClient = useQueryClient();
  const { user } = useAuth();

  return useMutation({
    mutationFn: async (params: CreateEntryParams) => {
      if (!user) throw new Error("Not authenticated");

      const mediaId = await upsertMedia(params.searchResult);

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
          },
          { onConflict: "media_id,user_id" }
        )
        .select()
        .single();

      if (error) throw error;
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["entries"] });
      queryClient.invalidateQueries({ queryKey: ["feed"] });
    },
  });
}

export function useUpdateEntry() {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      id,
      ...updates
    }: Partial<Entry> & { id: string }) => {
      const { data, error } = await supabase
        .from("entries")
        .update(updates)
        .eq("id", id)
        .select()
        .single();

      if (error) throw error;
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["entries"] });
      queryClient.invalidateQueries({ queryKey: ["feed"] });
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

export function useFeed(mediaTypeFilter?: string) {
  return useQuery({
    queryKey: ["feed", mediaTypeFilter],
    queryFn: async () => {
      const useInner =
        mediaTypeFilter && mediaTypeFilter !== "all";
      const selectStr = useInner
        ? "*, media!inner(*), profiles(*)"
        : "*, media(*), profiles(*)";

      let query = supabase
        .from("entries")
        .select(selectStr)
        .order("updated_at", { ascending: false })
        .limit(50);

      if (useInner) {
        query = query.eq("media.media_type", mediaTypeFilter);
      }

      const { data, error } = await query;
      if (error) throw error;
      return (data ?? []).filter(
        (e: { media: Media | null }) => e.media !== null
      );
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
      const selectStr = useInner
        ? "*, media!inner(*), profiles(*)"
        : "*, media(*), profiles(*)";

      let query = supabase
        .from("entries")
        .select(selectStr);

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
      return (data ?? []).filter(
        (e: { media: Media | null }) => e.media !== null
      );
    },
  });
}

export function useMediaEntries(mediaId: string) {
  return useQuery({
    queryKey: ["entries", "media", mediaId],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("entries")
        .select("*, profiles(*)")
        .eq("media_id", mediaId);

      if (error) throw error;
      return data ?? [];
    },
    enabled: !!mediaId,
  });
}

export function useMediaDetail(mediaId: string) {
  return useQuery({
    queryKey: ["media", mediaId],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("media")
        .select("*")
        .eq("id", mediaId)
        .single();

      if (error) throw error;
      return data as Media;
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
