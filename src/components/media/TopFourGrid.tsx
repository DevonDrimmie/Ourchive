import { useState } from "react";
import { Film, Tv, BookOpen, Disc3, Plus, X } from "lucide-react";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Input } from "@/components/ui/input";
import { ScrollArea } from "@/components/ui/scroll-area";
import { supabase } from "@/lib/supabase";
import { useSetTopFour, useRemoveTopFour } from "@/lib/hooks/useTopFours";
import type { TopFourEntry } from "@/lib/hooks/useTopFours";
import type { Media, MediaType } from "@/types";
import { MEDIA_TYPE_LABELS } from "@/types";
import { cn } from "@/lib/utils";
import { useDebounce } from "@/lib/hooks/useDebounce";
import { useQuery } from "@tanstack/react-query";
import { Link } from "react-router-dom";

interface TopFourGridProps {
  mediaType: MediaType;
  entries: TopFourEntry[];
  userId: string;
  editable: boolean;
}

const typeIcons: Record<MediaType, typeof Film> = {
  movie: Film,
  tv: Tv,
  book: BookOpen,
  record: Disc3,
};

function useMediaSearch(query: string, mediaType: MediaType) {
  const debouncedQuery = useDebounce(query, 300);

  return useQuery({
    queryKey: ["media-search-local", mediaType, debouncedQuery],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("media")
        .select("*")
        .eq("media_type", mediaType)
        .ilike("title", `%${debouncedQuery}%`)
        .limit(20);

      if (error) throw error;
      return data as Media[];
    },
    enabled: debouncedQuery.length >= 2,
  });
}

export function TopFourGrid({
  mediaType,
  entries,
  userId,
  editable,
}: TopFourGridProps) {
  const Icon = typeIcons[mediaType];
  const setTopFour = useSetTopFour();
  const removeTopFour = useRemoveTopFour();

  const [pickSlot, setPickSlot] = useState<number | null>(null);
  const [search, setSearch] = useState("");
  const { data: searchResults } = useMediaSearch(
    pickSlot !== null ? search : "",
    mediaType
  );

  const slots = [1, 2, 3, 4].map((slot) => {
    const entry = entries.find((e) => e.slot === slot);
    return { slot, entry };
  });

  const handlePick = async (media: Media) => {
    if (pickSlot === null) return;
    await setTopFour.mutateAsync({
      userId,
      mediaType,
      slot: pickSlot,
      mediaId: media.id,
    });
    setPickSlot(null);
    setSearch("");
  };

  const handleRemove = async (slot: number) => {
    await removeTopFour.mutateAsync({ userId, mediaType, slot });
  };

  return (
    <div>
      <h3 className="text-sm font-semibold text-muted-foreground mb-2">
        Top {MEDIA_TYPE_LABELS[mediaType]}s
      </h3>
      <div className="grid grid-cols-4 gap-2">
        {slots.map(({ slot, entry }) => (
          <div key={slot} className="relative group">
            {entry ? (
              <Link to={`/media/${entry.media.id}`}>
                <div
                  className={cn(
                    "overflow-hidden rounded-lg bg-muted",
                    mediaType === "record"
                      ? "aspect-square"
                      : "aspect-[2/3]"
                  )}
                >
                  {entry.media.cover_url ? (
                    <img
                      src={entry.media.cover_url}
                      alt={entry.media.title}
                      className="h-full w-full object-cover"
                      loading="lazy"
                      referrerPolicy="no-referrer"
                      crossOrigin="anonymous"
                      onError={(e) => {
                        e.currentTarget.style.display = "none";
                        e.currentTarget.nextElementSibling?.classList.remove(
                          "hidden"
                        );
                      }}
                    />
                  ) : null}
                  <div
                    className={cn(
                      "absolute inset-0 flex items-center justify-center",
                      entry.media.cover_url && "hidden"
                    )}
                  >
                    <Icon className="h-8 w-8 text-muted-foreground/30" />
                  </div>
                </div>
              </Link>
            ) : (
              <button
                onClick={() => editable && setPickSlot(slot)}
                disabled={!editable}
                className={cn(
                  "w-full overflow-hidden rounded-lg bg-muted/50 border border-dashed border-border",
                  mediaType === "record"
                    ? "aspect-square"
                    : "aspect-[2/3]",
                  editable &&
                    "hover:border-primary/50 hover:bg-muted cursor-pointer transition-colors"
                )}
              >
                {editable && (
                  <div className="flex h-full items-center justify-center">
                    <Plus className="h-5 w-5 text-muted-foreground/40" />
                  </div>
                )}
              </button>
            )}

            {editable && entry && (
              <button
                onClick={() => handleRemove(slot)}
                className="absolute -top-1.5 -right-1.5 hidden group-hover:flex h-5 w-5 items-center justify-center rounded-full bg-destructive text-destructive-foreground shadow-sm"
              >
                <X className="h-3 w-3" />
              </button>
            )}

            {entry && (
              <p className="mt-1 text-[10px] text-muted-foreground leading-tight line-clamp-2 text-center">
                {entry.media.title}
              </p>
            )}
          </div>
        ))}
      </div>

      <Dialog
        open={pickSlot !== null}
        onOpenChange={(open) => {
          if (!open) {
            setPickSlot(null);
            setSearch("");
          }
        }}
      >
        <DialogContent className="sm:max-w-md">
          <DialogHeader>
            <DialogTitle>
              Pick your #{pickSlot} {MEDIA_TYPE_LABELS[mediaType]}
            </DialogTitle>
          </DialogHeader>

          <Input
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            placeholder={`Search your ${MEDIA_TYPE_LABELS[mediaType].toLowerCase()}s...`}
            autoFocus
          />

          <ScrollArea className="max-h-64">
            {searchResults && searchResults.length > 0 ? (
              <div className="space-y-1">
                {searchResults.map((m) => {
                  const subtitle =
                    m.media_type === "record"
                      ? (m.metadata as { artist?: string })?.artist
                      : m.media_type === "book"
                        ? (m.metadata as { authors?: string[] })?.authors?.join(
                            ", "
                          )
                        : undefined;

                  return (
                    <button
                      key={m.id}
                      onClick={() => handlePick(m)}
                      className="flex w-full items-center gap-3 rounded-md px-2 py-2 text-left hover:bg-accent transition-colors"
                    >
                      <div
                        className={cn(
                          "shrink-0 overflow-hidden rounded bg-muted",
                          m.media_type === "record"
                            ? "h-10 w-10"
                            : "h-12 w-8"
                        )}
                      >
                        {m.cover_url ? (
                          <img
                            src={m.cover_url}
                            alt={m.title}
                            className="h-full w-full object-cover"
                            referrerPolicy="no-referrer"
                            crossOrigin="anonymous"
                          />
                        ) : (
                          <div className="flex h-full w-full items-center justify-center">
                            <Icon className="h-4 w-4 text-muted-foreground/30" />
                          </div>
                        )}
                      </div>
                      <div className="min-w-0 flex-1">
                        <p className="text-sm font-medium truncate">
                          {m.title}
                        </p>
                        {subtitle && (
                          <p className="text-xs text-muted-foreground truncate">
                            {subtitle}
                          </p>
                        )}
                        {m.year && (
                          <p className="text-xs text-muted-foreground">
                            {m.year}
                          </p>
                        )}
                      </div>
                    </button>
                  );
                })}
              </div>
            ) : search.length >= 2 ? (
              <p className="py-4 text-center text-sm text-muted-foreground">
                No results in your collection
              </p>
            ) : (
              <p className="py-4 text-center text-sm text-muted-foreground">
                Type to search your collection
              </p>
            )}
          </ScrollArea>
        </DialogContent>
      </Dialog>
    </div>
  );
}
