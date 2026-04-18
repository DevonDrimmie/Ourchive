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
import { Separator } from "@/components/ui/separator";
import { BlendedMediaCard } from "@/components/media/BlendedMediaCard";
import { PageShell } from "@/components/layout/PageShell";
import {
  useCollection,
  useProfiles,
  useEntriesForMediaList,
} from "@/lib/hooks/useEntries";
import { useAuth } from "@/lib/hooks/useAuth";
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

  const { user } = useAuth();
  const [status, setStatus] = useState("all");
  const [sortBy, setSortBy] = useState("date");
  const [userId, setUserId] = useState<string>(user?.id ?? "");
  const [ownershipFilter, setOwnershipFilter] = useState<string>("all");

  const { data: profiles } = useProfiles();

  const effectiveUserId = userId || user?.id || "";

  const { data: entries, isLoading } = useCollection({
    mediaType,
    status,
    ownership: ownershipFilter !== "all" ? ownershipFilter : undefined,
    userId: effectiveUserId || undefined,
    sortBy,
  });

  const handleTabChange = (value: string) => {
    const tab = typeFilters.find((f) => f.value === value);
    if (tab) navigate(tab.path);
  };

  type CollectionRow = Entry & { media: Media; profiles: Profile };

  const visibleMediaIds = useMemo(() => {
    if (!entries?.length) return [] as string[];
    const ids = new Set<string>();
    for (const e of entries as CollectionRow[]) {
      if (e.media?.id) ids.add(e.media.id);
    }
    return Array.from(ids);
  }, [entries]);

  const { data: allEntriesForMedia } = useEntriesForMediaList(visibleMediaIds);

  const groupedByMedia = useMemo(() => {
    if (!entries?.length) return [];

    const visibleSet = new Set(visibleMediaIds);
    const groups = new Map<string, CollectionRow[]>();

    for (const entry of entries as CollectionRow[]) {
      const mid = entry.media.id;
      if (!groups.has(mid)) groups.set(mid, []);
      groups.get(mid)!.push(entry);
    }

    if (allEntriesForMedia?.length) {
      const seenPair = new Set<string>();
      for (const list of groups.values()) {
        for (const e of list) {
          seenPair.add(`${e.media_id}:${e.user_id}`);
        }
      }
      for (const e of allEntriesForMedia as Array<Entry & { profiles: Profile }>) {
        if (!visibleSet.has(e.media_id)) continue;
        const key = `${e.media_id}:${e.user_id}`;
        if (seenPair.has(key)) continue;
        const primary = groups.get(e.media_id)?.[0];
        if (!primary) continue;
        groups.get(e.media_id)!.push({
          ...e,
          media: primary.media,
          profiles: e.profiles,
        } as CollectionRow);
        seenPair.add(key);
      }
    }

    const groupArr = Array.from(groups.values());

    function isPrimary(e: CollectionRow) {
      return e.user_id === effectiveUserId;
    }
    function maxRating(gs: CollectionRow[]): number {
      const nums = gs
        .filter(isPrimary)
        .map((e) => e.rating)
        .filter((r): r is number => r != null);
      if (nums.length === 0) return -1;
      return Math.max(...nums);
    }
    function latestUpdate(gs: CollectionRow[]): number {
      const times = gs.filter(isPrimary).map((e) => new Date(e.updated_at).getTime());
      return times.length ? Math.max(...times) : 0;
    }

    groupArr.sort((a, b) => {
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
      return latestUpdate(b) - latestUpdate(a);
    });

    return groupArr;
  }, [entries, allEntriesForMedia, visibleMediaIds, sortBy, effectiveUserId]);

  return (
    <PageShell>
      <div className="flex flex-wrap items-center justify-between gap-3">
        <div>
          <h1 className="text-2xl font-bold tracking-tight">Collection</h1>
          <p className="text-sm text-muted-foreground">
            Browse all logged media
          </p>
        </div>
        <Tabs value={mediaType} onValueChange={handleTabChange}>
          <TabsList>
            {typeFilters.map((f) => (
              <TabsTrigger key={f.value} value={f.value} className="text-xs">
                {f.label}
              </TabsTrigger>
            ))}
          </TabsList>
        </Tabs>
      </div>

      <div className="mt-3 flex flex-wrap gap-3">
        <div className="flex flex-col gap-1">
          <label className="text-[10px] font-medium uppercase tracking-wide text-muted-foreground">
            Status
          </label>
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
        </div>

        <div className="flex flex-col gap-1">
          <label className="text-[10px] font-medium uppercase tracking-wide text-muted-foreground">
            Ownership
          </label>
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
        </div>

        <div className="flex flex-col gap-1">
          <label className="text-[10px] font-medium uppercase tracking-wide text-muted-foreground">
            Sort by
          </label>
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

        <div className="ml-auto flex flex-col gap-1">
          <label className="text-[10px] font-medium uppercase tracking-wide text-muted-foreground">
            User
          </label>
          <Select
            value={effectiveUserId}
            onValueChange={setUserId}
            disabled={!profiles?.length}
          >
            <SelectTrigger className="w-36 h-8 text-xs">
              <SelectValue placeholder="User" />
            </SelectTrigger>
            <SelectContent>
              {profiles?.map((p) => (
                <SelectItem key={p.id} value={p.id}>
                  {p.id === user?.id ? "My Collection" : p.display_name}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>
        </div>
      </div>

      <Separator className="my-6" />

      {isLoading ? (
        <div className="flex items-center justify-center py-20">
          <Loader2 className="h-6 w-6 animate-spin text-muted-foreground" />
        </div>
      ) : groupedByMedia.length > 0 ? (
        <div className="grid gap-3 sm:grid-cols-2">
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
