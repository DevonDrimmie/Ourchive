import { useQuery } from "@tanstack/react-query";
import { supabase } from "@/lib/supabase";
import { searchByType } from "@/lib/api";
import { MEDIA_TYPES } from "@/types";
import type { MediaType, SearchResult, EntryStatus } from "@/types";
import { useDebounce } from "./useDebounce";

export type OmniResult = SearchResult & {
  existingMediaId?: string;
  userStatuses?: {
    userId: string;
    displayName: string;
    status: EntryStatus;
    ownership: string;
    rating: number | null;
  }[];
};

const externalKey = (source: string, id: string) => `${source}:${id}`;

export function useOmniSearch(query: string) {
  const debouncedQuery = useDebounce(query, 400);

  return useQuery({
    queryKey: ["omni-search", debouncedQuery],
    queryFn: async (): Promise<OmniResult[]> => {
      const settled = await Promise.allSettled(
        MEDIA_TYPES.map((t) => searchByType(debouncedQuery, t))
      );

      const results: SearchResult[] = settled.flatMap((s) =>
        s.status === "fulfilled" ? s.value.slice(0, 3) : []
      );

      const externalIds = results
        .filter((r) => r.external_id)
        .map((r) => r.external_id);

      const existingMap = new Map<
        string,
        { mediaId: string; statuses: OmniResult["userStatuses"] }
      >();

      if (externalIds.length > 0) {
        const { data: mediaRows } = await supabase
          .from("media")
          .select("id, external_id, external_source")
          .in("external_id", externalIds);

        if (mediaRows && mediaRows.length > 0) {
          const mediaIds = mediaRows.map((m: { id: string }) => m.id);

          const { data: entryRows } = await supabase
            .from("entries")
            .select("media_id, user_id, status, ownership, rating, profiles(display_name)")
            .in("media_id", mediaIds);

          for (const m of mediaRows as {
            id: string;
            external_id: string;
            external_source: string;
          }[]) {
            const entries = (entryRows ?? []).filter(
              (e: { media_id: string }) => e.media_id === m.id
            );
            existingMap.set(externalKey(m.external_source, m.external_id), {
              mediaId: m.id,
              statuses: entries.map(
                (e: {
                  user_id: string;
                  status: EntryStatus;
                  ownership: string;
                  rating: number | null;
                  profiles: { display_name: string } | { display_name: string }[];
                }) => {
                  const p = Array.isArray(e.profiles)
                    ? e.profiles[0]
                    : e.profiles;
                  return {
                    userId: e.user_id,
                    displayName: p?.display_name ?? "",
                    status: e.status,
                    ownership: e.ownership,
                    rating: e.rating,
                  };
                }
              ),
            });
          }
        }
      }

      return results.map((r) => {
        const existing = existingMap.get(externalKey(r.external_source, r.external_id));
        return {
          ...r,
          existingMediaId: existing?.mediaId,
          userStatuses: existing?.statuses,
        };
      });
    },
    enabled: debouncedQuery.length >= 2,
    staleTime: 1000 * 60 * 5,
    placeholderData: (prev) => prev,
  });
}

/** Search a single media type (e.g. when relinking an entry to a different title). */
export function useMediaTypeSearch(mediaType: MediaType, query: string) {
  const debouncedQuery = useDebounce(query, 400);

  return useQuery({
    queryKey: ["media-type-search", mediaType, debouncedQuery],
    queryFn: async (): Promise<SearchResult[]> =>
      (await searchByType(debouncedQuery, mediaType)).slice(0, 12),
    enabled: debouncedQuery.trim().length >= 2,
    staleTime: 1000 * 60 * 5,
    placeholderData: (prev) => prev,
  });
}
