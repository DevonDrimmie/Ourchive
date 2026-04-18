import { Link } from "react-router-dom";
import { Film, Tv, BookOpen, Disc3 } from "lucide-react";
import { Card } from "@/components/ui/card";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import {
  Tooltip,
  TooltipTrigger,
  TooltipContent,
} from "@/components/ui/tooltip";
import { Badge } from "@/components/ui/badge";
import { RatingStars } from "./RatingStars";
import {
  statusConfig,
  ownershipConfig,
  completedLabels,
} from "./StatusBadge";
import type { Media, Entry, Profile, EntryStatus, OwnershipStatus } from "@/types";
import { cn } from "@/lib/utils";

export interface EntryWithProfile {
  entry: Entry;
  profile: Profile;
}

interface BlendedMediaCardProps {
  media: Media;
  items: EntryWithProfile[];
  /** When false, review excerpts are hidden (e.g. collection grid). Home feed can pass true. */
  showReviews?: boolean;
  className?: string;
}

const typeIcons = {
  movie: Film,
  tv: Tv,
  book: BookOpen,
  record: Disc3,
} as const;

const STATUS_ORDER: EntryStatus[] = [
  "want",
  "consuming",
  "completed",
  "dnf",
];

const OWNERSHIP_ORDER: OwnershipStatus[] = [
  "want_to_own",
  "physical",
  "digital",
];

function TooltipNames({ profiles }: { profiles: Profile[] }) {
  const count = profiles.length;
  if (count === 0) return null;
  if (count === 1) {
    return <p className="text-xs">{profiles[0]?.display_name}</p>;
  }
  return (
    <>
      <p className="text-xs font-medium">{count} people</p>
      <ul className="mt-1 list-inside list-disc text-xs text-muted-foreground">
        {profiles.map((p) => (
          <li key={p.id}>{p.display_name}</li>
        ))}
      </ul>
    </>
  );
}

function AggregatedStatusBadges({
  items,
  mediaType,
}: {
  items: EntryWithProfile[];
  mediaType: Media["media_type"];
}) {
  const hideStatus = mediaType === "record";

  const byStatus = new Map<EntryStatus, Profile[]>();
  const byOwnership = new Map<OwnershipStatus, Profile[]>();

  for (const { entry, profile } of items) {
    const sl = byStatus.get(entry.status) ?? [];
    sl.push(profile);
    byStatus.set(entry.status, sl);

    if (entry.ownership !== "none") {
      const ol = byOwnership.get(entry.ownership) ?? [];
      ol.push(profile);
      byOwnership.set(entry.ownership, ol);
    }
  }

  return (
    <div className="flex flex-wrap items-center gap-1.5">
      {!hideStatus &&
        STATUS_ORDER.map((status) => {
          const profiles = byStatus.get(status);
          if (!profiles?.length) return null;
          const config = statusConfig[status];
          const Icon = config.icon;
          const label =
            status === "completed" && mediaType
              ? completedLabels[mediaType] ?? config.label
              : config.label;
          const count = profiles.length;
          return (
            <Tooltip key={status}>
              <TooltipTrigger asChild>
                <span className="inline-flex cursor-default">
                  <Badge variant={config.variant} className="gap-1 text-xs tabular-nums">
                    {count > 1 ? (
                      <span className="flex h-3 w-3 items-center justify-center text-[10px] font-semibold leading-none">
                        {count}
                      </span>
                    ) : (
                      <Icon className="h-3 w-3" />
                    )}
                    {label}
                  </Badge>
                </span>
              </TooltipTrigger>
              <TooltipContent side="top" className="max-w-xs">
                <TooltipNames profiles={profiles} />
              </TooltipContent>
            </Tooltip>
          );
        })}

      {OWNERSHIP_ORDER.map((own) => {
        const profiles = byOwnership.get(own);
        if (!profiles?.length) return null;
        const ownConfig = ownershipConfig[own];
        if (!ownConfig) return null;
        const OwnIcon = ownConfig.icon;
        const count = profiles.length;
        return (
          <Tooltip key={own}>
            <TooltipTrigger asChild>
              <span className="inline-flex cursor-default">
                <Badge variant="outline" className="gap-1 text-xs tabular-nums">
                  {count > 1 ? (
                    <span className="flex h-3 w-3 items-center justify-center text-[10px] font-semibold leading-none">
                      {count}
                    </span>
                  ) : (
                    <OwnIcon className="h-3 w-3" />
                  )}
                  {ownConfig.label}
                </Badge>
              </span>
            </TooltipTrigger>
            <TooltipContent side="top" className="max-w-xs">
              <TooltipNames profiles={profiles} />
            </TooltipContent>
          </Tooltip>
        );
      })}
    </div>
  );
}

function StackedRatings({ items }: { items: EntryWithProfile[] }) {
  const rated = items
    .filter((i) => i.entry.rating != null)
    .sort((a, b) =>
      a.profile.display_name.localeCompare(b.profile.display_name)
    );

  if (rated.length === 0) return null;

  return (
    <div className="flex flex-col items-end gap-1 shrink-0">
      {rated.map(({ entry, profile }) => (
        <Tooltip key={entry.id}>
          <TooltipTrigger asChild>
            <span className="flex cursor-default items-center gap-1.5">
              <Avatar className="h-3.5 w-3.5 shrink-0">
                {profile.avatar_url && (
                  <AvatarImage
                    src={profile.avatar_url}
                    alt=""
                    className="object-cover"
                  />
                )}
                <AvatarFallback className="text-[7px] leading-none bg-muted">
                  {profile.display_name
                    ?.split(" ")
                    .map((n) => n[0])
                    .join("")
                    .slice(0, 2)
                    .toUpperCase()}
                </AvatarFallback>
              </Avatar>
              <RatingStars rating={entry.rating} size="sm" />
            </span>
          </TooltipTrigger>
          <TooltipContent side="left">
            {profile.display_name}
          </TooltipContent>
        </Tooltip>
      ))}
    </div>
  );
}

export function BlendedMediaCard({
  media,
  items,
  showReviews = true,
  className,
}: BlendedMediaCardProps) {
  const Icon = typeIcons[media.media_type];
  const subtitle =
    media.media_type === "record"
      ? (media.metadata as { artist?: string })?.artist
      : media.media_type === "book"
        ? (media.metadata as { authors?: string[] })?.authors?.join(", ")
        : undefined;

  const users = [...new Map(items.map((i) => [i.profile.id, i.profile])).values()].sort(
    (a, b) => a.display_name.localeCompare(b.display_name)
  );

  const reviewRows = items
    .filter((i) => i.entry.review?.trim())
    .sort(
      (a, b) =>
        new Date(b.entry.updated_at).getTime() -
        new Date(a.entry.updated_at).getTime()
    );

  return (
    <Link to={`/media/${media.id}`} className="block h-full">
      <Card
        className={cn(
          "group h-full overflow-hidden border-border/50 bg-card py-0 gap-0 hover:border-primary/30 transition-all duration-200",
          className
        )}
      >
        <div className="flex flex-1 items-stretch gap-3 p-3">
          <div
            className={cn(
              "relative shrink-0 overflow-hidden rounded-md bg-muted self-start",
              media.media_type === "record" ? "h-24 w-24" : "h-28 w-20"
            )}
          >
            <div
              className="pointer-events-none absolute left-1.5 top-1.5 z-10 flex size-7 items-center justify-center rounded-full bg-card shadow-sm ring-1 ring-border/60"
              aria-hidden
            >
              <Icon className="size-3.5 text-muted-foreground" />
            </div>
            {media.cover_url ? (
              <img
                src={media.cover_url}
                alt={media.title}
                className="h-full w-full object-cover transition-transform duration-200 group-hover:scale-105"
                loading="lazy"
                referrerPolicy="no-referrer"
                crossOrigin="anonymous"
                onError={(e) => {
                  e.currentTarget.style.display = "none";
                  e.currentTarget.nextElementSibling?.classList.remove("hidden");
                }}
              />
            ) : null}
            <div
              className={cn(
                "absolute inset-0 flex h-full w-full items-center justify-center",
                media.cover_url && "hidden"
              )}
            >
              <Icon className="h-8 w-8 text-muted-foreground/50" />
            </div>
          </div>

          <div className="flex min-h-0 min-w-0 flex-1 flex-col gap-1.5 py-0.5">
            <div className="flex items-start justify-between gap-2">
              <div className="min-w-0 flex-1">
                <h3 className="line-clamp-2 text-sm font-semibold leading-tight group-hover:text-primary transition-colors">
                  {media.title}
                </h3>
              </div>
              <div className="flex -space-x-2 shrink-0 pt-0.5">
                {users.map((profile, idx) => (
                  <Tooltip key={profile.id}>
                    <TooltipTrigger asChild>
                      <div
                        className="relative shrink-0 rounded-full ring-2 ring-card"
                        style={{ zIndex: users.length - idx }}
                      >
                        <Avatar className="h-6 w-6">
                          {profile.avatar_url && (
                            <AvatarImage
                              src={profile.avatar_url}
                              alt={profile.display_name}
                            />
                          )}
                          <AvatarFallback className="text-[8px] bg-primary/20 text-primary">
                            {profile.display_name
                              ?.split(" ")
                              .map((n) => n[0])
                              .join("")
                              .slice(0, 2)
                              .toUpperCase()}
                          </AvatarFallback>
                        </Avatar>
                      </div>
                    </TooltipTrigger>
                    <TooltipContent>{profile.display_name}</TooltipContent>
                  </Tooltip>
                ))}
              </div>
            </div>

            {subtitle && (
              <p className="text-xs text-muted-foreground truncate -mt-0.5">
                {subtitle}
              </p>
            )}

            <div className="flex items-center gap-2 text-xs text-muted-foreground">
              {media.year && <span>{media.year}</span>}
              {media.genres.length > 0 && (
                <span className="truncate">
                  {media.genres.slice(0, 2).join(", ")}
                </span>
              )}
            </div>

            {showReviews && reviewRows.length > 0 && (
              <div className="space-y-2 border-t border-border/50 pt-2">
                {reviewRows.map(({ entry, profile }) => (
                  <div key={entry.id} className="flex gap-2">
                    <Tooltip>
                      <TooltipTrigger asChild>
                        <div className="shrink-0 pt-0.5">
                          <Avatar className="h-6 w-6">
                            {profile.avatar_url && (
                              <AvatarImage
                                src={profile.avatar_url}
                                alt={profile.display_name}
                              />
                            )}
                            <AvatarFallback className="text-[8px] bg-muted">
                              {profile.display_name
                                ?.split(" ")
                                .map((n) => n[0])
                                .join("")
                                .slice(0, 2)
                                .toUpperCase()}
                            </AvatarFallback>
                          </Avatar>
                        </div>
                      </TooltipTrigger>
                      <TooltipContent side="left">{profile.display_name}</TooltipContent>
                    </Tooltip>
                    <div className="min-w-0 flex-1">
                      {entry.rating != null && (
                        <div className="mb-0.5">
                          <RatingStars rating={entry.rating} size="sm" />
                        </div>
                      )}
                      <p className="text-xs text-muted-foreground whitespace-pre-wrap wrap-break-word">
                        {entry.review}
                      </p>
                    </div>
                  </div>
                ))}
              </div>
            )}

            <div className="mt-auto flex items-start justify-between gap-2 pt-1">
              <div className="min-w-0 flex-1">
                <AggregatedStatusBadges items={items} mediaType={media.media_type} />
              </div>
              <StackedRatings items={items} />
            </div>
          </div>
        </div>
      </Card>
    </Link>
  );
}
