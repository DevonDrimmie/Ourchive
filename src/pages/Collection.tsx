import { useState, useMemo } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import { Tabs, TabsList, TabsTrigger } from "@/components/ui/tabs";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { BlendedMediaCard } from "@/components/media/BlendedMediaCard";
import { PageShell } from "@/components/layout/PageShell";
import { useCollection, useProfiles } from "@/lib/hooks/useEntries";
import { Loader2 } from "lucide-react";
import type { Media, Entry, Profile } from "@/types";

const typeFilters = [
  { value: "all", label: "All", path: "/collection" },
  { value: "movie", label: "Movies", path: "/collection/movies" },
  { value: "tv", label: "TV", path: "/collection/tv" },
  { value: "book", label: "Books", path: "/collection/books" },
  { value: "record", label: "Records", path: "/collection/records" },
];

const pathToFilter: Record<string, string> = {
  "/collection": "all",
  "/collection/movies": "movie",
  "/collection/tv": "tv",
  "/collection/books": "book",
  "/collection/records": "record",
};

const statusFilters = [
  { value: "all", label: "All" },
  { value: "want", label: "Wishlist" },
  { value: "consuming", label: "In Progress" },
  { value: "completed", label: "Completed" },
];

const sortOptions = [
  { value: "date", label: "Recent" },
  { value: "rating", label: "Rating" },
  { value: "title", label: "Title" },
];

export function CollectionPage() {
  const location = useLocation();
  const navigate = useNavigate();
  const mediaType = pathToFilter[location.pathname] ?? "all";

  const [status, setStatus] = useState("all");
  const [sortBy, setSortBy] = useState("date");
  const [userId, setUserId] = useState<string>("all");
  const [ownershipFilter, setOwnershipFilter] = useState<string>("all");

  const { data: profiles } = useProfiles();
  const { data: entries, isLoading } = useCollection({
    mediaType,
    status,
    ownership: ownershipFilter !== "all" ? ownershipFilter : undefined,
    userId: userId !== "all" ? userId : undefined,
    sortBy,
  });

  const handleTabChange = (value: string) => {
    const tab = typeFilters.find((f) => f.value === value);
    if (tab) navigate(tab.path);
  };

  type CollectionRow = Entry & { media: Media; profiles: Profile };

  const groupedByMedia = useMemo(() => {
    if (!entries?.length) return [];
    const map = new Map<string, CollectionRow[]>();
    for (const entry of entries as CollectionRow[]) {
      const mid = entry.media.id;
      if (!map.has(mid)) map.set(mid, []);
      map.get(mid)!.push(entry);
    }
    const groups = Array.from(map.values());

    function maxRating(gs: CollectionRow[]): number {
      const nums = gs.map((e) => e.rating).filter((r): r is number => r != null);
      if (nums.length === 0) return -1;
      return Math.max(...nums);
    }

    groups.sort((a, b) => {
      const ma = a[0]!.media;
      const mb = b[0]!.media;
      if (sortBy === "title") {
        return ma.title.localeCompare(mb.title, undefined, { sensitivity: "base" });
      }
      if (sortBy === "rating") {
        const ra = maxRating(a);
        const rb = maxRating(b);
        if (ra !== rb) return rb - ra;
        return ma.title.localeCompare(mb.title, undefined, { sensitivity: "base" });
      }
      const da = Math.max(...a.map((e) => new Date(e.updated_at).getTime()));
      const db = Math.max(...b.map((e) => new Date(e.updated_at).getTime()));
      return db - da;
    });

    return groups;
  }, [entries, sortBy]);

  return (
    <PageShell>
      <h1 className="text-2xl font-bold tracking-tight">Collection</h1>
      <p className="text-sm text-muted-foreground">
        Browse all logged media
      </p>

      <Tabs value={mediaType} onValueChange={handleTabChange} className="mt-4">
        <TabsList>
          {typeFilters.map((f) => (
            <TabsTrigger key={f.value} value={f.value} className="text-xs">
              {f.label}
            </TabsTrigger>
          ))}
        </TabsList>
      </Tabs>

      <div className="mt-3 flex flex-wrap gap-2">
        <Select value={status} onValueChange={setStatus}>
          <SelectTrigger className="w-32 h-8 text-xs">
            <SelectValue placeholder="Status" />
          </SelectTrigger>
          <SelectContent>
            {statusFilters.map((f) => (
              <SelectItem key={f.value} value={f.value}>
                {f.label}
              </SelectItem>
            ))}
          </SelectContent>
        </Select>

        <Select value={ownershipFilter} onValueChange={setOwnershipFilter}>
          <SelectTrigger className="w-32 h-8 text-xs">
            <SelectValue placeholder="Ownership" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">Any</SelectItem>
            <SelectItem value="owned">Owned</SelectItem>
            <SelectItem value="physical">Physical</SelectItem>
            <SelectItem value="digital">Digital</SelectItem>
            <SelectItem value="want_to_own">Want to Own</SelectItem>
            <SelectItem value="none">Not Owned</SelectItem>
          </SelectContent>
        </Select>

        <Select value={userId} onValueChange={setUserId}>
          <SelectTrigger className="w-32 h-8 text-xs">
            <SelectValue placeholder="User" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">Both</SelectItem>
            {profiles?.map((p) => (
              <SelectItem key={p.id} value={p.id}>
                {p.display_name}
              </SelectItem>
            ))}
          </SelectContent>
        </Select>

        <Select value={sortBy} onValueChange={setSortBy}>
          <SelectTrigger className="w-28 h-8 text-xs">
            <SelectValue placeholder="Sort" />
          </SelectTrigger>
          <SelectContent>
            {sortOptions.map((s) => (
              <SelectItem key={s.value} value={s.value}>
                {s.label}
              </SelectItem>
            ))}
          </SelectContent>
        </Select>
      </div>

      {isLoading ? (
        <div className="flex items-center justify-center py-20">
          <Loader2 className="h-6 w-6 animate-spin text-muted-foreground" />
        </div>
      ) : groupedByMedia.length > 0 ? (
        <div className="mt-4 grid gap-3 sm:grid-cols-2">
          {groupedByMedia.map((group) => {
            const media = group[0]!.media;
            return (
              <BlendedMediaCard
                key={media.id}
                media={media}
                showReviews={false}
                items={group.map((e) => ({
                  entry: e,
                  profile: e.profiles,
                }))}
              />
            );
          })}
        </div>
      ) : (
        <div className="flex items-center justify-center py-20">
          <p className="text-sm text-muted-foreground">
            No entries match the current filters
          </p>
        </div>
      )}
    </PageShell>
  );
}
