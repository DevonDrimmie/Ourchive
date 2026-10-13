import { supabase } from "@/lib/supabase";
import type { SearchResult } from "@/types";

/** Game search via the igdb-search Edge Function (IGDB needs a server-side Twitch secret). */
export async function searchGames(query: string): Promise<SearchResult[]> {
  const { data, error } = await supabase.functions.invoke<SearchResult[]>("igdb-search", {
    body: { query, limit: 10 },
  });
  if (error) throw error;
  return data ?? [];
}
