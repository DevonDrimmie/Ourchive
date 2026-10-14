export type MediaType = "movie" | "book" | "record" | "game";

export const MEDIA_TYPES: MediaType[] = ["movie", "book", "record", "game"];

export type EntryStatus = "want" | "consuming" | "completed" | "dnf";

export type OwnershipStatus = "none" | "want_to_own" | "physical" | "digital";

export interface Profile {
  id: string;
  display_name: string;
  avatar_url: string | null;
}

// --- Per-type media details (one table per type, 1:1 with media) ---

export interface MovieDetails {
  director: string | null;
  overview: string | null;
  runtime_minutes: number | null;
}

export interface BookDetails {
  authors: string[];
  isbn: string | null;
  pages: number | null;
  publisher: string | null;
}

export interface RecordDetails {
  artist: string;
  release_type: string | null;
  label: string | null;
  track_count: number | null;
}

export interface GameDetails {
  platforms: string[];
  developers: string[];
  publishers: string[];
  overview: string | null;
}

export interface MediaDetailsByType {
  movie: MovieDetails;
  book: BookDetails;
  record: RecordDetails;
  game: GameDetails;
}

/** Fields every media type shares (the `media` table). */
interface MediaFields {
  title: string;
  year: number | null;
  cover_url: string | null;
  genres: string[];
}

export interface MediaBase extends MediaFields {
  id: string;
  media_type: MediaType;
  external_id: string | null;
  external_source: string | null;
  created_at: string;
}

type WithDetails<Base> = {
  [T in MediaType]: Omit<Base, "media_type"> & {
    media_type: T;
    details: MediaDetailsByType[T];
  };
}[MediaType];

export type Media = WithDetails<MediaBase>;

export type MediaOf<T extends MediaType> = Extract<Media, { media_type: T }>;

export type SearchResult = WithDetails<
  MediaFields & { media_type: MediaType; external_id: string; external_source: string }
>;

// --- Per-type entry details (optional, 1:1 with entries) ---

export type BookFormat = "physical" | "ebook" | "audiobook";
export type RecordFormat = "vinyl" | "cd" | "cassette" | "digital";

export interface MovieEntryDetails {
  rewatch_count: number;
}

export interface BookEntryDetails {
  format: BookFormat | null;
  started_date: string | null;
  pages_read: number | null;
}

export interface RecordEntryDetails {
  format: RecordFormat | null;
}

export interface GameEntryDetails {
  platform: string | null;
  hours_played: number | null;
}

export interface EntryDetailsByType {
  movie: MovieEntryDetails;
  book: BookEntryDetails;
  record: RecordEntryDetails;
  game: GameEntryDetails;
}

export type EntryDetails = EntryDetailsByType[MediaType];

export interface Entry {
  id: string;
  media_id: string;
  user_id: string;
  status: EntryStatus;
  ownership: OwnershipStatus;
  rating: number | null;
  review: string | null;
  consumed_date: string | null;
  created_at: string;
  updated_at: string;
  /** Drives home feed ordering; bumped only on meaningful status/ownership changes */
  feed_bumped_at?: string;
  /** Type-specific fields from the matching *_entry_details table, if any */
  details?: EntryDetails | null;
}

export interface EntryWithMedia extends Entry {
  media: Media;
}

export interface EntryWithProfile extends Entry {
  profiles: Profile;
}

export interface EntryFull extends Entry {
  media: Media;
  profiles: Profile;
}

export const MEDIA_TYPE_LABELS: Record<MediaType, string> = {
  movie: "Movie",
  book: "Book",
  record: "Record",
  game: "Game",
};

export const MEDIA_TYPE_PLURAL_LABELS: Record<MediaType, string> = {
  movie: "Movies",
  book: "Books",
  record: "Records",
  game: "Games",
};

/** URL segment for each type, e.g. /collection/games */
export const MEDIA_TYPE_SLUGS: Record<MediaType, string> = {
  movie: "movies",
  book: "books",
  record: "records",
  game: "games",
};

/** Cover art proportions per type: posters and box art, or album squares */
export const COVER_SHAPE: Record<MediaType, "portrait" | "square"> = {
  movie: "portrait",
  book: "portrait",
  record: "square",
  game: "portrait",
};

/** "want" is Backlog (want to consume); wanting to own is the "want_to_own" Wishlist ownership. */
export const STATUS_LABELS: Record<EntryStatus, string> = {
  want: "Backlog",
  consuming: "In Progress",
  completed: "Completed",
  dnf: "DNF",
};

export const OWNERSHIP_LABELS: Record<OwnershipStatus, string> = {
  none: "Don't own",
  want_to_own: "Wishlist",
  physical: "Own (Physical)",
  digital: "Own (Digital)",
};

export const MEDIA_TYPE_VERB: Record<MediaType, Record<EntryStatus, string>> = {
  movie: { want: "Backlog", consuming: "Watching", completed: "Watched", dnf: "Did not finish" },
  book: { want: "Backlog", consuming: "Reading", completed: "Read", dnf: "Did not finish" },
  record: { want: "Backlog", consuming: "Listening", completed: "Listened", dnf: "Did not finish" },
  game: { want: "Backlog", consuming: "Playing", completed: "Played", dnf: "Did not finish" },
};

export const BOOK_FORMAT_LABELS: Record<BookFormat, string> = {
  physical: "Physical",
  ebook: "E-book",
  audiobook: "Audiobook",
};

export const RECORD_FORMAT_LABELS: Record<RecordFormat, string> = {
  vinyl: "Vinyl",
  cd: "CD",
  cassette: "Cassette",
  digital: "Digital",
};

// --- Per-media-type configuration ---

export interface MediaTypeConfig {
  statusOptions: EntryStatus[];
  ownershipOptions: OwnershipStatus[];
  defaultStatus: EntryStatus;
  defaultOwnership: OwnershipStatus;
  showStatus: boolean;
  showOwnership: boolean;
  primaryCta: { label: string; status: EntryStatus; ownership: OwnershipStatus };
  secondaryCta: { label: string; status: EntryStatus; ownership: OwnershipStatus };
}

export const MEDIA_CONFIG: Record<MediaType, MediaTypeConfig> = {
  movie: {
    statusOptions: ["want", "consuming", "completed", "dnf"],
    ownershipOptions: ["none", "want_to_own", "physical", "digital"],
    defaultStatus: "want",
    defaultOwnership: "none",
    showStatus: true,
    showOwnership: true,
    primaryCta: { label: "Log", status: "completed", ownership: "none" },
    secondaryCta: { label: "Backlog", status: "want", ownership: "none" },
  },
  book: {
    statusOptions: ["want", "consuming", "completed", "dnf"],
    ownershipOptions: ["none", "want_to_own", "physical", "digital"],
    defaultStatus: "want",
    defaultOwnership: "none",
    showStatus: true,
    showOwnership: true,
    primaryCta: { label: "Log", status: "completed", ownership: "none" },
    secondaryCta: { label: "Backlog", status: "want", ownership: "none" },
  },
  record: {
    statusOptions: [],
    ownershipOptions: ["none", "want_to_own", "physical"],
    defaultStatus: "completed",
    defaultOwnership: "want_to_own",
    showStatus: false,
    showOwnership: true,
    primaryCta: { label: "Owned", status: "completed", ownership: "physical" },
    secondaryCta: { label: "Wishlist", status: "completed", ownership: "want_to_own" },
  },
  game: {
    statusOptions: ["want", "consuming", "completed", "dnf"],
    ownershipOptions: ["none", "want_to_own", "physical", "digital"],
    defaultStatus: "want",
    defaultOwnership: "none",
    showStatus: true,
    showOwnership: true,
    primaryCta: { label: "Log", status: "completed", ownership: "none" },
    secondaryCta: { label: "Backlog", status: "want", ownership: "none" },
  },
};
