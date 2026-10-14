import { Link } from "react-router-dom";
import { formatDistanceToNow } from "date-fns";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { CoverImage } from "./CoverImage";
import { RatingGlyphs } from "./RatingStars";
import { statusConfig, ownershipConfig, completedLabels } from "./StatusBadge";
import { MEDIA_TYPE_ICONS } from "./mediaTypeIcons";
import type { EntryWithProfile } from "./BlendedMediaCard";
import type { Entry, Media, Profile } from "@/types";
import { MEDIA_TYPE_LABELS } from "@/types";
import { byCoverShape, getMediaSubtitle } from "@/lib/media";
import { cn } from "@/lib/utils";

interface FeedReviewRowProps {
  media: Media;
  /** Entries for this media, most recent first. */
  items: EntryWithProfile[];
  updatedAt: Date;
}

function initials(name: string) {
  return name
    .split(" ")
    .map((n) => n[0])
    .join("")
    .slice(0, 2)
    .toUpperCase();
}

function entryLabels(entry: Entry, mediaType: Media["media_type"]): string[] {
  const labels: string[] = [];
  if (mediaType !== "record") {
    labels.push(
      entry.status === "completed"
        ? completedLabels[mediaType] ?? statusConfig.completed.label
        : statusConfig[entry.status].label
    );
  }
  const own = ownershipConfig[entry.ownership];
  if (own) labels.push(own.label);
  return labels;
}

function Byline({ entry, profile, mediaType }: {
  entry: Entry;
  profile: Profile;
  mediaType: Media["media_type"];
}) {
  const labels = entryLabels(entry, mediaType);
  return (
    <div className="flex min-w-0 flex-wrap items-center gap-x-2.5 gap-y-1">
      <Link
        to={`/profile/${profile.id}`}
        className="flex min-w-0 items-center gap-2 text-sm font-bold text-foreground/80 hover:text-foreground"
      >
        <Avatar className="h-7 w-7 shrink-0">
          {profile.avatar_url && (
            <AvatarImage src={profile.avatar_url} alt="" className="object-cover" />
          )}
          <AvatarFallback className="bg-muted text-[10px]">
            {initials(profile.display_name)}
          </AvatarFallback>
        </Avatar>
        <span className="truncate">{profile.display_name}</span>
      </Link>
      {entry.rating != null && <RatingGlyphs rating={entry.rating} className="text-lg" />}
      {labels.length > 0 && (
        <span className="text-xs text-muted-foreground">{labels.join(" · ")}</span>
      )}
    </div>
  );
}

/** Letterboxd-style feed row: bare poster, title + year, per-person bylines and reviews. */
export function FeedReviewRow({ media, items, updatedAt }: FeedReviewRowProps) {
  const Icon = MEDIA_TYPE_ICONS[media.media_type];
  const subtitle = getMediaSubtitle(media);
  const href = `/media/${media.id}`;

  return (
    <article className="flex gap-4 sm:gap-6">
      <Link to={href} className="w-[70px] shrink-0 self-start sm:w-[84px]">
        <CoverImage
          src={media.cover_url}
          alt={media.title}
          mediaType={media.media_type}
          className={cn(
            "rounded-[3px] ring-1 ring-white/10 transition-opacity hover:opacity-80",
            byCoverShape(media.media_type, {
              portrait: "aspect-[2/3]",
              square: "aspect-square",
            })
          )}
        />
      </Link>

      <div className="min-w-0 flex-1">
        <h3 className="-mt-1 leading-tight">
          <Link
            to={href}
            className="text-xl font-bold tracking-tight text-foreground hover:text-primary sm:text-2xl"
          >
            {media.title}
          </Link>
          {media.year && (
            <span className="ml-2 text-lg font-normal text-muted-foreground sm:text-xl">
              {media.year}
            </span>
          )}
        </h3>
        {subtitle && (
          <p className="mt-0.5 truncate text-sm text-muted-foreground">{subtitle}</p>
        )}

        <div className="mt-3 space-y-5">
          {items.map(({ entry, profile }) => (
            <div key={entry.id} className="space-y-3">
              <Byline entry={entry} profile={profile} mediaType={media.media_type} />
              {entry.review?.trim() && (
                <p className="whitespace-pre-wrap wrap-break-word text-[15px] leading-7 text-foreground/75 sm:text-base">
                  {entry.review}
                </p>
              )}
            </div>
          ))}
        </div>

        <p className="mt-4 flex items-center gap-1.5 text-xs text-muted-foreground">
          <Icon className="h-3.5 w-3.5" aria-hidden />
          <span>{MEDIA_TYPE_LABELS[media.media_type]}</span>
          <span aria-hidden>·</span>
          <time dateTime={updatedAt.toISOString()}>
            {formatDistanceToNow(updatedAt, { addSuffix: true })}
          </time>
        </p>
      </div>
    </article>
  );
}
