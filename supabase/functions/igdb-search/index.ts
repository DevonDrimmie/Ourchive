// Proxies game search to IGDB. IGDB has no CORS support and needs a Twitch app
// secret, so the browser calls this function instead.
// Secrets: TWITCH_CLIENT_ID, TWITCH_CLIENT_SECRET (supabase secrets set ...).

const CORS_HEADERS = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
  "Access-Control-Allow-Methods": "POST, OPTIONS",
};

const COVER_BASE = "https://images.igdb.com/igdb/image/upload/t_cover_big";

// IGDB game_types worth logging: main game, expansion, standalone expansion,
// remake, remaster, expanded game. Excludes DLC, bundles, mods, ports, updates.
const LOGGABLE_GAME_TYPES = "(0,2,4,8,9,10)";

interface IgdbGame {
  id: number;
  name: string;
  first_release_date?: number;
  summary?: string;
  total_rating_count?: number;
  cover?: { image_id: string };
  genres?: { name: string }[];
  platforms?: { name: string; abbreviation?: string }[];
  involved_companies?: {
    developer: boolean;
    publisher: boolean;
    company: { name: string };
  }[];
}

let cachedToken: { value: string; expiresAt: number } | null = null;

async function getAppToken(clientId: string, clientSecret: string): Promise<string> {
  if (cachedToken && cachedToken.expiresAt > Date.now() + 60_000) {
    return cachedToken.value;
  }
  const res = await fetch(
    `https://id.twitch.tv/oauth2/token?client_id=${clientId}&client_secret=${clientSecret}&grant_type=client_credentials`,
    { method: "POST" }
  );
  if (!res.ok) throw new Error(`Twitch token request failed (${res.status})`);
  const data = await res.json();
  cachedToken = {
    value: data.access_token,
    expiresAt: Date.now() + data.expires_in * 1000,
  };
  return cachedToken.value;
}

function json(body: unknown, status = 200): Response {
  return new Response(JSON.stringify(body), {
    status,
    headers: { ...CORS_HEADERS, "Content-Type": "application/json" },
  });
}

Deno.serve(async (req) => {
  if (req.method === "OPTIONS") return new Response("ok", { headers: CORS_HEADERS });

  const clientId = Deno.env.get("TWITCH_CLIENT_ID");
  const clientSecret = Deno.env.get("TWITCH_CLIENT_SECRET");
  if (!clientId || !clientSecret) {
    return json({ error: "IGDB is not configured (missing Twitch credentials)" }, 503);
  }

  let query = "";
  let limit = 10;
  try {
    const body = await req.json();
    query = String(body.query ?? "").trim();
    limit = Math.min(Math.max(Number(body.limit) || 10, 1), 25);
  } catch {
    return json({ error: "Expected JSON body { query }" }, 400);
  }
  if (query.length < 2) return json([]);

  const apicalypse = [
    `search "${query.replace(/["\\]/g, "")}";`,
    "fields name, first_release_date, summary, total_rating_count, cover.image_id, genres.name,",
    "  platforms.name, platforms.abbreviation,",
    "  involved_companies.developer, involved_companies.publisher, involved_companies.company.name;",
    `where version_parent = null & game_type = ${LOGGABLE_GAME_TYPES};`,
    // IGDB's search relevance ignores popularity, so over-fetch and re-rank below.
    "limit 30;",
  ].join("\n");

  try {
    const token = await getAppToken(clientId, clientSecret);
    const res = await fetch("https://api.igdb.com/v4/games", {
      method: "POST",
      headers: {
        "Client-ID": clientId,
        Authorization: `Bearer ${token}`,
        "Content-Type": "text/plain",
      },
      body: apicalypse,
    });
    if (res.status === 401) cachedToken = null;
    if (!res.ok) return json({ error: `IGDB request failed (${res.status})` }, 502);

    const games: IgdbGame[] = (await res.json())
      .sort((a: IgdbGame, b: IgdbGame) => (b.total_rating_count ?? 0) - (a.total_rating_count ?? 0))
      .slice(0, limit);
    const companies = (g: IgdbGame, role: "developer" | "publisher") =>
      (g.involved_companies ?? []).filter((c) => c[role]).map((c) => c.company.name);

    return json(
      games.map((g) => ({
        external_id: String(g.id),
        external_source: "igdb",
        media_type: "game",
        title: g.name,
        year: g.first_release_date
          ? new Date(g.first_release_date * 1000).getUTCFullYear()
          : null,
        cover_url: g.cover ? `${COVER_BASE}/${g.cover.image_id}.jpg` : null,
        genres: (g.genres ?? []).map((x) => x.name),
        details: {
          platforms: (g.platforms ?? []).map((p) => p.abbreviation || p.name),
          developers: companies(g, "developer"),
          publishers: companies(g, "publisher"),
          overview: g.summary ?? null,
        },
      }))
    );
  } catch (e) {
    return json({ error: e instanceof Error ? e.message : "IGDB search failed" }, 502);
  }
});
