import { useState } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import { Tabs, TabsList, TabsTrigger } from "@/components/ui/tabs";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import {
  Tooltip,
  TooltipTrigger,
  TooltipContent,
} from "@/components/ui/tooltip";
import { MediaCard } from "@/components/media/MediaCard";
import { PageShell } from "@/components/layout/PageShell";
import { useCollection, useProfiles } from "@/lib/hooks/useEntries";
import { Loader2 } from "lucide-react";
import type { Media, Entry, Profile } from "@/types";
import { cn } from "@/lib/utils";

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

  const selectedProfile = userId !== "all"
    ? profiles?.find((p) => p.id === userId)
    : null;

  return (
    <PageShell>
      <div className="flex items-center gap-3">
        <h1 className="text-2xl font-bold tracking-tight">Collection</h1>
        <div className="flex items-center gap-1 ml-auto">
          {profiles?.map((p) => {
            const initials = p.display_name
              ?.split(" ")
              .map((n) => n[0])
              .join("")
              .slice(0, 2)
              .toUpperCase();
            const isActive = userId === p.id;
            return (
              <Tooltip key={p.id}>
                <TooltipTrigger asChild>
                  <button
                    onClick={() => setUserId(isActive ? "all" : p.id)}
                    className={cn(
                      "rounded-full transition-all cursor-pointer",
                      isActive
                        ? "ring-2 ring-primary ring-offset-2 ring-offset-background"
                        : "opacity-50 hover:opacity-100"
                    )}
                  >
                    <Avatar className="h-7 w-7">
                      {p.avatar_url && (
                        <AvatarImage src={p.avatar_url} alt={p.display_name} />
                      )}
                      <AvatarFallback className="text-[9px] bg-primary/20 text-primary">
                        {initials}
                      </AvatarFallback>
                    </Avatar>
                  </button>
                </TooltipTrigger>
                <TooltipContent>
                  {isActive ? `Showing ${p.display_name}'s` : p.display_name}
                </TooltipContent>
              </Tooltip>
            );
          })}
        </div>
      </div>
      <p className="text-sm text-muted-foreground">
        {selectedProfile
          ? `${selectedProfile.display_name}'s collection`
          : "Browse all logged media"}
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
