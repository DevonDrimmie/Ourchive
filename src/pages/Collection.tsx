import { useState } from "react";
import { Tabs, TabsList, TabsTrigger } from "@/components/ui/tabs";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { MediaCard } from "@/components/media/MediaCard";
import { PageShell } from "@/components/layout/PageShell";
import { useCollection, useProfiles } from "@/lib/hooks/useEntries";
import { Loader2 } from "lucide-react";
import type { Media, Entry, Profile } from "@/types";

const typeFilters = [
  { value: "all", label: "All" },
  { value: "movie", label: "Movies" },
  { value: "tv", label: "TV" },
  { value: "book", label: "Books" },
  { value: "record", label: "Records" },
];

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
  const [mediaType, setMediaType] = useState("all");
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

  return (
    <PageShell>
      <h1 className="text-2xl font-bold tracking-tight">Collection</h1>
      <p className="text-sm text-muted-foreground">
        Browse all logged media
      </p>

      <Tabs value={mediaType} onValueChange={setMediaType} className="mt-4">
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
      ) : entries && entries.length > 0 ? (
        <div className="mt-4 grid gap-3 sm:grid-cols-2">
          {entries.map(
            (entry: Entry & { media: Media; profiles: Profile }) => (
              <MediaCard
                key={entry.id}
                media={entry.media}
                entry={entry}
                profile={entry.profiles}
                showUser
              />
            )
          )}
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
