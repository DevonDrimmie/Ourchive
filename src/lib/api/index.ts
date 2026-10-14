import type { MediaType, SearchResult } from "@/types";
import { searchMovies } from "./tmdb";
import { searchBooks } from "./openlib";
import { searchRecords } from "./musicbrainz";
import { searchGames } from "./igdb";

export function searchByType(
  query: string,
  mediaType: MediaType
): Promise<SearchResult[]> {
  switch (mediaType) {
    case "movie":
      return searchMovies(query);
    case "book":
      return searchBooks(query);
    case "record":
      return searchRecords(query);
    case "game":
      return searchGames(query);
  }
}
