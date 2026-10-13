import {
  COVER_SHAPE,
  MEDIA_TYPES,
  type Entry,
  type EntryDetails,
  type EntryDetailsByType,
  type Media,
  type MediaBase,
  type MediaDetailsByType,
  type MediaType,
  type SearchResult,
} from "@/types";

export const MEDIA_DETAIL_TABLES: Record<MediaType, string> = {
  movie: "movies",
  tv: "tv_shows",
  book: "books",
  record: "records",
  game: "games",
};

export const ENTRY_DETAIL_TABLES: Record<MediaType, string> = {
  movie: "movie_entry_details",
  tv: "tv_entry_details",
  book: "book_entry_details",
  record: "record_entry_details",
  game: "game_entry_details",
};

/** Select for a media row with its subtype embedded under the type name (e.g. `book`). */
export const MEDIA_SELECT = [
  "*",
  ...MEDIA_TYPES.map((t) => `${t}:${MEDIA_DETAIL_TABLES[t]}(*)`),
].join(", ");

/** Embeds for an entry row's type-specific details (e.g. `book_details`). */
export const ENTRY_DETAILS_SELECT = MEDIA_TYPES.map(
  (t) => `${t}_details:${ENTRY_DETAIL_TABLES[t]}(*)`
).join(", ");

/** Entry row with details, profile and normalizable media. */
export function entrySelect(options: { innerMedia?: boolean } = {}): string {
  const media = options.innerMedia ? "media!inner" : "media";
  return `*, ${ENTRY_DETAILS_SELECT}, ${media}(${MEDIA_SELECT}), profiles(*)`;
}

const EMPTY_MEDIA_DETAILS: MediaDetailsByType = {
  movie: { director: null, overview: null, runtime_minutes: null },
  tv: { creators: [], overview: null, season_count: null, episode_count: null },
  book: { authors: [], isbn: null, pages: null, publisher: null },
  record: { artist: "Unknown Artist", release_type: null, label: null, track_count: null },
  game: { platforms: [], developers: [], publishers: [], overview: null },
};

export const EMPTY_ENTRY_DETAILS: EntryDetailsByType = {
  movie: { rewatch_count: 0 },
  tv: { current_season: null, current_episode: null },
  book: { format: null, started_date: null, pages_read: null },
  record: { format: null },
  game: { platform: null, hours_played: null },
};

/** True when details hold only default values, so no row needs to be written. */
export function isEmptyEntryDetails(mediaType: MediaType, details: EntryDetails): boolean {
  const empty = EMPTY_ENTRY_DETAILS[mediaType] as unknown as Record<string, unknown>;
  const d = details as unknown as Record<string, unknown>;
  return Object.keys(empty).every((k) => (d[k] ?? null) === empty[k]);
}

type Embedded = Record<string, unknown> | Record<string, unknown>[] | null | undefined;

/** PostgREST returns 1:1 embeds as an object, or as an array if it can't infer cardinality. */
function single(embed: Embedded): Record<string, unknown> | null {
  if (Array.isArray(embed)) return embed[0] ?? null;
  return embed ?? null;
}

function pickFields<T extends object>(template: T, row: Record<string, unknown> | null): T {
  const out = { ...template };
  if (!row) return out;
  for (const key of Object.keys(template) as (keyof T & string)[]) {
    if (row[key] !== undefined) out[key] = row[key] as T[typeof key];
  }
  return out;
}

export type RawMediaRow = MediaBase & Partial<Record<MediaType, Embedded>> & Record<string, unknown>;

/** Collapse a row selected with MEDIA_SELECT into a typed Media. */
export function normalizeMedia(row: RawMediaRow): Media {
  const base: MediaBase = {
    id: row.id,
    media_type: row.media_type,
    title: row.title,
    year: row.year,
    cover_url: row.cover_url,
    genres: row.genres ?? [],
    external_id: row.external_id,
    external_source: row.external_source,
    created_at: row.created_at,
  };
  const details = pickFields(
    EMPTY_MEDIA_DETAILS[row.media_type],
    single(row[row.media_type])
  );
  return { ...base, details } as Media;
}

/** Collapse an entry row selected with ENTRY_DETAILS_SELECT (and optionally media). */
export function normalizeEntry<T extends Entry = Entry>(row: Record<string, unknown>): T {
  const out: Record<string, unknown> = { ...row };
  let details: EntryDetails | null = null;
  for (const t of MEDIA_TYPES) {
    const embed = single(row[`${t}_details`] as Embedded);
    delete out[`${t}_details`];
    if (embed && !details) {
      details = pickFields(EMPTY_ENTRY_DETAILS[t] as EntryDetails, embed);
    }
  }
  out.details = details;
  if (row.media) out.media = normalizeMedia(row.media as RawMediaRow);
  return out as unknown as T;
}

/** Pick a value (usually cover size classes) by the type's cover proportions. */
export function byCoverShape<T>(
  mediaType: MediaType,
  values: { portrait: T; square: T }
): T {
  return values[COVER_SHAPE[mediaType]];
}

/** Strip a SearchResult down to the args of the upsert_media RPC. */
export function toUpsertMediaArgs(result: SearchResult) {
  return {
    p_media: {
      media_type: result.media_type,
      title: result.title,
      year: result.year,
      cover_url: result.cover_url,
      genres: result.genres,
      external_id: result.external_id,
      external_source: result.external_source,
    },
    p_details: result.details,
  };
}

/** Secondary line under a title: artist, authors, or developers (falling back to platforms). */
export function getMediaSubtitle(
  media: Media | SearchResult,
  options: { first?: boolean } = {}
): string | undefined {
  const join = (names: string[]) =>
    (options.first ? names.slice(0, 1) : names).join(", ") || undefined;
  switch (media.media_type) {
    case "record":
      return media.details.artist || undefined;
    case "book":
      return join(media.details.authors);
    case "game":
      return join(media.details.developers) ?? (media.details.platforms.slice(0, 3).join(", ") || undefined);
    case "movie":
    case "tv":
      return undefined;
  }
}

export function getMediaOverview(media: Media | SearchResult): string | undefined {
  switch (media.media_type) {
    case "movie":
    case "tv":
    case "game":
      return media.details.overview ?? undefined;
    case "book":
    case "record":
      return undefined;
  }
}
