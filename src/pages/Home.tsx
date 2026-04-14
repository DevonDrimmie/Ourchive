import { useState } from "react";
import { Link } from "react-router-dom";
import { Tabs, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { MediaCard } from "@/components/media/MediaCard";
import { PageShell } from "@/components/layout/PageShell";
import { useFeed } from "@/lib/hooks/useEntries";
import { Loader2, Search } from "lucide-react";
import { Button } from "@/components/ui/button";

const filters = [
  { value: "all", label: "All" },
  { value: "movie", label: "Movies" },
  { value: "tv", label: "TV" },
  { value: "book", label: "Books" },
  { value: "record", label: "Records" },
];

export function HomePage() {
  const [filter, setFilter] = useState("all");
  const { data: entries, isLoading } = useFeed(filter);

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
            <Search className="mr-2 h-4 w-4" />
            Add
          </Link>
        </Button>
      </div>

      <Tabs
        value={filter}
        onValueChange={setFilter}
        className="mt-4"
      >
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
        <div className="mt-4 grid gap-3 sm:grid-cols-2">
          {entries.map((entry) => (
            <MediaCard
              key={entry.id}
              media={entry.media}
              entry={entry}
              profile={entry.profiles}
              showUser
            />
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
