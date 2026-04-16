import { useState, useEffect } from "react";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Button } from "@/components/ui/button";
import { Label } from "@/components/ui/label";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { RatingStars } from "@/components/media/RatingStars";
import { CoverImage } from "@/components/media/CoverImage";
import {
  useUpdateEntry,
  useDeleteEntry,
  upsertMedia,
} from "@/lib/hooks/useEntries";
import { useMediaTypeSearch } from "@/lib/hooks/useOmniSearch";
import type {
  Entry,
  Media,
  MediaType,
  EntryStatus,
  OwnershipStatus,
  SearchResult,
} from "@/types";
import {
  MEDIA_CONFIG,
  MEDIA_TYPE_LABELS,
  MEDIA_TYPE_VERB,
  OWNERSHIP_LABELS,
} from "@/types";
import { Loader2, Trash2, Film, Tv, BookOpen, Disc3, Search } from "lucide-react";
import { cn } from "@/lib/utils";

const typeIcons: Record<MediaType, typeof Film> = {
  movie: Film,
  tv: Tv,
  book: BookOpen,
  record: Disc3,
};

interface EditEntryDialogProps {
  entry: Entry | null;
  /** Current media row for this entry (used to show and replace the linked title). */
  media: Media | null;
  mediaType: MediaType;
  open: boolean;
  onOpenChange: (open: boolean) => void;
  /** Called after save when the entry was relinked to different media (e.g. navigate to new detail URL). */
  onMediaChanged?: (newMediaId: string) => void;
}

function resultSubtitle(result: SearchResult) {
  return result.media_type === "record"
    ? (result.metadata as { artist?: string })?.artist
    : result.media_type === "book"
      ? (result.metadata as { authors?: string[] })?.authors?.join(", ")
      : undefined;
}

export function EditEntryDialog({
  entry,
  media,
  mediaType,
  open,
  onOpenChange,
  onMediaChanged,
}: EditEntryDialogProps) {
  const config = MEDIA_CONFIG[mediaType];
  const updateEntry = useUpdateEntry();
  const deleteEntry = useDeleteEntry();

  const [status, setStatus] = useState<EntryStatus>("completed");
  const [ownership, setOwnership] = useState<OwnershipStatus>("none");
  const [rating, setRating] = useState<number | null>(null);
  const [review, setReview] = useState("");
  const [consumedDate, setConsumedDate] = useState("");
  const [confirmDelete, setConfirmDelete] = useState(false);
  const [showMediaSearch, setShowMediaSearch] = useState(false);
  const [mediaSearchQuery, setMediaSearchQuery] = useState("");
  const [replacementResult, setReplacementResult] = useState<SearchResult | null>(
    null
  );
  const [saveError, setSaveError] = useState<string | null>(null);

  const { data: searchHits = [], isLoading: searchLoading } = useMediaTypeSearch(
    mediaType,
    mediaSearchQuery
  );

  useEffect(() => {
    if (entry) {
      setStatus(entry.status);
      setOwnership(entry.ownership);
      setRating(entry.rating);
      setReview(entry.review ?? "");
      setConsumedDate(entry.consumed_date ?? "");
      setConfirmDelete(false);
      setShowMediaSearch(false);
      setMediaSearchQuery("");
      setReplacementResult(null);
      setSaveError(null);
    }
  }, [entry]);

  const handleSave = async () => {
    if (!entry) return;
    setSaveError(null);

    try {
      let mediaIdUpdate: { media_id?: string } = {};
      if (replacementResult) {
        const newId = await upsertMedia(replacementResult);
        if (newId !== entry.media_id) {
          mediaIdUpdate = { media_id: newId };
        }
      }

      await updateEntry.mutateAsync({
        id: entry.id,
        status,
        ownership,
        rating,
        review: review || null,
        consumed_date: consumedDate || null,
        ...mediaIdUpdate,
      });

      if (mediaIdUpdate.media_id) {
        onMediaChanged?.(mediaIdUpdate.media_id);
      }
      onOpenChange(false);
    } catch (e) {
      setSaveError(e instanceof Error ? e.message : "Something went wrong");
    }
  };

  const handleDelete = async () => {
    if (!entry) return;
    await deleteEntry.mutateAsync(entry.id);
    onOpenChange(false);
  };

  if (!entry) return null;

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="flex max-h-[min(90vh,720px)] flex-col gap-0 overflow-hidden p-0 sm:max-w-md">
        <div className="overflow-y-auto p-6 pb-4">
          <DialogHeader>
            <DialogTitle className="text-lg">Edit Entry</DialogTitle>
          </DialogHeader>

          <div className="mt-4 space-y-4">
            {media && (
              <div className="rounded-lg border border-border/60 bg-muted/30 p-3">
                <Label className="text-xs text-muted-foreground">
                  Linked title
                </Label>
                <div className="mt-2 flex gap-3">
                  <CoverImage
                    src={media.cover_url}
                    alt={media.title}
                    mediaType={media.media_type}
                    className={cn(
                      "shrink-0",
                      media.media_type === "record"
                        ? "h-16 w-16"
                        : "h-20 w-14"
                    )}
                  />
                  <div className="min-w-0 flex-1">
                    <p className="text-sm font-medium leading-snug line-clamp-2">
                      {media.title}
                    </p>
                    {media.year != null && (
                      <p className="mt-0.5 text-xs text-muted-foreground">
                        {media.year}
                      </p>
                    )}
                  </div>
                </div>
                <Button
                  type="button"
                  variant="outline"
                  size="sm"
                  className="mt-3 h-8 w-full text-xs"
                  onClick={() => {
                    setShowMediaSearch((v) => !v);
                    setReplacementResult(null);
                    setSaveError(null);
                  }}
                >
                  {showMediaSearch ? "Cancel change" : "Wrong title? Link to another…"}
                </Button>

                {showMediaSearch && (
                  <div className="mt-3 space-y-2 border-t border-border/50 pt-3">
                    <div className="relative">
                      <Search className="absolute left-2.5 top-1/2 h-3.5 w-3.5 -translate-y-1/2 text-muted-foreground" />
                      <Input
                        value={mediaSearchQuery}
                        onChange={(e) => setMediaSearchQuery(e.target.value)}
                        placeholder={`Search ${MEDIA_TYPE_LABELS[mediaType]}…`}
                        className="h-9 pl-8 text-sm"
                      />
                    </div>
                    <p className="text-[11px] text-muted-foreground">
                      Only {MEDIA_TYPE_LABELS[media.media_type]} results. Pick the
                      correct match.
                    </p>
                    {searchLoading && mediaSearchQuery.trim().length >= 2 && (
                      <div className="flex justify-center py-4">
                        <Loader2 className="h-5 w-5 animate-spin text-muted-foreground" />
                      </div>
                    )}
                    <ul className="max-h-48 space-y-1 overflow-y-auto pr-0.5">
                      {searchHits.map((hit) => {
                        const sub = resultSubtitle(hit);
                        const RowIcon = typeIcons[hit.media_type];
                        const selected =
                          replacementResult?.external_id === hit.external_id &&
                          replacementResult?.external_source ===
                            hit.external_source;
                        return (
                          <li key={`${hit.external_source}-${hit.external_id}`}>
                            <button
                              type="button"
                              onClick={() => setReplacementResult(hit)}
                              className={cn(
                                "flex w-full min-w-0 items-start gap-2 rounded-md border px-2 py-2 text-left text-sm transition-colors",
                                selected
                                  ? "border-primary bg-primary/10"
                                  : "border-transparent hover:bg-accent"
                              )}
                            >
                              <CoverImage
                                src={hit.cover_url}
                                alt={hit.title}
                                mediaType={hit.media_type}
                                className={cn(
                                  "shrink-0",
                                  hit.media_type === "record"
                                    ? "h-10 w-10"
                                    : "h-12 w-8"
                                )}
                              />
                              <div className="min-w-0 flex-1">
                                <div className="flex items-center gap-1">
                                  <RowIcon className="h-3 w-3 shrink-0 text-muted-foreground" />
                                  <span className="truncate font-medium">
                                    {hit.title}
                                  </span>
                                </div>
                                {sub && (
                                  <p className="truncate text-xs text-muted-foreground">
                                    {sub}
                                  </p>
                                )}
                                {hit.year != null && (
                                  <p className="text-xs text-muted-foreground">
                                    {hit.year}
                                  </p>
                                )}
                              </div>
                            </button>
                          </li>
                        );
                      })}
                    </ul>
                    {replacementResult && (
                      <p className="text-xs text-muted-foreground">
                        Saving will move this entry to{" "}
                        <span className="font-medium text-foreground">
                          {replacementResult.title}
                        </span>
                        {replacementResult.year != null
                          ? ` (${replacementResult.year})`
                          : ""}
                        .
                      </p>
                    )}
                  </div>
                )}
              </div>
            )}

            {config.showStatus && (
              <div className="flex gap-3">
                <div className="flex-1">
                  <Label className="text-xs text-muted-foreground mb-1.5">
                    Status
                  </Label>
                  <Select
                    value={status}
                    onValueChange={(v) => setStatus(v as EntryStatus)}
                  >
                    <SelectTrigger className="h-9 w-full">
                      <SelectValue />
                    </SelectTrigger>
                    <SelectContent>
                      {config.statusOptions.map((s) => (
                        <SelectItem key={s} value={s}>
                          {MEDIA_TYPE_VERB[mediaType][s]}
                        </SelectItem>
                      ))}
                    </SelectContent>
                  </Select>
                </div>

                <div className="flex-1">
                  <Label className="text-xs text-muted-foreground mb-1.5">
                    Date
                  </Label>
                  <input
                    type="date"
                    value={consumedDate}
                    onChange={(e) => setConsumedDate(e.target.value)}
                    className="flex h-9 w-full rounded-md border border-input bg-transparent px-3 py-1 text-sm shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring date-input"
                  />
                </div>
              </div>
            )}

            {config.showOwnership && (
              <div>
                <Label className="text-xs text-muted-foreground mb-1.5">
                  Ownership
                </Label>
                <div className="grid grid-cols-2 gap-1.5">
                  {config.ownershipOptions.map((o) => (
                    <button
                      key={o}
                      type="button"
                      onClick={() => setOwnership(o)}
                      className={cn(
                        "rounded-lg border px-3 py-2 text-sm transition-colors text-left",
                        ownership === o
                          ? "border-primary bg-primary/10 text-primary"
                          : "border-border text-muted-foreground hover:bg-accent"
                      )}
                    >
                      {OWNERSHIP_LABELS[o]}
                    </button>
                  ))}
                </div>
              </div>
            )}

            {(!config.showStatus ||
              status === "completed" ||
              status === "dnf") && (
              <>
                <div>
                  <Label className="text-xs text-muted-foreground mb-1.5">
                    Rating
                  </Label>
                  <div className="flex items-center gap-3">
                    <RatingStars
                      rating={rating}
                      onChange={setRating}
                      size="lg"
                    />
                    {rating !== null && (
                      <Button
                        variant="ghost"
                        size="sm"
                        className="h-7 text-xs"
                        onClick={() => setRating(null)}
                      >
                        Clear
                      </Button>
                    )}
                  </div>
                </div>

                <div>
                  <Label className="text-xs text-muted-foreground mb-1.5">
                    Review
                  </Label>
                  <Textarea
                    value={review}
                    onChange={(e) => setReview(e.target.value)}
                    placeholder="What did you think?"
                    className="min-h-[100px] resize-none"
                  />
                </div>
              </>
            )}

            {saveError && (
              <p className="text-sm text-destructive">{saveError}</p>
            )}
          </div>
        </div>

        <div className="flex gap-2 border-t border-border/60 bg-background p-4">
          {confirmDelete ? (
            <>
              <Button
                variant="destructive"
                className="flex-1"
                onClick={handleDelete}
                disabled={deleteEntry.isPending}
              >
                {deleteEntry.isPending ? (
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                ) : (
                  "Confirm Delete"
                )}
              </Button>
              <Button
                variant="outline"
                className="flex-1"
                onClick={() => setConfirmDelete(false)}
              >
                Cancel
              </Button>
            </>
          ) : (
            <>
              <Button
                variant="outline"
                size="icon"
                className="shrink-0"
                onClick={() => setConfirmDelete(true)}
              >
                <Trash2 className="h-4 w-4" />
              </Button>
              <Button
                className="flex-1"
                onClick={handleSave}
                disabled={updateEntry.isPending}
              >
                {updateEntry.isPending && (
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                )}
                Save Changes
              </Button>
            </>
          )}
        </div>
      </DialogContent>
    </Dialog>
  );
}
