import type { SearchResult } from "@/types";

const API_KEY = import.meta.env.VITE_RAWG_API_KEY as string;
const BASE_URL = "https://api.rawg.io/api";

interface RawgNamed {
  name: string;
}

interface RawgGame {
  id: number;
  name: string;
  released?: string | null;
  background_image?: string | null;
  genres?: RawgNamed[];
  platforms?: { platform: RawgNamed }[] | null;
}

interface RawgGameDetail extends RawgGame {
  developers?: RawgNamed[];
  publishers?: RawgNamed[];
  description_raw?: string;
}

type GameSearchResult = Extract<SearchResult, { media_type: "game" }>;

export async function searchGames(query: string): Promise<SearchResult[]> {
  if (!API_KEY) return [];
  const res = await fetch(
    `${BASE_URL}/games?key=${API_KEY}&search=${encodeURIComponent(query)}&page_size=10`
  );
  const data = await res.json();

  return (data.results ?? []).slice(0, 10).map(
    (g: RawgGame): GameSearchResult => ({
      external_id: String(g.id),
      external_source: "rawg",
      media_type: "game",
      title: g.name,
      year: g.released ? parseInt(g.released.slice(0, 4)) : null,
      cover_url: g.background_image ?? null,
      genres: (g.genres ?? []).map((x) => x.name),
      details: {
        platforms: (g.platforms ?? []).map((p) => p.platform.name),
        developers: [],
        publishers: [],
        overview: null,
      },
    })
  );
}

/**
 * RAWG search results omit developers, publishers and description; fetch them
 * from the detail endpoint before the game is saved.
 */
export async function enrichGame(result: GameSearchResult): Promise<GameSearchResult> {
  if (!API_KEY || result.details.developers.length > 0) return result;
  const res = await fetch(`${BASE_URL}/games/${result.external_id}?key=${API_KEY}`);
  if (!res.ok) return result;
  const g: RawgGameDetail = await res.json();
  return {
    ...result,
    details: {
      ...result.details,
      developers: (g.developers ?? []).map((x) => x.name),
      publishers: (g.publishers ?? []).map((x) => x.name),
      overview: g.description_raw?.trim() || result.details.overview,
    },
  };
}
