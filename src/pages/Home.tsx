import { useMemo } from "react";
import { Link, useLocation, useNavigate } from "react-router-dom";
import { Tabs, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Separator } from "@/components/ui/separator";
import { PageShell } from "@/components/layout/PageShell";
import { FeedReviewRow } from "@/components/media/FeedReviewRow";
import { useFeed } from "@/lib/hooks/useEntries";
import type { Media, Entry, Profile } from "@/types";
import { Loader2 } from "lucide-react";
import { Button } from "@/components/ui/button";

const filters = [
  { value: "all", label: "All", path: "/" },
  { value: "movie", label: "Movies", path: "/movies" },
  { value: "book", label: "Books", path: "/books" },
  { value: "record", label: "Records", path: "/records" },
  { value: "game", label: "Games", path: "/games" },
];

const pathToFilter: Record<string, string> = {
  "/": "all",
  "/movies": "movie",
  "/books": "book",
  "/records": "record",
  "/games": "game",
};

interface FeedEntry extends Entry {
  media: Media;
  profiles: Profile;
}

function feedTimeOf(entry: FeedEntry): number {
  return new Date(entry.feed_bumped_at ?? entry.updated_at).getTime();
}

function FeedGroup({ items }: { items: FeedEntry[] }) {
  const sorted = [...items].sort((a, b) => feedTimeOf(b) - feedTimeOf(a));
  return (
    <FeedReviewRow
      media={sorted[0]!.media}
      items={sorted.map((e) => ({ entry: e, profile: e.profiles }))}
      updatedAt={new Date(feedTimeOf(sorted[0]!))}
    />
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
    <PageShell width="feed">
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

      <Separator className="my-6" />

      {isLoading ? (
        <div className="flex items-center justify-center py-20">
          <Loader2 className="h-6 w-6 animate-spin text-muted-foreground" />
        </div>
      ) : groupedFeed.length > 0 ? (
        <div className="flex flex-col divide-y divide-border/60">
          {groupedFeed.map((group) => (
            <div key={group[0]!.media.id} className="py-6 first:pt-0">
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
