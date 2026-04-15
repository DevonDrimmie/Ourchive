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
import { useUpdateEntry, useDeleteEntry } from "@/lib/hooks/useEntries";
import type {
  Entry,
  MediaType,
  EntryStatus,
  OwnershipStatus,
} from "@/types";
import {
  MEDIA_CONFIG,
  MEDIA_TYPE_VERB,
  OWNERSHIP_LABELS,
} from "@/types";
import { Loader2, Trash2 } from "lucide-react";
import { cn } from "@/lib/utils";

interface EditEntryDialogProps {
  entry: Entry | null;
  mediaType: MediaType;
  open: boolean;
  onOpenChange: (open: boolean) => void;
}

export function EditEntryDialog({
  entry,
  mediaType,
  open,
  onOpenChange,
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

  useEffect(() => {
    if (entry) {
      setStatus(entry.status);
      setOwnership(entry.ownership);
      setRating(entry.rating);
      setReview(entry.review ?? "");
      setConsumedDate(entry.consumed_date ?? "");
      setConfirmDelete(false);
    }
  }, [entry]);

  const handleSave = async () => {
    if (!entry) return;

    await updateEntry.mutateAsync({
      id: entry.id,
      status,
      ownership,
      rating,
      review: review || null,
      consumed_date: consumedDate || null,
    });

    onOpenChange(false);
  };

  const handleDelete = async () => {
    if (!entry) return;
    await deleteEntry.mutateAsync(entry.id);
    onOpenChange(false);
  };

  if (!entry) return null;

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="sm:max-w-md">
        <DialogHeader>
          <DialogTitle className="text-lg">Edit Entry</DialogTitle>
        </DialogHeader>

        <div className="space-y-4">
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

          {(!config.showStatus || status === "completed" || status === "dnf") && (
            <>
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
                  className="min-h-[100px] resize-none"
                />
              </div>
            </>
          )}

          <div className="flex gap-2">
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
        </div>
      </DialogContent>
    </Dialog>
  );
}
