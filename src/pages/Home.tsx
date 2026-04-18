import { useMemo } from "react";
import { Link, useLocation, useNavigate } from "react-router-dom";
import { Tabs, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { PageShell } from "@/components/layout/PageShell";
import { BlendedMediaCard } from "@/components/media/BlendedMediaCard";
import { useFeed } from "@/lib/hooks/useEntries";
import type { Media, Entry, Profile, MediaType } from "@/types";
import { Loader2 } from "lucide-react";
import { Button } from "@/components/ui/button";
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

function feedTimeOf(entry: FeedEntry): number {
  return new Date(entry.feed_bumped_at ?? entry.updated_at).getTime();
}

function describeGroup(items: FeedEntry[]): string {
  const sorted = [...items].sort((a, b) => feedTimeOf(b) - feedTimeOf(a));
  const latest = sorted[0]!;
  const media = latest.media;

  if (sorted.length === 1) {
    return getActionText(latest, media, latest.profiles);
  }

  const uniqueProfiles = [
    ...new Map(sorted.map((e) => [e.profiles.id, e.profiles])).values(),
  ];
  const names = uniqueProfiles.map((p) => p.display_name);
  const formatted =
    names.length === 2
      ? `${names[0]} and ${names[1]}`
      : `${names.slice(0, -1).join(", ")}, and ${names[names.length - 1]}`;

  const thing = typeLabels[media.media_type];
  return `${formatted} have entries for this ${thing}`;
}

function FeedGroup({ items }: { items: FeedEntry[] }) {
  const sorted = [...items].sort((a, b) => feedTimeOf(b) - feedTimeOf(a));
  const latest = sorted[0]!;
  const media = latest.media;

  const timeAgo = formatDistanceToNow(new Date(feedTimeOf(latest)), {
    addSuffix: true,
  });
  const headline = describeGroup(sorted);

  return (
    <div className="w-full min-w-0">
      <div className="mb-2 flex min-w-0 items-center gap-2">
        <p className="min-w-0 flex-1 truncate text-sm text-foreground">
          {headline}
        </p>
        <span className="shrink-0 text-xs text-muted-foreground">{timeAgo}</span>
      </div>

      <BlendedMediaCard
        media={media}
        items={sorted.map((e) => ({ entry: e, profile: e.profiles }))}
        showReviews
      />
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

  /**
   * Dedupe by media: when the same media appears multiple times in the feed
   * (e.g. logged by both household members), collapse them into one card
   * placed at the position of whichever entry was most recently bumped.
   */
  const groupedFeed = useMemo(() => {
    if (!entries?.length) return [] as FeedEntry[][];
    const groups = new Map<string, FeedEntry[]>();
    for (const e of entries as FeedEntry[]) {
      const mid = e.media.id;
      if (!groups.has(mid)) groups.set(mid, []);
      groups.get(mid)!.push(e);
    }
    return Array.from(groups.values()).sort((a, b) => {
      const ta = Math.max(...a.map(feedTimeOf));
      const tb = Math.max(...b.map(feedTimeOf));
      return tb - ta;
    });
  }, [entries]);

  return (
    <PageShell>
      <div className="flex flex-wrap items-center justify-between gap-3">
        <div>
          <h1 className="text-2xl font-bold tracking-tight">Activity</h1>
          <p className="text-sm text-muted-foreground">
            Recent entries from both of you
          </p>
        </div>
        <Tabs value={filter} onValueChange={handleTabChange}>
          <TabsList>
            {filters.map((f) => (
              <TabsTrigger key={f.value} value={f.value} className="text-xs">
                {f.label}
              </TabsTrigger>
            ))}
          </TabsList>
        </Tabs>
      </div>

      {isLoading ? (
        <div className="flex items-center justify-center py-20">
          <Loader2 className="h-6 w-6 animate-spin text-muted-foreground" />
        </div>
      ) : groupedFeed.length > 0 ? (
        <div className="mt-4 flex flex-col divide-y divide-border/50">
          {groupedFeed.map((group) => (
            <div key={group[0]!.media.id} className="py-4 first:pt-0">
              <FeedGroup items={group} />
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
