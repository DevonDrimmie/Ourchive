import { Link } from "react-router-dom";
import { Film, Tv, BookOpen, Disc3 } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import { RatingStars } from "@/components/media/RatingStars";
import type { Media, MediaType } from "@/types";
import { MEDIA_TYPE_LABELS } from "@/types";
import { cn } from "@/lib/utils";
import type { EntryWithMedia } from "@/components/media/MediaCollectionInsights";

const typeIcons: Record<MediaType, typeof Film> = {
  movie: Film,
  tv: Tv,
  book: BookOpen,
  record: Disc3,
};

function CoverThumb({ media }: { media: Media }) {
  const Icon = typeIcons[media.media_type];
  return (
    <div
      className={cn(
        "relative shrink-0 overflow-hidden rounded-md bg-muted",
        media.media_type === "record" ? "h-16 w-16" : "h-20 w-14"
      )}
    >
      {media.cover_url ? (
        <img
          src={media.cover_url}
          alt=""
          className="h-full w-full object-cover"
          loading="lazy"
          referrerPolicy="no-referrer"
        />
      ) : (
        <div className="flex h-full w-full items-center justify-center">
          <Icon className="h-6 w-6 text-muted-foreground/40" />
        </div>
      )}
    </div>
  );
}

export function CollectionReviewsList({
  entries,
  showMediaTypeBadge,
}: {
  entries: EntryWithMedia[];
  showMediaTypeBadge?: boolean;
}) {
  const withReview = [...entries]
    .filter((e) => e.review?.trim())
    .sort(
      (a, b) =>
        new Date(b.updated_at).getTime() - new Date(a.updated_at).getTime()
    );

  if (withReview.length === 0) {
    return (
      <p className="text-sm text-muted-foreground py-8 text-center">
        No reviews yet.
      </p>
    );
  }

  return (
    <ul className="space-y-3">
      {withReview.map((e) => (
        <li key={e.id}>
          <Link
            to={`/media/${e.media.id}`}
            className="block rounded-lg border border-border/50 bg-card p-3 hover:border-primary/30 transition-colors"
          >
            <div className="flex gap-3">
              <CoverThumb media={e.media} />
              <div className="min-w-0 flex-1">
                <div className="flex flex-wrap items-start justify-between gap-2">
                  <span className="font-medium leading-snug">{e.media.title}</span>
                  {e.rating != null && (
                    <RatingStars rating={e.rating} size="sm" />
                  )}
                </div>
                {showMediaTypeBadge && (
                  <Badge variant="secondary" className="mt-1 text-[10px] font-normal">
                    {MEDIA_TYPE_LABELS[e.media.media_type]}
                  </Badge>
                )}
                <p className="text-sm text-muted-foreground mt-2 line-clamp-6 whitespace-pre-wrap">
                  {e.review}
                </p>
              </div>
            </div>
          </Link>
        </li>
      ))}
    </ul>
  );
}

export function CollectionWantList({
  entries,
  showMediaTypeBadge,
}: {
  entries: EntryWithMedia[];
  showMediaTypeBadge?: boolean;
}) {
  const wanted = [...entries]
    .filter((e) => e.status === "want")
    .sort(
      (a, b) =>
        new Date(b.updated_at).getTime() - new Date(a.updated_at).getTime()
    );

  if (wanted.length === 0) {
    return (
      <p className="text-sm text-muted-foreground py-8 text-center">
        Nothing on the wishlist yet.
      </p>
    );
  }

  return (
    <ul className="space-y-2">
      {wanted.map((e) => (
        <li key={e.id}>
          <Link
            to={`/media/${e.media.id}`}
            className="flex items-center gap-3 rounded-lg border border-border/50 bg-card p-2.5 hover:border-primary/30 transition-colors"
          >
            <CoverThumb media={e.media} />
            <div className="min-w-0 flex-1">
              <p className="font-medium truncate">{e.media.title}</p>
              <div className="flex flex-wrap items-center gap-2 mt-0.5">
                {e.media.year != null && (
                  <span className="text-xs text-muted-foreground">{e.media.year}</span>
                )}
                {showMediaTypeBadge && (
                  <Badge variant="secondary" className="text-[10px] font-normal">
                    {MEDIA_TYPE_LABELS[e.media.media_type]}
                  </Badge>
                )}
              </div>
            </div>
          </Link>
        </li>
      ))}
    </ul>
  );
}
