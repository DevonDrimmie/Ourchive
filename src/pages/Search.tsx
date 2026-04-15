import { useState, useEffect } from "react";
import { useSearchParams, useLocation } from "react-router-dom";
import { Input } from "@/components/ui/input";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { CoverImage } from "@/components/media/CoverImage";
import { EntryDialog } from "@/components/entry/EntryDialog";
import { PageShell } from "@/components/layout/PageShell";
import { useSearch } from "@/lib/hooks/useSearch";
import { useDebounce } from "@/lib/hooks/useDebounce";
import { useCreateEntry } from "@/lib/hooks/useEntries";
import type { MediaType, SearchResult, EntryStatus } from "@/types";
import { MEDIA_TYPE_LABELS } from "@/types";
import {
  Search as SearchIcon,
  Loader2,
  Bookmark,
  Package,
  Plus,
} from "lucide-react";

export function SearchPage() {
  const [searchParams] = useSearchParams();
  const location = useLocation();
  const prefill = (location.state as { prefill?: SearchResult })?.prefill;
  const [query, setQuery] = useState(searchParams.get("q") ?? "");
  const [mediaType, setMediaType] = useState<MediaType>(
    prefill?.media_type ?? "movie"
  );

  useEffect(() => {
    if (prefill) {
      setQuery(prefill.title);
      setMediaType(prefill.media_type);
      setDialogResult(prefill);
      setDialogDefaults({ status: "completed", owned: false });
      setDialogOpen(true);
      window.history.replaceState({}, "", "/search");
    }
  }, []);
  const debouncedQuery = useDebounce(query, 400);
  const { data: results, isLoading } = useSearch(debouncedQuery, mediaType);
  const createEntry = useCreateEntry();

  const [dialogResult, setDialogResult] = useState<SearchResult | null>(null);
  const [dialogOpen, setDialogOpen] = useState(false);
  const [dialogDefaults, setDialogDefaults] = useState<{
    status: EntryStatus;
    owned: boolean;
  }>({ status: "completed", owned: false });

  const handleQuickAction = async (
    result: SearchResult,
    status: EntryStatus,
    owned: boolean
  ) => {
    await createEntry.mutateAsync({
      searchResult: result,
      status,
      owned,
    });
  };

  const handleLog = (result: SearchResult) => {
    setDialogResult(result);
    setDialogDefaults({ status: "completed", owned: false });
    setDialogOpen(true);
  };

  return (
    <PageShell>
      <h1 className="text-2xl font-bold tracking-tight">Search</h1>
      <p className="text-sm text-muted-foreground">
        Find media to add to your collection
      </p>

      <div className="mt-4 flex gap-2">
        <Select
          value={mediaType}
          onValueChange={(v) => setMediaType(v as MediaType)}
        >
          <SelectTrigger className="w-32">
            <SelectValue />
          </SelectTrigger>
          <SelectContent>
            {(Object.entries(MEDIA_TYPE_LABELS) as [MediaType, string][]).map(
              ([value, label]) => (
                <SelectItem key={value} value={value}>
                  {label}
                </SelectItem>
              )
            )}
          </SelectContent>
        </Select>

        <div className="relative flex-1 min-w-0">
          <SearchIcon className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
          <Input
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            placeholder={`Search ${MEDIA_TYPE_LABELS[mediaType].toLowerCase()}s...`}
            className="pl-9"
            autoFocus
          />
        </div>
      </div>

      {isLoading && debouncedQuery.length >= 2 && (
        <div className="flex items-center justify-center py-12">
          <Loader2 className="h-5 w-5 animate-spin text-muted-foreground" />
        </div>
      )}

      {results && results.length > 0 && (
        <div className="mt-4 space-y-2">
          {results.map((result) => {
            const subtitle =
              result.media_type === "record"
                ? (result.metadata as { artist?: string })?.artist
                : result.media_type === "book"
                  ? (result.metadata as { authors?: string[] })?.authors?.join(
                      ", "
                    )
                  : undefined;

            return (
              <Card
                key={`${result.external_source}-${result.external_id}`}
                className="border-border/50"
              >
                <div className="flex items-center gap-3 p-3">
                  <CoverImage
                    src={result.cover_url}
                    alt={result.title}
                    mediaType={result.media_type}
                    className={
                      result.media_type === "record"
                        ? "h-16 w-16 shrink-0"
                        : "h-20 w-14 shrink-0"
                    }
                  />

                  <div className="min-w-0 flex-1">
                    <h3 className="font-semibold leading-tight text-sm truncate">
                      {result.title}
                    </h3>
                    {subtitle && (
                      <p className="text-xs text-muted-foreground mt-0.5">
                        {subtitle}
                      </p>
                    )}
                    <div className="mt-0.5 flex items-center gap-2 text-xs text-muted-foreground">
                      {result.year && <span>{result.year}</span>}
                      {result.genres.length > 0 && (
                        <span className="truncate">
                          {result.genres.slice(0, 3).join(", ")}
                        </span>
                      )}
                    </div>
                  </div>

                  <div className="flex shrink-0 items-center gap-1">
                    <Button
                      variant="ghost"
                      size="icon"
                      className="h-8 w-8"
                      onClick={() =>
                        handleQuickAction(result, "want", false)
                      }
                      title="Want"
                    >
                      <Bookmark className="h-4 w-4" />
                    </Button>
                    <Button
                      variant="ghost"
                      size="icon"
                      className="h-8 w-8"
                      onClick={() =>
                        handleQuickAction(result, "want", true)
                      }
                      title="Own"
                    >
                      <Package className="h-4 w-4" />
                    </Button>
                    <Button
                      variant="default"
                      size="sm"
                      className="h-8"
                      onClick={() => handleLog(result)}
                    >
                      <Plus className="mr-1 h-3.5 w-3.5" />
                      Log
                    </Button>
                  </div>
                </div>
              </Card>
            );
          })}
        </div>
      )}

      {results && results.length === 0 && query.length >= 2 && !isLoading && (
        <div className="flex items-center justify-center py-12">
          <p className="text-sm text-muted-foreground">
            No results found for "{query}"
          </p>
        </div>
      )}

      <EntryDialog
        result={dialogResult}
        open={dialogOpen}
        onOpenChange={setDialogOpen}
        defaultStatus={dialogDefaults.status}
        defaultOwned={dialogDefaults.owned}
      />
    </PageShell>
  );
}
