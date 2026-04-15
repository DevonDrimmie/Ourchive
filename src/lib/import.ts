import { supabase } from "@/lib/supabase";
import { searchMovies } from "@/lib/api/tmdb";
import { upsertMedia } from "@/lib/hooks/useEntries";
import type { EntryStatus, SearchResult } from "@/types";

export type LetterboxdCsvKind =
  | "ratings"
  | "reviews"
  | "watched"
  | "watchlist";

export interface ParsedLetterboxdRow {
  date: string | null;
  name: string;
  year: number | null;
  rating: number | null;
  review: string | null;
}

export interface LetterboxdImportRowResult {
  title: string;
  outcome: "imported" | "failed" | "skipped";
  message?: string;
}

export interface LetterboxdImportSummary {
  imported: number;
  failed: number;
  skipped: number;
  rows: LetterboxdImportRowResult[];
}

/**
 * Parse full CSV text (RFC 4180-style). Newlines inside quoted fields are kept
 * as part of the field — required for Letterboxd reviews.csv with multi-line reviews.
 */
export function parseCsv(csvText: string): string[][] {
  const s = csvText.replace(/^\uFEFF/, "");
  const rows: string[][] = [];
  let row: string[] = [];
  let field = "";
  let i = 0;
  let inQuotes = false;

  const endField = () => {
    row.push(field);
    field = "";
  };

  const endRow = () => {
    endField();
    if (row.length > 1 || (row.length === 1 && row[0] !== "")) {
      rows.push(row);
    }
    row = [];
  };

  while (i < s.length) {
    const c = s[i]!;

    if (inQuotes) {
      if (c === '"') {
        if (s[i + 1] === '"') {
          field += '"';
          i += 2;
          continue;
        }
        inQuotes = false;
        i++;
        continue;
      }
      field += c;
      i++;
      continue;
    }

    if (c === '"') {
      inQuotes = true;
      i++;
      continue;
    }

    if (c === ",") {
      endField();
      i++;
      continue;
    }

    if (c === "\r" && s[i + 1] === "\n") {
      i += 2;
      endRow();
      continue;
    }

    if (c === "\n" || c === "\r") {
      i++;
      endRow();
      continue;
    }

    field += c;
    i++;
  }

  endField();
  if (row.length > 1 || (row.length === 1 && row[0] !== "")) {
    rows.push(row);
  }

  return rows;
}

/** Parse a single CSV line (no embedded newlines in fields). */
export function parseCsvLine(line: string): string[] {
  const rows = parseCsv(line + "\n");
  return (rows[0] ?? []).map((cell) => cell.trim());
}

/** Normalize header to a simple key */
function normalizeHeader(h: string): string {
  return h.trim().toLowerCase().replace(/\s+/g, "");
}

/** Parse full CSV text into header map + row objects */
export function parseLetterboxdCsv(csvText: string): {
  headers: string[];
  rows: Record<string, string>[];
} {
  const table = parseCsv(csvText);
  if (table.length < 2) {
    return { headers: [], rows: [] };
  }

  const rawHeaders = table[0]!.map((h) => h.trim());
  const normHeaders = rawHeaders.map(normalizeHeader);

  const rows: Record<string, string>[] = [];
  for (let i = 1; i < table.length; i++) {
    const cells = table[i]!.map((c) => c.trim());
    if (cells.length === 0 || (cells.length === 1 && !cells[0])) continue;

    const row: Record<string, string> = {};
    for (let j = 0; j < normHeaders.length; j++) {
      const key = normHeaders[j];
      if (key === undefined) continue;
      row[key] = cells[j] ?? "";
    }
    rows.push(row);
  }

  return { headers: normHeaders, rows };
}

function getCell(row: Record<string, string>, ...keys: string[]): string {
  for (const k of keys) {
    const v = row[k];
    if (v !== undefined && v !== "") return v;
  }
  return "";
}

function parseYear(s: string): number | null {
  const n = parseInt(s, 10);
  return Number.isFinite(n) ? n : null;
}

function parseRating(s: string): number | null {
  if (!s) return null;
  const n = parseFloat(s.replace(",", "."));
  if (!Number.isFinite(n)) return null;
  return Math.round(n * 2) / 2;
}

/** Strip basic HTML tags from Letterboxd review exports */
export function stripHtml(html: string): string {
  return html
    .replace(/<br\s*\/?>/gi, "\n")
    .replace(/<\/p>/gi, "\n")
    .replace(/<[^>]+>/g, "")
    .replace(/&nbsp;/g, " ")
    .replace(/&amp;/g, "&")
    .replace(/&lt;/g, "<")
    .replace(/&gt;/g, ">")
    .replace(/&quot;/g, '"')
    .trim();
}

export function rowToParsed(
  row: Record<string, string>,
  kind: LetterboxdCsvKind
): ParsedLetterboxdRow | null {
  const name =
    getCell(row, "name", "title") ||
    getCell(row, "film", "movietitle");
  if (!name.trim()) return null;

  const dateRaw = getCell(row, "date", "watcheddate", "diarydate");
  const yearRaw = getCell(row, "year");
  const ratingRaw = getCell(row, "rating", "rating10");
  const reviewRaw = getCell(row, "review", "reviewtext");

  let rating = parseRating(ratingRaw);
  if (ratingRaw && rating === null) {
    const r10 = parseInt(ratingRaw, 10);
    if (r10 >= 1 && r10 <= 10) {
      rating = Math.round((r10 / 2) * 2) / 2;
    }
  }

  let review: string | null = null;
  if (kind === "ratings" || kind === "reviews") {
    const stripped = reviewRaw ? stripHtml(reviewRaw) : "";
    review = stripped || null;
  }

  if (kind === "watchlist" || kind === "watched") {
    rating = null;
  }
  if (kind === "watchlist" || kind === "watched") {
    review = null;
  }

  return {
    date: dateRaw || null,
    name: name.trim(),
    year: yearRaw ? parseYear(yearRaw) : null,
    rating,
    review,
  };
}

function delay(ms: number): Promise<void> {
  return new Promise((r) => setTimeout(r, ms));
}

/** Letterboxd dates are usually YYYY-MM-DD; normalize for Postgres date column */
export function normalizeConsumedDate(raw: string | null): string | null {
  if (!raw?.trim()) return null;
  const s = raw.trim();
  const iso = /^\d{4}-\d{2}-\d{2}/.exec(s);
  if (iso) return iso[0];
  const d = new Date(s);
  if (!Number.isNaN(d.getTime())) {
    return d.toISOString().slice(0, 10);
  }
  return null;
}

const TMDB_GAP_MS = 350;

async function findBestMovieMatch(
  title: string,
  year: number | null
): Promise<SearchResult | null> {
  const results = await searchMovies(title);
  if (!results.length) return null;

  if (year == null) return results[0] ?? null;

  const exact = results.find((r) => r.year === year);
  if (exact) return exact;

  const close = results.find(
    (r) => r.year != null && Math.abs(r.year - year) <= 1
  );
  if (close) return close;

  return results[0] ?? null;
}

export async function importLetterboxdCsv(options: {
  kind: LetterboxdCsvKind;
  userId: string;
  rows: Record<string, string>[];
  onProgress: (done: number, total: number, title: string) => void;
  signal?: AbortSignal;
}): Promise<LetterboxdImportSummary> {
  const { kind, userId, rows, onProgress, signal } = options;

  const summary: LetterboxdImportSummary = {
    imported: 0,
    failed: 0,
    skipped: 0,
    rows: [],
  };

  const parsedRows: ParsedLetterboxdRow[] = [];
  for (const row of rows) {
    const p = rowToParsed(row, kind);
    if (!p) {
      summary.skipped++;
      summary.rows.push({
        title: "(empty row)",
        outcome: "skipped",
        message: "Missing title",
      });
      continue;
    }
    parsedRows.push(p);
  }

  const total = parsedRows.length;
  let done = 0;

  for (const p of parsedRows) {
    if (signal?.aborted) break;

    onProgress(done, total, p.name);

    let status: EntryStatus;
    let rating: number | null = null;
    let review: string | null = null;
    let consumedDate: string | null = null;

    switch (kind) {
      case "watchlist":
        status = "want";
        break;
      case "watched":
        status = "completed";
        consumedDate = normalizeConsumedDate(p.date);
        break;
      case "ratings":
      case "reviews":
        status = "completed";
        rating = p.rating;
        review = p.review;
        consumedDate = normalizeConsumedDate(p.date);
        break;
    }

    try {
      await delay(TMDB_GAP_MS);
      if (signal?.aborted) break;

      const match = await findBestMovieMatch(p.name, p.year);
      if (!match) {
        summary.failed++;
        summary.rows.push({
          title: p.name,
          outcome: "failed",
          message: "No TMDB match",
        });
        done++;
        onProgress(done, total, p.name);
        continue;
      }

      const mediaId = await upsertMedia(match);

      const { data: existing } = await supabase
        .from("entries")
        .select("id")
        .eq("media_id", mediaId)
        .eq("user_id", userId)
        .maybeSingle();

      const { error } = await supabase.from("entries").upsert(
        {
          media_id: mediaId,
          user_id: userId,
          status,
          ownership: "none",
          rating,
          review,
          consumed_date: consumedDate,
        },
        { onConflict: "media_id,user_id" }
      );

      if (error) throw error;

      if (existing) {
        summary.skipped++;
        summary.rows.push({
          title: p.name,
          outcome: "skipped",
          message: "Entry already existed (updated)",
        });
      } else {
        summary.imported++;
        summary.rows.push({
          title: p.name,
          outcome: "imported",
        });
      }
    } catch (e) {
      summary.failed++;
      summary.rows.push({
        title: p.name,
        outcome: "failed",
        message: e instanceof Error ? e.message : "Unknown error",
      });
    }

    done++;
    onProgress(done, total, p.name);
  }

  return summary;
}
