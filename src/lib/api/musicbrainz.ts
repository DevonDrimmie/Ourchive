import type { SearchResult } from "@/types";

interface MbRelease {
  id: string;
  title: string;
  date?: string;
  "artist-credit"?: { name: string }[];
  "release-group"?: {
    "primary-type"?: string;
    "secondary-types"?: string[];
  };
  "tag-list"?: { name: string }[];
}

const COVER_BASE = "https://coverartarchive.org/release";

export async function searchRecords(query: string): Promise<SearchResult[]> {
  const res = await fetch(
    `https://musicbrainz.org/ws/2/release/?query=${encodeURIComponent(query)}&limit=10&fmt=json`,
    {
      headers: {
        "User-Agent": "Ourchive/0.1 (https://github.com/ourchive)",
      },
    }
  );
  const data = await res.json();

  return (data.releases ?? []).slice(0, 10).map((r: MbRelease) => {
    const artist = r["artist-credit"]?.[0]?.name ?? "Unknown Artist";
    const year = r.date ? parseInt(r.date.slice(0, 4)) : null;
    const types = [
      r["release-group"]?.["primary-type"],
      ...(r["release-group"]?.["secondary-types"] ?? []),
    ].filter(Boolean) as string[];

    return {
      external_id: r.id,
      external_source: "musicbrainz",
      media_type: "record" as const,
      title: r.title,
      year: isNaN(year ?? NaN) ? null : year,
      cover_url: `${COVER_BASE}/${r.id}/front-250`,
      genres: types.length > 0 ? types : (r["tag-list"] ?? []).slice(0, 5).map((t) => t.name),
      metadata: { artist },
    };
  });
}
