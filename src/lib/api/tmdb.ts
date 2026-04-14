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

interface TmdbTv {
  id: number;
  name: string;
  first_air_date?: string;
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

const TV_GENRES: Record<number, string> = {
  10759: "Action & Adventure", 16: "Animation", 35: "Comedy", 80: "Crime",
  99: "Documentary", 18: "Drama", 10751: "Family", 10762: "Kids",
  9648: "Mystery", 10763: "News", 10764: "Reality", 10765: "Sci-Fi & Fantasy",
  10766: "Soap", 10767: "Talk", 10768: "War & Politics", 37: "Western",
};

export async function searchMovies(query: string): Promise<SearchResult[]> {
  if (!API_KEY) return [];
  const res = await fetch(
    `${BASE_URL}/search/movie?api_key=${API_KEY}&query=${encodeURIComponent(query)}&page=1`
  );
  const data = await res.json();

  return (data.results ?? []).slice(0, 10).map((m: TmdbMovie) => ({
    external_id: String(m.id),
    external_source: "tmdb_movie",
    media_type: "movie" as const,
    title: m.title,
    year: m.release_date ? parseInt(m.release_date.slice(0, 4)) : null,
    cover_url: m.poster_path ? `${IMG_BASE}${m.poster_path}` : null,
    genres: (m.genre_ids ?? [])
      .map((id) => MOVIE_GENRES[id])
      .filter(Boolean) as string[],
    metadata: { overview: m.overview },
  }));
}

export async function searchTv(query: string): Promise<SearchResult[]> {
  if (!API_KEY) return [];
  const res = await fetch(
    `${BASE_URL}/search/tv?api_key=${API_KEY}&query=${encodeURIComponent(query)}&page=1`
  );
  const data = await res.json();

  return (data.results ?? []).slice(0, 10).map((t: TmdbTv) => ({
    external_id: String(t.id),
    external_source: "tmdb_tv",
    media_type: "tv" as const,
    title: t.name,
    year: t.first_air_date ? parseInt(t.first_air_date.slice(0, 4)) : null,
    cover_url: t.poster_path ? `${IMG_BASE}${t.poster_path}` : null,
    genres: (t.genre_ids ?? [])
      .map((id) => TV_GENRES[id])
      .filter(Boolean) as string[],
    metadata: { overview: t.overview },
  }));
}
