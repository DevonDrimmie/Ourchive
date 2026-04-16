import { Link, useLocation, useNavigate } from "react-router-dom";
import { Tabs, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Card } from "@/components/ui/card";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { RatingStars } from "@/components/media/RatingStars";
import { PageShell } from "@/components/layout/PageShell";
import { useFeed } from "@/lib/hooks/useEntries";
import type { Media, Entry, Profile, MediaType } from "@/types";
import { Loader2, Plus, Film, Tv, BookOpen, Disc3 } from "lucide-react";
import { Button } from "@/components/ui/button";
import { cn } from "@/lib/utils";
import { formatDistanceToNow } from "date-fns";

const filters = [
  { value: "all", label: "All", path: "/" },
  { value: "movie", label: "Movies", path: "/movies" },
  { value: "tv", label: "TV", path: "/tv" },
  { value: "book", label: "Books", path: "/books" },
  { value: "record", label: "Records", path: "/records" },
];

const pathToFilter: Record<string, string> = {
  "/": "all",
  "/movies": "movie",
  "/tv": "tv",
  "/books": "book",
  "/records": "record",
};

const typeIcons: Record<MediaType, typeof Film> = {
  movie: Film,
  tv: Tv,
  book: BookOpen,
  record: Disc3,
};

const typeLabels: Record<MediaType, string> = {
  movie: "movie",
  tv: "show",
  book: "book",
  record: "record",
};

function getActionText(entry: Entry, media: Media, profile: Profile): string {
  const name = profile.display_name;
  const thing = typeLabels[media.media_type];

  const isOwned = entry.ownership === "physical" || entry.ownership === "digital";

  if (entry.status === "want" && isOwned) {
    return `${name} added this ${thing} to their backlog`;
  }
  if (entry.status === "want") {
    return `${name} wants this ${thing}`;
  }
  if (entry.status === "dnf") {
    return `${name} did not finish this ${thing}`;
  }
  if (entry.status === "consuming") {
    const verb =
      media.media_type === "book"
        ? "is reading"
        : media.media_type === "record"
          ? "is listening to"
          : "is watching";
    return `${name} ${verb} this ${thing}`;
  }
  if (entry.ownership === "want_to_own") {
    return `${name} wants to own this ${thing}`;
  }
  if (isOwned && entry.rating != null) {
    return `${name} rated and owns this ${thing}`;
  }
  if (entry.rating != null) {
    return `${name} rated this ${thing}`;
  }
  if (isOwned) {
    return `${name} owns this ${thing}`;
  }

  const verb =
    media.media_type === "book"
      ? "finished"
      : media.media_type === "record"
        ? "listened to"
        : "watched";
  return `${name} ${verb} this ${thing}`;
}

interface FeedEntry extends Entry {
  media: Media;
  profiles: Profile;
}

function FeedCard({ entry }: { entry: FeedEntry }) {
  const { media, profiles: profile } = entry;
  const Icon = typeIcons[media.media_type];
  const initials = profile.display_name
    ?.split(" ")
    .map((n) => n[0])
    .join("")
    .slice(0, 2)
    .toUpperCase();

  const subtitle =
    media.media_type === "record"
      ? (media.metadata as { artist?: string })?.artist
      : media.media_type === "book"
        ? (media.metadata as { authors?: string[] })?.authors?.join(", ")
        : (media.metadata as { director?: string })?.director;

  const feedTime = entry.feed_bumped_at ?? entry.updated_at;
  const timeAgo = formatDistanceToNow(new Date(feedTime), {
    addSuffix: true,
  });

  const reviewText = entry.review?.trim() ?? "";
  const hasReview = reviewText.length > 0;

  return (
    <div className="w-full min-w-0">
      <div className="flex min-w-0 items-center gap-2 mb-2">
        <Link to={`/profile/${profile.id}`} className="shrink-0">
          <Avatar className="h-5 w-5 hover:opacity-80 transition-opacity">
            {profile.avatar_url && (
              <AvatarImage src={profile.avatar_url} alt={profile.display_name} />
            )}
            <AvatarFallback className="text-[9px] bg-primary/20 text-primary">
              {initials}
            </AvatarFallback>
          </Avatar>
        </Link>
        <p className="text-sm text-foreground flex-1 truncate">
          <Link
            to={`/profile/${profile.id}`}
            className="font-medium hover:underline underline-offset-2"
          >
            {profile.display_name}
          </Link>
          {" "}
          {getActionText(entry, media, profile).replace(profile.display_name, "").trimStart()}
        </p>
        <span className="text-xs text-muted-foreground shrink-0">
          {timeAgo}
        </span>
      </div>

      <Link
        to={`/media/${media.id}`}
        className="block w-full min-w-0"
      >
        <Card className="group min-w-0 gap-0 py-0 overflow-hidden border-border/50 bg-card hover:border-primary/30 transition-all duration-200">
          <div
            className={cn(
              "min-w-0 p-3",
              hasReview &&
                "flex flex-col gap-3 sm:flex-row sm:items-start sm:gap-4"
            )}
          >
            <div
              className={cn(
                "flex min-w-0 gap-3 items-start",
                hasReview && "sm:max-w-[min(100%,28rem)] sm:shrink-0"
              )}
            >
              <div
                className={cn(
                  "relative shrink-0 overflow-hidden rounded-md bg-muted",
                  media.media_type === "record" ? "h-20 w-20" : "h-24 w-16"
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
                    "absolute inset-0 flex items-center justify-center",
                    media.cover_url && "hidden"
                  )}
                >
                  <Icon className="h-6 w-6 text-muted-foreground/30" />
                </div>
              </div>

              <div className="flex min-w-0 flex-1 flex-col justify-start">
                <h3 className="text-sm font-semibold leading-tight line-clamp-2 group-hover:text-primary transition-colors">
                  {media.title}
                </h3>
                {subtitle && (
                  <p className="mt-0.5 text-xs text-muted-foreground truncate">
                    {subtitle}
                  </p>
                )}
                <div className="mt-1 flex items-center gap-2 text-xs text-muted-foreground">
                  {media.year && <span>{media.year}</span>}
                  {media.genres.length > 0 && (
                    <span className="truncate">
                      {media.genres.slice(0, 2).join(", ")}
                    </span>
                  )}
                </div>
                {entry.rating != null && (
                  <div className="mt-1.5">
                    <RatingStars rating={entry.rating} size="sm" />
                  </div>
                )}
              </div>
            </div>

            {hasReview && (
              <div
                className="min-w-0 flex-1 border-t border-border/50 pt-3 sm:border-t-0 sm:border-l sm:border-border/50 sm:pt-0 sm:pl-4"
                title={reviewText}
              >
                <p className="min-w-0 wrap-break-word text-xs leading-relaxed text-foreground line-clamp-5 whitespace-pre-wrap sm:line-clamp-12 sm:max-h-44 sm:overflow-y-auto">
                  {reviewText}
                </p>
              </div>
            )}
          </div>
        </Card>
      </Link>
    </div>
  );
}

export function HomePage() {
  const location = useLocation();
  const navigate = useNavigate();

  const filter = pathToFilter[location.pathname] ?? "all";
  const { data: entries, isLoading } = useFeed(filter);

  const handleTabChange = (value: string) => {
    const tab = filters.find((f) => f.value === value);
    if (tab) navigate(tab.path);
  };

  return (
    <PageShell>
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold tracking-tight">Activity</h1>
          <p className="text-sm text-muted-foreground">
            Recent entries from both of you
          </p>
        </div>
        <Button asChild size="sm">
          <Link to="/search">
            <Plus className="mr-2 h-4 w-4" />
            Add
          </Link>
        </Button>
      </div>

      <Tabs value={filter} onValueChange={handleTabChange} className="mt-4">
        <TabsList>
          {filters.map((f) => (
            <TabsTrigger key={f.value} value={f.value} className="text-xs">
              {f.label}
            </TabsTrigger>
          ))}
        </TabsList>
      </Tabs>

      {isLoading ? (
        <div className="flex items-center justify-center py-20">
          <Loader2 className="h-6 w-6 animate-spin text-muted-foreground" />
        </div>
      ) : entries && entries.length > 0 ? (
        <div className="mt-4 flex flex-col divide-y divide-border/50">
          {entries.map((entry: FeedEntry) => (
            <div key={entry.id} className="py-4 first:pt-0">
              <FeedCard entry={entry} />
            </div>
          ))}
        </div>
      ) : (
        <div className="flex flex-col items-center justify-center py-20 text-center">
          <p className="text-muted-foreground">No entries yet</p>
          <Button asChild variant="outline" className="mt-4">
            <Link to="/search">Search for something to add</Link>
          </Button>
        </div>
      )}
    </PageShell>
  );
}
