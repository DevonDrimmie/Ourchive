import { useCallback, useMemo, useRef, useState } from "react";
import { useQueryClient } from "@tanstack/react-query";
import { FileUp, Loader2 } from "lucide-react";
import { PageShell } from "@/components/layout/PageShell";
import { Button } from "@/components/ui/button";
import { Label } from "@/components/ui/label";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { useAuth } from "@/lib/hooks/useAuth";
import {
  importLetterboxdCsv,
  parseLetterboxdCsv,
  rowToParsed,
  type LetterboxdCsvKind,
} from "@/lib/import";

const KIND_OPTIONS: { value: LetterboxdCsvKind; label: string; hint: string }[] = [
  { value: "ratings", label: "Ratings", hint: "ratings.csv" },
  { value: "reviews", label: "Reviews", hint: "reviews.csv" },
  { value: "watched", label: "Watched", hint: "watched.csv" },
  { value: "watchlist", label: "Watchlist", hint: "watchlist.csv" },
];

const PREVIEW_ROWS = 8;

export function ImportPage() {
  const { user } = useAuth();
  const queryClient = useQueryClient();
  const abortRef = useRef<AbortController | null>(null);

  const [kind, setKind] = useState<LetterboxdCsvKind>("ratings");
  const [fileName, setFileName] = useState<string | null>(null);
  const [csvText, setCsvText] = useState<string>("");
  const [error, setError] = useState<string | null>(null);

  const [importing, setImporting] = useState(false);
  const [progress, setProgress] = useState({ done: 0, total: 0, current: "" });
  const [summary, setSummary] = useState<Awaited<
    ReturnType<typeof importLetterboxdCsv>
  > | null>(null);

  const parsed = useMemo(() => {
    if (!csvText.trim()) return { headers: [] as string[], rows: [] as Record<string, string>[] };
    return parseLetterboxdCsv(csvText);
  }, [csvText]);

  const previewRows = useMemo(() => {
    return parsed.rows.slice(0, PREVIEW_ROWS).map((row) => rowToParsed(row, kind));
  }, [parsed.rows, kind]);

  const importableRowCount = useMemo(
    () => parsed.rows.filter((row) => rowToParsed(row, kind) !== null).length,
    [parsed.rows, kind]
  );

  const onFile = useCallback((file: File | null) => {
    setError(null);
    setSummary(null);
    if (!file) {
      setFileName(null);
      setCsvText("");
      return;
    }
    if (!file.name.toLowerCase().endsWith(".csv")) {
      setError("Please choose a .csv file.");
      setFileName(null);
      setCsvText("");
      return;
    }
    setFileName(file.name);
    const reader = new FileReader();
    reader.onload = () => {
      const text = typeof reader.result === "string" ? reader.result : "";
      setCsvText(text);
    };
    reader.onerror = () => setError("Could not read file.");
    reader.readAsText(file);
  }, []);

  const handleImport = async () => {
    if (!user) return;
    if (!parsed.rows.length || importableRowCount === 0) {
      setError("No rows to import (check that rows have a title).");
      return;
    }

    setError(null);
    setSummary(null);
    setImporting(true);
    abortRef.current = new AbortController();

    setProgress({ done: 0, total: importableRowCount, current: "" });

    try {
      const result = await importLetterboxdCsv({
        kind,
        userId: user.id,
        rows: parsed.rows,
        signal: abortRef.current.signal,
        onProgress: (done, total, title) => {
          setProgress({ done, total, current: title });
        },
      });
      setSummary(result);
      await queryClient.invalidateQueries({ queryKey: ["entries"] });
      await queryClient.invalidateQueries({ queryKey: ["feed"] });
    } catch (e) {
      if ((e as Error)?.name === "AbortError") {
        setError("Import cancelled.");
      } else {
        setError(e instanceof Error ? e.message : "Import failed.");
      }
    } finally {
      setImporting(false);
      abortRef.current = null;
    }
  };

  const cancelImport = () => {
    abortRef.current?.abort();
  };

  const pct =
    progress.total > 0
      ? Math.round((progress.done / progress.total) * 100)
      : 0;

  return (
    <PageShell>
      <h1 className="text-2xl font-bold tracking-tight">Letterboxd import</h1>
      <p className="text-sm text-muted-foreground mt-1 max-w-xl">
        Export your data from{" "}
        <a
          href="https://letterboxd.com/settings/data/"
          target="_blank"
          rel="noreferrer"
          className="text-primary underline underline-offset-4"
        >
          Letterboxd → Settings → Data
        </a>
        , unzip the archive, then upload one CSV at a time. Each title is matched via TMDB
        (title + year).
      </p>

      <Card className="mt-6 border-border/50">
        <CardHeader>
          <CardTitle className="text-lg">Upload CSV</CardTitle>
          <CardDescription>
            Choose the file type that matches your export so we map columns correctly.
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-6">
          <div className="space-y-3">
            <Label className="text-sm font-medium">CSV type</Label>
            <div className="grid gap-2 sm:grid-cols-2">
              {KIND_OPTIONS.map((opt) => (
                <label
                  key={opt.value}
                  className="flex cursor-pointer items-start gap-2 rounded-lg border border-border/60 p-3 has-[:checked]:border-primary has-[:checked]:bg-primary/5"
                >
                  <input
                    type="radio"
                    name="csv-kind"
                    className="mt-1"
                    checked={kind === opt.value}
                    onChange={() => setKind(opt.value)}
                    disabled={importing}
                  />
                  <span>
                    <span className="font-medium text-sm">{opt.label}</span>
                    <span className="block text-xs text-muted-foreground">{opt.hint}</span>
                  </span>
                </label>
              ))}
            </div>
          </div>

          <div className="space-y-2">
            <Label htmlFor="csv-file" className="text-sm font-medium">
              File
            </Label>
            <div className="flex flex-wrap items-center gap-2">
              <Button variant="outline" size="sm" asChild disabled={importing}>
                <label className="cursor-pointer">
                  <FileUp className="mr-2 h-4 w-4 inline" />
                  Choose file
                  <input
                    id="csv-file"
                    type="file"
                    accept=".csv,text/csv"
                    className="sr-only"
                    disabled={importing}
                    onChange={(e) => onFile(e.target.files?.[0] ?? null)}
                  />
                </label>
              </Button>
              {fileName && (
                <span className="text-sm text-muted-foreground truncate max-w-[240px]">
                  {fileName}
                </span>
              )}
            </div>
          </div>

          {parsed.rows.length > 0 && (
            <div className="space-y-2">
              <p className="text-sm font-medium">Preview (first {PREVIEW_ROWS} rows)</p>
              <div className="overflow-x-auto rounded-md border border-border/60">
                <table className="w-full text-sm">
                  <thead>
                    <tr className="border-b border-border/60 bg-muted/40 text-left">
                      <th className="p-2 font-medium">Title</th>
                      <th className="p-2 font-medium">Year</th>
                      <th className="p-2 font-medium">Date</th>
                      {(kind === "ratings" || kind === "reviews") && (
                        <>
                          <th className="p-2 font-medium">Rating</th>
                          {kind === "reviews" && (
                            <th className="p-2 font-medium">Review</th>
                          )}
                        </>
                      )}
                    </tr>
                  </thead>
                  <tbody>
                    {previewRows.map((pr, i) =>
                      pr ? (
                        <tr key={i} className="border-b border-border/40 last:border-0">
                          <td className="p-2 max-w-[200px] truncate">{pr.name}</td>
                          <td className="p-2 text-muted-foreground">
                            {pr.year ?? "—"}
                          </td>
                          <td className="p-2 text-muted-foreground whitespace-nowrap">
                            {pr.date ?? "—"}
                          </td>
                          {(kind === "ratings" || kind === "reviews") && (
                            <>
                              <td className="p-2">{pr.rating ?? "—"}</td>
                              {kind === "reviews" && (
                                <td className="p-2 max-w-[240px] truncate text-muted-foreground">
                                  {pr.review ?? "—"}
                                </td>
                              )}
                            </>
                          )}
                        </tr>
                      ) : (
                        <tr key={i}>
                          <td
                            colSpan={6}
                            className="p-2 text-muted-foreground italic"
                          >
                            (skipped — missing title)
                          </td>
                        </tr>
                      )
                    )}
                  </tbody>
                </table>
              </div>
              <p className="text-xs text-muted-foreground">
                {parsed.rows.length} row{parsed.rows.length === 1 ? "" : "s"} in file ·{" "}
                {importableRowCount} with a title to import
              </p>
            </div>
          )}

          {error && (
            <p className="text-sm text-destructive" role="alert">
              {error}
            </p>
          )}

          {importing && (
            <div className="space-y-2">
              <div className="flex justify-between text-xs text-muted-foreground">
                <span className="truncate pr-2">
                  {progress.current ? `Matching: ${progress.current}` : "Starting…"}
                </span>
                <span>
                  {progress.done} / {progress.total} ({pct}%)
                </span>
              </div>
              <div className="h-2 w-full overflow-hidden rounded-full bg-muted">
                <div
                  className="h-full bg-primary transition-[width] duration-300"
                  style={{ width: `${pct}%` }}
                />
              </div>
              <Button
                type="button"
                variant="outline"
                size="sm"
                onClick={cancelImport}
              >
                Cancel
              </Button>
            </div>
          )}

          <div className="flex flex-wrap gap-2">
            <Button
              type="button"
              onClick={handleImport}
              disabled={importing || !user || importableRowCount === 0}
            >
              {importing ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  Importing…
                </>
              ) : (
                "Import"
              )}
            </Button>
          </div>
        </CardContent>
      </Card>

      {summary && !importing && (
        <Card className="mt-6 border-border/50">
          <CardHeader>
            <CardTitle className="text-lg">Results</CardTitle>
            <CardDescription>
              Imported: {summary.imported} · Skipped: {summary.skipped} · Failed:{" "}
              {summary.failed}
            </CardDescription>
          </CardHeader>
          <CardContent>
            {summary.rows.some((r) => r.outcome === "failed") ? (
              <div className="space-y-2">
                <p className="text-sm font-medium text-destructive">Failed rows</p>
                <ul className="max-h-60 overflow-y-auto text-sm space-y-1 rounded-md border border-border/60 p-3">
                  {summary.rows
                    .filter((r) => r.outcome === "failed")
                    .map((r, i) => (
                      <li key={`${r.title}-${i}`}>
                        <span className="font-medium">{r.title}</span>
                        {r.message && (
                          <span className="text-muted-foreground"> — {r.message}</span>
                        )}
                      </li>
                    ))}
                </ul>
              </div>
            ) : (
              <p className="text-sm text-muted-foreground">No failures.</p>
            )}
          </CardContent>
        </Card>
      )}
    </PageShell>
  );
}
