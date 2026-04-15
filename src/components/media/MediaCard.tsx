import { Link } from "react-router-dom";
import { Film, Tv, BookOpen, Disc3 } from "lucide-react";
import { Card } from "@/components/ui/card";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import {
  Tooltip,
  TooltipTrigger,
  TooltipContent,
} from "@/components/ui/tooltip";
import { RatingStars } from "./RatingStars";
import { StatusBadge } from "./StatusBadge";
import type { Media, Entry, Profile, MediaType } from "@/types";
import { cn } from "@/lib/utils";

interface MediaCardProps {
  media: Media;
  entry?: Entry;
  profile?: Profile;
  showUser?: boolean;
  className?: string;
}

const typeIcons: Record<MediaType, typeof Film> = {
  movie: Film,
  tv: Tv,
  book: BookOpen,
  record: Disc3,
};

export function MediaCard({
  media,
  entry,
  profile,
  showUser = false,
  className,
}: MediaCardProps) {
  const Icon = typeIcons[media.media_type];
  const subtitle =
    media.media_type === "record"
      ? (media.metadata as { artist?: string })?.artist
      : media.media_type === "book"
        ? (media.metadata as { authors?: string[] })?.authors?.join(", ")
        : undefined;

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
              "relative flex-shrink-0 overflow-hidden rounded-md bg-muted",
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

          <div className="flex min-w-0 flex-1 flex-col justify-between py-0.5">
            <div>
              <div className="flex items-start gap-2">
                <h3 className="line-clamp-2 flex-1 text-sm font-semibold leading-tight group-hover:text-primary transition-colors">
                  {media.title}
                </h3>
                {showUser && profile && (
                  <Tooltip>
                    <TooltipTrigger asChild>
                      <div className="shrink-0">
                        <Avatar className="h-5 w-5">
                          {profile.avatar_url && (
                            <AvatarImage src={profile.avatar_url} alt={profile.display_name} />
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
                )}
              </div>

              {subtitle && (
                <p className="mt-0.5 text-xs text-muted-foreground truncate">
                  {subtitle}
                </p>
              )}

              <div className="mt-1 flex items-center gap-2 text-xs text-muted-foreground">
                <Icon className="h-3 w-3" />
                {media.year && <span>{media.year}</span>}
                {media.genres.length > 0 && (
                  <span className="truncate">
                    {media.genres.slice(0, 2).join(", ")}
                  </span>
                )}
              </div>
            </div>

            <div className="mt-2 flex flex-wrap items-center justify-between gap-1">
              {entry && (
                <StatusBadge status={entry.status} ownership={entry.ownership} mediaType={media.media_type} />
              )}
              {entry?.rating != null && (
                <RatingStars rating={entry.rating} size="sm" />
              )}
            </div>
          </div>
        </div>
      </Card>
    </Link>
  );
}
