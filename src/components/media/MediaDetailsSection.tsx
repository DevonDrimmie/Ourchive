import { format, parseISO } from "date-fns";
import {
  BOOK_FORMAT_LABELS,
  RECORD_FORMAT_LABELS,
  type BookEntryDetails,
  type EntryDetails,
  type GameEntryDetails,
  type Media,
  type MediaType,
  type MovieEntryDetails,
  type RecordEntryDetails,
  type TvEntryDetails,
} from "@/types";
import { getMediaOverview } from "@/lib/media";

type Fact = [label: string, value: string | number | null | undefined];

function mediaFacts(media: Media): Fact[] {
  const list = (xs: string[]) => xs.join(", ") || null;
  switch (media.media_type) {
    case "movie":
      return [
        ["Director", media.details.director],
        ["Runtime", media.details.runtime_minutes && `${media.details.runtime_minutes} min`],
      ];
    case "tv":
      return [
        ["Created by", list(media.details.creators)],
        ["Seasons", media.details.season_count],
        ["Episodes", media.details.episode_count],
      ];
    case "book":
      return [
        ["Pages", media.details.pages],
        ["Publisher", media.details.publisher],
        ["ISBN", media.details.isbn],
      ];
    case "record":
      return [
        ["Release", media.details.release_type],
        ["Label", media.details.label],
        ["Tracks", media.details.track_count],
      ];
    case "game":
      return [
        ["Platforms", list(media.details.platforms)],
        ["Developer", list(media.details.developers)],
        ["Publisher", list(media.details.publishers)],
      ];
  }
}

/** Type-specific facts and overview for the media detail page. */
export function MediaDetailsSection({ media }: { media: Media }) {
  const facts = mediaFacts(media).filter(([, v]) => v != null && v !== "");
  const overview = getMediaOverview(media);

  if (facts.length === 0 && !overview) return null;

  return (
    <div className="space-y-3">
      {facts.length > 0 && (
        <dl className="grid grid-cols-[auto_1fr] gap-x-4 gap-y-1 text-sm">
          {facts.map(([label, value]) => (
            <div key={label} className="contents">
              <dt className="text-muted-foreground">{label}</dt>
              <dd className="min-w-0 break-words">{value}</dd>
            </div>
          ))}
        </dl>
      )}
      {overview && (
        <p className="text-sm text-muted-foreground leading-relaxed break-words whitespace-pre-line line-clamp-[12]">
          {overview}
        </p>
      )}
    </div>
  );
}

function entryDetailParts(mediaType: MediaType, details: EntryDetails): string[] {
  switch (mediaType) {
    case "movie": {
      const d = details as MovieEntryDetails;
      return d.rewatch_count > 0
        ? [`Rewatched ${d.rewatch_count}×`]
        : [];
    }
    case "tv": {
      const d = details as TvEntryDetails;
      const parts = [
        d.current_season != null && `S${d.current_season}`,
        d.current_episode != null && `E${d.current_episode}`,
      ].filter(Boolean);
      return parts.length ? [parts.join(" ")] : [];
    }
    case "book": {
      const d = details as BookEntryDetails;
      return [
        d.format && BOOK_FORMAT_LABELS[d.format],
        d.started_date && `Started ${format(parseISO(d.started_date), "MMM d, yyyy")}`,
        d.pages_read != null && `${d.pages_read} pages read`,
      ].filter(Boolean) as string[];
    }
    case "record": {
      const d = details as RecordEntryDetails;
      return d.format ? [RECORD_FORMAT_LABELS[d.format]] : [];
    }
    case "game": {
      const d = details as GameEntryDetails;
      return [d.platform, d.hours_played != null && `${d.hours_played} h`].filter(
        Boolean
      ) as string[];
    }
  }
}

/** One-line summary of an entry's type-specific details, e.g. "Switch · 42.5 h". */
export function EntryDetailsLine({
  mediaType,
  details,
  className,
}: {
  mediaType: MediaType;
  details: EntryDetails | null | undefined;
  className?: string;
}) {
  if (!details) return null;
  const parts = entryDetailParts(mediaType, details);
  if (parts.length === 0) return null;
  return <p className={className}>{parts.join(" · ")}</p>;
}
