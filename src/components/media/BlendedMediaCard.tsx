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

function CountPill({ count }: { count: number }) {
  if (count <= 1) return null;
  return (
    <span
      className="absolute -right-1.5 -top-1.5 flex h-4 min-w-4 items-center justify-center rounded-full bg-primary px-0.5 text-[10px] font-semibold leading-none text-primary-foreground ring-2 ring-card"
      aria-hidden
    >
      {count}
    </span>
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
                <span className="relative inline-flex cursor-default">
                  <Badge variant={config.variant} className="gap-1 text-xs">
                    <Icon className="h-3 w-3" />
                    {label}
                  </Badge>
                  <CountPill count={count} />
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
              <span className="relative inline-flex cursor-default">
                <Badge variant="outline" className="gap-1 text-xs">
                  <OwnIcon className="h-3 w-3" />
                  {ownConfig.label}
                </Badge>
                <CountPill count={count} />
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

export function BlendedMediaCard({ media, items, className }: BlendedMediaCardProps) {
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

  const singleUser = items.length === 1;
  const onlyEntry = singleUser ? items[0] : undefined;

  return (
    <Link to={`/media/${media.id}`}>
      <Card
        className={cn(
          "group overflow-hidden border-border/50 bg-card py-0 gap-0 hover:border-primary/30 transition-all duration-200",
          className
        )}
      >
        <div className="flex gap-3 p-3">
          <div
            className={cn(
              "relative shrink-0 overflow-hidden rounded-md bg-muted",
              media.media_type === "record" ? "h-24 w-24" : "h-28 w-20"
            )}
          >
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

          <div className="flex min-w-0 flex-1 flex-col gap-1.5 py-0.5">
            <div className="flex -space-x-2 pl-1">
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

            <div>
              <h3 className="line-clamp-2 text-sm font-semibold leading-tight group-hover:text-primary transition-colors">
                {media.title}
              </h3>

              {subtitle && (
                <p className="mt-0.5 text-xs text-muted-foreground truncate">
                  {subtitle}
                </p>
              )}

              <div className="mt-1 flex items-center gap-2 text-xs text-muted-foreground">
                <Icon className="h-3 w-3 shrink-0" />
                {media.year && <span>{media.year}</span>}
                {media.genres.length > 0 && (
                  <span className="truncate">
                    {media.genres.slice(0, 2).join(", ")}
                  </span>
                )}
              </div>
            </div>

            <AggregatedStatusBadges items={items} mediaType={media.media_type} />

            {singleUser && onlyEntry?.entry.rating != null && (
              <div className="flex justify-end">
                <RatingStars rating={onlyEntry.entry.rating} size="sm" />
              </div>
            )}

            {reviewRows.length > 0 && (
              <div className="mt-1 space-y-2 border-t border-border/50 pt-2">
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
          </div>
        </div>
      </Card>
    </Link>
  );
}
