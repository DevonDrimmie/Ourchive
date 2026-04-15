import { useQuery } from "@tanstack/react-query";
import { supabase } from "@/lib/supabase";
import { searchMovies, searchTv } from "@/lib/api/tmdb";
import { searchBooks } from "@/lib/api/openlib";
import { searchRecords } from "@/lib/api/musicbrainz";
import type { SearchResult, EntryStatus } from "@/types";
import { useDebounce } from "./useDebounce";

export interface OmniResult extends SearchResult {
  existingMediaId?: string;
  userStatuses?: {
    userId: string;
    displayName: string;
    status: EntryStatus;
    owned: boolean;
    rating: number | null;
  }[];
}

export function useOmniSearch(query: string) {
  const debouncedQuery = useDebounce(query, 400);

  return useQuery({
    queryKey: ["omni-search", debouncedQuery],
    queryFn: async (): Promise<OmniResult[]> => {
      const [movies, tv, books, records] = await Promise.allSettled([
        searchMovies(debouncedQuery),
        searchTv(debouncedQuery),
        searchBooks(debouncedQuery),
        searchRecords(debouncedQuery),
      ]);

      const results: SearchResult[] = [
        ...((movies.status === "fulfilled" ? movies.value : []) as SearchResult[]).slice(0, 3),
        ...((tv.status === "fulfilled" ? tv.value : []) as SearchResult[]).slice(0, 3),
        ...((books.status === "fulfilled" ? books.value : []) as SearchResult[]).slice(0, 3),
        ...((records.status === "fulfilled" ? records.value : []) as SearchResult[]).slice(0, 3),
      ];

      const externalIds = results
        .filter((r) => r.external_id)
        .map((r) => r.external_id!);

      let existingMap = new Map<
        string,
        { mediaId: string; statuses: OmniResult["userStatuses"] }
      >();

      if (externalIds.length > 0) {
        const { data: mediaRows } = await supabase
          .from("media")
          .select("id, external_id")
          .in("external_id", externalIds);

        if (mediaRows && mediaRows.length > 0) {
          const mediaIds = mediaRows.map((m: { id: string }) => m.id);

          const { data: entryRows } = await supabase
            .from("entries")
            .select("media_id, user_id, status, owned, rating, profiles(display_name)")
            .in("media_id", mediaIds);

          for (const m of mediaRows) {
            const entries = (entryRows ?? []).filter(
              (e: { media_id: string }) => e.media_id === m.id
            );
            existingMap.set(m.external_id, {
              mediaId: m.id,
              statuses: entries.map(
                (e: {
                  user_id: string;
                  status: EntryStatus;
                  owned: boolean;
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
                    owned: e.owned,
                    rating: e.rating,
                  };
                }
              ),
            });
          }
        }
      }

      return results.map((r) => {
        const existing = r.external_id
          ? existingMap.get(r.external_id)
          : undefined;
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
