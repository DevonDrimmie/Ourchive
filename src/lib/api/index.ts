import type { MediaType, SearchResult } from "@/types";
import { searchMovies, searchTv } from "./tmdb";
import { searchBooks } from "./openlib";
import { searchRecords } from "./musicbrainz";
import { searchGames } from "./rawg";

export function searchByType(
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
    case "game":
      return searchGames(query);
  }
}
