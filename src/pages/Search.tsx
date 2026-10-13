import { useState, useEffect } from "react";
import { useSearchParams, useLocation } from "react-router-dom";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { CoverImage } from "@/components/media/CoverImage";
import { EntryDialog } from "@/components/entry/EntryDialog";
import { PageShell } from "@/components/layout/PageShell";
import { useOmniSearch } from "@/lib/hooks/useOmniSearch";
import type { OmniResult } from "@/lib/hooks/useOmniSearch";
import { useCreateEntry } from "@/lib/hooks/useEntries";
import type { SearchResult } from "@/types";
import { MEDIA_CONFIG } from "@/types";
import { Search as SearchIcon, Loader2 } from "lucide-react";
import { cn } from "@/lib/utils";
import { byCoverShape, getMediaSubtitle } from "@/lib/media";
import { MEDIA_TYPE_ICONS } from "@/components/media/mediaTypeIcons";

function SearchResultCard({
  result,
  onLog,
}: {
  result: OmniResult;
  onLog: (result: OmniResult) => void;
}) {
  const config = MEDIA_CONFIG[result.media_type];
  const createEntry = useCreateEntry();
  const Icon = MEDIA_TYPE_ICONS[result.media_type];

  const subtitle = getMediaSubtitle(result);

  const handleSecondary = async () => {
    await createEntry.mutateAsync({
      searchResult: result,
      status: config.secondaryCta.status,
      ownership: config.secondaryCta.ownership,
    });
  };

  return (
    <Card className="gap-0 py-0 border-border/50">
      <div className="flex items-center gap-3 p-3">
        <CoverImage
          src={result.cover_url}
          alt={result.title}
          mediaType={result.media_type}
          className={cn(
            "shrink-0",
            byCoverShape(result.media_type, {
              portrait: "h-18 w-12",
              square: "h-14 w-14",
              landscape: "h-12 w-20",
            })
          )}
        />

        <div className="min-w-0 flex-1">
          <div className="flex items-center gap-1.5">
            <Icon className="h-3 w-3 shrink-0 text-muted-foreground" />
            <h3 className="font-semibold leading-tight text-sm truncate">
              {result.title}
            </h3>
          </div>
          {subtitle && (
            <p className="text-xs text-muted-foreground mt-0.5 truncate">
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

        <div className="flex shrink-0 items-center gap-1.5">
          <Button
            variant="outline"
            size="sm"
            className="h-7 text-xs"
            onClick={handleSecondary}
            disabled={createEntry.isPending}
          >
            {config.secondaryCta.label}
          </Button>
          <Button
            variant="default"
            size="sm"
            className="h-7 text-xs"
            onClick={() => onLog(result)}
          >
            {config.primaryCta.label}
          </Button>
        </div>
      </div>
    </Card>
  );
}

export function SearchPage() {
  const [searchParams] = useSearchParams();
  const location = useLocation();
  const prefill = (location.state as { prefill?: SearchResult })?.prefill;
  const [query, setQuery] = useState(searchParams.get("q") ?? "");

  const [dialogResult, setDialogResult] = useState<SearchResult | null>(null);
  const [dialogOpen, setDialogOpen] = useState(false);

  useEffect(() => {
    if (prefill) {
      setQuery(prefill.title);
      setDialogResult(prefill);
      setDialogOpen(true);
      window.history.replaceState({}, "", "/search");
    }
  }, []);

  const { data: results, isLoading } = useOmniSearch(query);

  const handleLog = (result: OmniResult) => {
    setDialogResult(result);
    setDialogOpen(true);
  };

  return (
    <PageShell>
      <h1 className="text-2xl font-bold tracking-tight">Search</h1>
      <p className="text-sm text-muted-foreground">
        Find media to add to your collection
      </p>

      <div className="mt-4 relative">
        <SearchIcon className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
        <Input
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          placeholder="Search movies, TV, books, records, games..."
          className="pl-9"
          autoFocus
        />
      </div>

      {isLoading && query.length >= 2 && (
        <div className="flex items-center justify-center py-12">
          <Loader2 className="h-5 w-5 animate-spin text-muted-foreground" />
        </div>
      )}

      {results && results.length > 0 && (
        <div className="mt-4 space-y-2">
          {results.map((result) => (
            <SearchResultCard
              key={`${result.external_source}-${result.external_id}`}
              result={result}
              onLog={handleLog}
            />
          ))}
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
      />
    </PageShell>
  );
}
