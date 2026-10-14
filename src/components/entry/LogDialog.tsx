import { useState } from "react";
import { Loader2, Search } from "lucide-react";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogTitle,
} from "@/components/ui/dialog";
import { Input } from "@/components/ui/input";
import { OmniResultRow } from "@/components/search/OmniResultRow";
import { useOmniSearch } from "@/lib/hooks/useOmniSearch";
import type { OmniResult } from "@/lib/hooks/useOmniSearch";

interface LogDialogProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  onSelect: (result: OmniResult) => void;
}

/** Quick-log overlay: search any media type, then hand the pick to EntryDialog. */
export function LogDialog({ open, onOpenChange, onSelect }: LogDialogProps) {
  const [query, setQuery] = useState("");
  const { data: results, isLoading } = useOmniSearch(query);
  const searching = query.trim().length >= 2;

  const handleOpenChange = (next: boolean) => {
    if (!next) setQuery("");
    onOpenChange(next);
  };

  return (
    <Dialog open={open} onOpenChange={handleOpenChange}>
      <DialogContent className="top-[12vh] translate-y-0 gap-0 overflow-hidden p-0 sm:max-w-lg">
        <div className="border-b border-border px-4 pt-4 pb-3">
          <DialogTitle className="text-base">Log something</DialogTitle>
          <DialogDescription className="sr-only">
            Search for a movie, book, record, or game to log
          </DialogDescription>
          <div className="relative mt-3">
            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
            <Input
              value={query}
              onChange={(e) => setQuery(e.target.value)}
              placeholder="Search movies, books, records, games..."
              className="pl-9 pr-9"
              autoFocus
            />
            {isLoading && searching && (
              <Loader2 className="absolute right-3 top-1/2 h-4 w-4 -translate-y-1/2 animate-spin text-muted-foreground" />
            )}
          </div>
        </div>

        <div className="max-h-[60vh] overflow-y-auto">
          {!searching ? (
            <p className="px-4 py-8 text-center text-sm text-muted-foreground">
              What did you watch, read, hear, or play?
            </p>
          ) : results && results.length > 0 ? (
            <div className="divide-y divide-border/50 py-1">
              {results.map((r) => (
                <OmniResultRow
                  key={`${r.external_source}-${r.external_id}`}
                  result={r}
                  showCover
                  onSelect={(picked) => {
                    handleOpenChange(false);
                    onSelect(picked);
                  }}
                />
              ))}
            </div>
          ) : !isLoading ? (
            <p className="px-4 py-8 text-center text-sm text-muted-foreground">
              No results for "{query}"
            </p>
          ) : null}
        </div>
      </DialogContent>
    </Dialog>
  );
}
