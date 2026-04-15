import { useState, useEffect } from "react";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Button } from "@/components/ui/button";
import { Label } from "@/components/ui/label";
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
import { useCreateEntry } from "@/lib/hooks/useEntries";
import type { SearchResult, EntryStatus, OwnershipStatus } from "@/types";
import { MEDIA_CONFIG, MEDIA_TYPE_VERB, OWNERSHIP_LABELS } from "@/types";
import { Loader2 } from "lucide-react";
import { cn } from "@/lib/utils";

interface EntryDialogProps {
  result: SearchResult | null;
  open: boolean;
  onOpenChange: (open: boolean) => void;
}

export function EntryDialog({
  result,
  open,
  onOpenChange,
}: EntryDialogProps) {
  const config = result ? MEDIA_CONFIG[result.media_type] : null;

  const [status, setStatus] = useState<EntryStatus>("completed");
  const [ownership, setOwnership] = useState<OwnershipStatus>("none");
  const [rating, setRating] = useState<number | null>(null);
  const [review, setReview] = useState("");
  const [consumedDate, setConsumedDate] = useState(
    new Date().toISOString().slice(0, 10)
  );

  useEffect(() => {
    if (config) {
      setStatus(config.defaultStatus);
      setOwnership(config.defaultOwnership);
      setRating(null);
      setReview("");
      setConsumedDate(new Date().toISOString().slice(0, 10));
    }
  }, [result]);

  const createEntry = useCreateEntry();

  const handleSubmit = async () => {
    if (!result) return;

    await createEntry.mutateAsync({
      searchResult: result,
      status,
      ownership,
      rating,
      review: review || null,
      consumed_date: consumedDate || null,
    });

    onOpenChange(false);
  };

  if (!result || !config) return null;

  const subtitle =
    result.media_type === "record"
      ? (result.metadata as { artist?: string })?.artist
      : result.media_type === "book"
        ? (result.metadata as { authors?: string[] })?.authors?.join(", ")
        : undefined;

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="sm:max-w-md">
        <DialogHeader>
          <DialogTitle className="text-lg">Log Entry</DialogTitle>
        </DialogHeader>

        <div className="flex gap-4">
          <CoverImage
            src={result.cover_url}
            alt={result.title}
            mediaType={result.media_type}
            className={cn(
              "shrink-0",
              result.media_type === "record"
                ? "h-24 w-24"
                : "h-32 w-20"
            )}
          />
          <div className="min-w-0 flex-1">
            <h3 className="font-semibold leading-tight line-clamp-2">{result.title}</h3>
            {subtitle && (
              <p className="mt-0.5 text-sm text-muted-foreground truncate">{subtitle}</p>
            )}
            {result.year && (
              <p className="text-sm text-muted-foreground">{result.year}</p>
            )}
            {result.genres.length > 0 && (
              <p className="mt-1 text-xs text-muted-foreground">
                {result.genres.slice(0, 3).join(", ")}
              </p>
            )}
          </div>
        </div>

        <div className="mt-2 space-y-4">
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
                  <SelectTrigger className="h-9">
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    {config.statusOptions.map((s) => (
                      <SelectItem key={s} value={s}>
                        {MEDIA_TYPE_VERB[result.media_type][s]}
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
                  className="flex h-9 w-full rounded-md border border-input bg-transparent px-3 py-1 text-sm shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring"
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

          <div>
            <Label className="text-xs text-muted-foreground mb-1.5">
              Rating
            </Label>
            <div className="flex items-center gap-3">
              <RatingStars rating={rating} onChange={setRating} size="lg" />
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
              className="min-h-[80px] resize-none"
            />
          </div>

          <Button
            className="w-full"
            onClick={handleSubmit}
            disabled={createEntry.isPending}
          >
            {createEntry.isPending && (
              <Loader2 className="mr-2 h-4 w-4 animate-spin" />
            )}
            Save Entry
          </Button>
        </div>
      </DialogContent>
    </Dialog>
  );
}
