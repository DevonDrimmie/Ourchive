export type MediaType = "movie" | "tv" | "book" | "record";

export type EntryStatus = "want" | "consuming" | "completed";

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
  owned: boolean;
  rating: number | null;
  review: string | null;
  consumed_date: string | null;
  created_at: string;
  updated_at: string;
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
};

export const MEDIA_TYPE_VERB: Record<MediaType, Record<EntryStatus, string>> = {
  movie: { want: "Want to watch", consuming: "Watching", completed: "Watched" },
  tv: { want: "Want to watch", consuming: "Watching", completed: "Watched" },
  book: { want: "Want to read", consuming: "Reading", completed: "Read" },
  record: {
    want: "Want to listen",
    consuming: "Listening",
    completed: "Listened",
  },
};
