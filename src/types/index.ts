export type MediaType = "movie" | "tv" | "book" | "record";

export type EntryStatus = "want" | "consuming" | "completed" | "dnf";

export type OwnershipStatus = "none" | "want_to_own" | "physical" | "digital";

export interface Profile {
  id: string;
  display_name: string;
  avatar_url: string | null;
}

export interface Media {
  id: string;
  media_type: MediaType;
  title: string;
  year: number | null;
  cover_url: string | null;
  genres: string[];
  external_id: string | null;
  external_source: string | null;
  metadata: Record<string, unknown>;
  created_at: string;
}

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

export interface SearchResult {
  external_id: string;
  external_source: string;
  media_type: MediaType;
  title: string;
  year: number | null;
  cover_url: string | null;
  genres: string[];
  metadata: Record<string, unknown>;
}

export const MEDIA_TYPE_LABELS: Record<MediaType, string> = {
  movie: "Movie",
  tv: "TV Show",
  book: "Book",
  record: "Record",
};

export const STATUS_LABELS: Record<EntryStatus, string> = {
  want: "Want",
  consuming: "In Progress",
  completed: "Completed",
  dnf: "DNF",
};

export const OWNERSHIP_LABELS: Record<OwnershipStatus, string> = {
  none: "Don't own",
  want_to_own: "Want to own",
  physical: "Own (Physical)",
  digital: "Own (Digital)",
};

export const MEDIA_TYPE_VERB: Record<MediaType, Record<EntryStatus, string>> = {
  movie: { want: "Want to watch", consuming: "Watching", completed: "Watched", dnf: "Did not finish" },
  tv: { want: "Want to watch", consuming: "Watching", completed: "Watched", dnf: "Did not finish" },
  book: { want: "Want to read", consuming: "Reading", completed: "Read", dnf: "Did not finish" },
  record: { want: "Want to listen", consuming: "Listening", completed: "Listened", dnf: "Did not finish" },
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
    secondaryCta: { label: "Want to watch", status: "want", ownership: "none" },
  },
  tv: {
    statusOptions: ["want", "consuming", "completed", "dnf"],
    ownershipOptions: ["none", "want_to_own", "physical", "digital"],
    defaultStatus: "want",
    defaultOwnership: "none",
    showStatus: true,
    showOwnership: true,
    primaryCta: { label: "Log", status: "completed", ownership: "none" },
    secondaryCta: { label: "Want to watch", status: "want", ownership: "none" },
  },
  book: {
    statusOptions: ["want", "consuming", "completed", "dnf"],
    ownershipOptions: ["none", "want_to_own", "physical", "digital"],
    defaultStatus: "want",
    defaultOwnership: "none",
    showStatus: true,
    showOwnership: true,
    primaryCta: { label: "Log", status: "completed", ownership: "none" },
    secondaryCta: { label: "Want to read", status: "want", ownership: "none" },
  },
  record: {
    statusOptions: [],
    ownershipOptions: ["none", "want_to_own", "physical"],
    defaultStatus: "completed",
    defaultOwnership: "want_to_own",
    showStatus: false,
    showOwnership: true,
    primaryCta: { label: "Owned", status: "completed", ownership: "physical" },
    secondaryCta: { label: "Want to own", status: "want", ownership: "want_to_own" },
  },
};
