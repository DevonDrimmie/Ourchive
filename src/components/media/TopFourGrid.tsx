import { useState } from "react";
import { Film, Tv, BookOpen, Disc3, Plus, X, Loader2 } from "lucide-react";
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
import type { MediaType, SearchResult } from "@/types";
import { MEDIA_TYPE_LABELS } from "@/types";
import { cn } from "@/lib/utils";
import { useSearch } from "@/lib/hooks/useSearch";
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

async function upsertMedia(result: SearchResult): Promise<string> {
  if (result.external_id && result.external_source) {
    const { data: existing } = await supabase
      .from("media")
      .select("id")
      .eq("external_id", result.external_id)
      .eq("external_source", result.external_source)
      .single();

    if (existing) return existing.id;
  }

  const { data, error } = await supabase
    .from("media")
    .insert({
      media_type: result.media_type,
      title: result.title,
      year: result.year,
      cover_url: result.cover_url,
      genres: result.genres,
      external_id: result.external_id,
      external_source: result.external_source,
      metadata: result.metadata,
    })
    .select("id")
    .single();

  if (error) throw error;
  return data.id;
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
  const [saving, setSaving] = useState(false);
  const { data: searchResults, isLoading: searchLoading } = useSearch(
    pickSlot !== null ? search : "",
    mediaType
  );

  const slots = [1, 2, 3, 4].map((slot) => {
    const entry = entries.find((e) => e.slot === slot);
    return { slot, entry };
  });

  const handlePick = async (result: SearchResult) => {
    if (pickSlot === null) return;
    const slot = pickSlot;
    setPickSlot(null);
    setSearch("");
    setSaving(true);
    try {
      const mediaId = await upsertMedia(result);
      setTopFour.mutate(
        { userId, mediaType, slot, mediaId },
        {
          onError: (err) => {
            console.error("Failed to set top four:", err);
          },
        }
      );
    } catch (err) {
      console.error("Failed to upsert media:", err);
    } finally {
      setSaving(false);
    }
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
            placeholder={`Search ${MEDIA_TYPE_LABELS[mediaType].toLowerCase()}s...`}
            autoFocus
          />

          <ScrollArea className="max-h-64">
            {searchLoading && search.length >= 2 ? (
              <div className="flex justify-center py-4">
                <Loader2 className="h-4 w-4 animate-spin text-muted-foreground" />
              </div>
            ) : searchResults && searchResults.length > 0 ? (
              <div className="space-y-1">
                {searchResults.map((r) => {
                  const subtitle =
                    r.media_type === "record"
                      ? (r.metadata as { artist?: string })?.artist
                      : r.media_type === "book"
                        ? (r.metadata as { authors?: string[] })?.authors?.join(
                            ", "
                          )
                        : undefined;

                  return (
                    <button
                      key={`${r.external_source}-${r.external_id}`}
                      onClick={() => handlePick(r)}
                      disabled={saving}
                      className="flex w-full items-center gap-3 rounded-md px-2 py-2 text-left hover:bg-accent transition-colors"
                    >
                      <div
                        className={cn(
                          "shrink-0 overflow-hidden rounded bg-muted",
                          r.media_type === "record"
                            ? "h-10 w-10"
                            : "h-12 w-8"
                        )}
                      >
                        {r.cover_url ? (
                          <img
                            src={r.cover_url}
                            alt={r.title}
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
                          {r.title}
                        </p>
                        {subtitle && (
                          <p className="text-xs text-muted-foreground truncate">
                            {subtitle}
                          </p>
                        )}
                        {r.year && (
                          <p className="text-xs text-muted-foreground">
                            {r.year}
                          </p>
                        )}
                      </div>
                    </button>
                  );
                })}
              </div>
            ) : search.length >= 2 ? (
              <p className="py-4 text-center text-sm text-muted-foreground">
                No results found
              </p>
            ) : (
              <p className="py-4 text-center text-sm text-muted-foreground">
                Search the catalogue
              </p>
            )}
          </ScrollArea>
        </DialogContent>
      </Dialog>
    </div>
  );
}
