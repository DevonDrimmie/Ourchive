import { useQuery } from "@tanstack/react-query";
import type { MediaType, SearchResult } from "@/types";
import { searchMovies, searchTv } from "@/lib/api/tmdb";
import { searchBooks } from "@/lib/api/openlib";
import { searchRecords } from "@/lib/api/musicbrainz";
import { useDebounce } from "./useDebounce";

async function searchByType(
  query: string,
  mediaType: MediaType
): Promise<SearchResult[]> {
  switch (mediaType) {
    case "movie":
      return searchMovies(query);
    case "tv":
      return searchTv(query);
    case "book":
      return searchBooks(query);
    case "record":
      return searchRecords(query);
  }
}

export function useSearch(query: string, mediaType: MediaType) {
  const debouncedQuery = useDebounce(query, 400);

  return useQuery({
    queryKey: ["search", mediaType, debouncedQuery],
    queryFn: () => searchByType(debouncedQuery, mediaType),
    enabled: debouncedQuery.length >= 2,
    staleTime: 1000 * 60 * 5,
    placeholderData: (prev) => prev,
  });
}
