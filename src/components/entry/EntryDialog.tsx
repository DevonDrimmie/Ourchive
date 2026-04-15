import { useState } from "react";
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
import type { SearchResult, EntryStatus } from "@/types";
import { STATUS_LABELS } from "@/types";
import { Package, Loader2 } from "lucide-react";
import { cn } from "@/lib/utils";

interface EntryDialogProps {
  result: SearchResult | null;
  open: boolean;
  onOpenChange: (open: boolean) => void;
  defaultStatus?: EntryStatus;
  defaultOwned?: boolean;
}

export function EntryDialog({
  result,
  open,
  onOpenChange,
  defaultStatus = "completed",
  defaultOwned = false,
}: EntryDialogProps) {
  const [status, setStatus] = useState<EntryStatus>(defaultStatus);
  const [owned, setOwned] = useState(defaultOwned);
  const [rating, setRating] = useState<number | null>(null);
  const [review, setReview] = useState("");
  const [consumedDate, setConsumedDate] = useState(
    new Date().toISOString().slice(0, 10)
  );

  const createEntry = useCreateEntry();

  const handleSubmit = async () => {
    if (!result) return;

    await createEntry.mutateAsync({
      searchResult: result,
      status,
      owned,
      rating,
      review: review || null,
      consumed_date: consumedDate || null,
    });

    setRating(null);
    setReview("");
    setOwned(false);
    setStatus("completed");
    onOpenChange(false);
  };

  if (!result) return null;

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
            className={
              result.media_type === "record"
                ? "h-24 w-24 shrink-0"
                : "h-32 w-22 shrink-0"
            }
          />
          <div className="min-w-0">
            <h3 className="font-semibold leading-tight">{result.title}</h3>
            {subtitle && (
              <p className="mt-0.5 text-sm text-muted-foreground">{subtitle}</p>
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
                  {(Object.entries(STATUS_LABELS) as [EntryStatus, string][]).map(
                    ([value, label]) => (
                      <SelectItem key={value} value={value}>
                        {label}
                      </SelectItem>
                    )
                  )}
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

          <button
            type="button"
            onClick={() => setOwned(!owned)}
            className={cn(
              "flex w-full items-center gap-2 rounded-lg border px-3 py-2.5 text-sm transition-colors",
              owned
                ? "border-primary bg-primary/10 text-primary"
                : "border-border text-muted-foreground hover:bg-accent"
            )}
          >
            <Package className="h-4 w-4" />
            I own this {result.media_type === "record" ? "record" : result.media_type}
          </button>

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
