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
  "label-info"?: { label?: { name?: string } }[];
  "track-count"?: number;
  "tag-list"?: { name: string }[];
  tags?: { name: string }[];
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

  return (data.releases ?? []).slice(0, 10).map((r: MbRelease): SearchResult => {
    const artist = r["artist-credit"]?.[0]?.name ?? "Unknown Artist";
    const year = r.date ? parseInt(r.date.slice(0, 4)) : null;
    const releaseTypes = [
      r["release-group"]?.["primary-type"],
      ...(r["release-group"]?.["secondary-types"] ?? []),
    ].filter(Boolean) as string[];
    const tags = (r.tags ?? r["tag-list"] ?? []).slice(0, 5).map((t) => t.name);

    return {
      external_id: r.id,
      external_source: "musicbrainz",
      media_type: "record",
      title: r.title,
      year: isNaN(year ?? NaN) ? null : year,
      cover_url: `${COVER_BASE}/${r.id}/front-250`,
      genres: tags,
      details: {
        artist,
        release_type: releaseTypes.join(" / ") || null,
        label: r["label-info"]?.find((l) => l.label?.name)?.label?.name ?? null,
        track_count: r["track-count"] ?? null,
      },
    };
  });
}
