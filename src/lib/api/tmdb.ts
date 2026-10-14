import type { SearchResult } from "@/types";

const API_KEY = import.meta.env.VITE_TMDB_API_KEY as string;
const BASE_URL = "https://api.themoviedb.org/3";
const IMG_BASE = "https://image.tmdb.org/t/p/w500";

interface TmdbMovie {
  id: number;
  title: string;
  release_date?: string;
  poster_path?: string;
  genre_ids?: number[];
  overview?: string;
}

const MOVIE_GENRES: Record<number, string> = {
  28: "Action", 12: "Adventure", 16: "Animation", 35: "Comedy", 80: "Crime",
  99: "Documentary", 18: "Drama", 10751: "Family", 14: "Fantasy", 36: "History",
  27: "Horror", 10402: "Music", 9648: "Mystery", 10749: "Romance",
  878: "Sci-Fi", 10770: "TV Movie", 53: "Thriller", 10752: "War", 37: "Western",
};

export async function searchMovies(query: string): Promise<SearchResult[]> {
  if (!API_KEY) return [];
  const res = await fetch(
    `${BASE_URL}/search/movie?api_key=${API_KEY}&query=${encodeURIComponent(query)}&page=1`
  );
  const data = await res.json();

  return (data.results ?? []).slice(0, 10).map(
    (m: TmdbMovie): SearchResult => ({
      external_id: String(m.id),
      external_source: "tmdb_movie",
      media_type: "movie",
      title: m.title,
      year: m.release_date ? parseInt(m.release_date.slice(0, 4)) : null,
      cover_url: m.poster_path ? `${IMG_BASE}${m.poster_path}` : null,
      genres: (m.genre_ids ?? [])
        .map((id) => MOVIE_GENRES[id])
        .filter(Boolean) as string[],
      details: {
        director: null,
        overview: m.overview || null,
        runtime_minutes: null,
      },
    })
  );
}
