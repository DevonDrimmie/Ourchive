import { writeFileSync } from "fs";
import { resolve } from "path";
import {
  AB_USER,
  DM_USER,
  esc,
  parseCSV,
  parseDateDMY,
  readBookRows,
  root,
  scaleRating,
  sqlArr,
} from "./lib/tierion.mjs";

let mediaCounter = 0;
const sql = [];

sql.push("-- Ourchive backfill generated " + new Date().toISOString());
sql.push("BEGIN;");
sql.push("");

sql.push("-- Ensure profiles exist for both users");
sql.push("INSERT INTO profiles (id, display_name) VALUES");
sql.push(`  (${esc(DM_USER)}, 'DM'),`);
sql.push(`  (${esc(AB_USER)}, 'AB')`);
sql.push("ON CONFLICT (id) DO NOTHING;");

/**
 * Insert a media row and its typed subtype row together.
 * `subtype` is { table, columns: { col: sqlValue } }.
 */
function emitMedia(mediaType, title, year, genres, subtype) {
  mediaCounter++;
  const yearVal = year && !isNaN(year) ? year : "NULL";
  const cols = Object.keys(subtype.columns);
  const vals = Object.values(subtype.columns);

  sql.push(`-- ${title}`);
  sql.push(
    `WITH m AS (INSERT INTO media (media_type, title, year, genres) ` +
      `VALUES (${esc(mediaType)}, ${esc(title)}, ${yearVal}, ${sqlArr(genres)}) RETURNING id) ` +
      `INSERT INTO ${subtype.table} (media_id${cols.map((c) => ", " + c).join("")}) ` +
      `SELECT id${vals.map((v) => ", " + v).join("")} FROM m;`
  );
}

/** SQL selecting the media id for a title, disambiguated by subtype columns when given. */
function mediaMatch(mediaType, title, subtypeMatch) {
  const join = subtypeMatch
    ? ` JOIN ${subtypeMatch.table} s ON s.media_id = m.id AND ${subtypeMatch.where}`
    : "";
  return (
    `FROM media m${join} WHERE m.title = ${esc(title)} AND m.media_type = ${esc(mediaType)} ` +
    `ORDER BY m.created_at DESC LIMIT 1`
  );
}

function emitEntry(match, userId, status, ownership, rating, consumedDate) {
  const ratingVal = rating !== null ? rating : "NULL";
  const dateVal = consumedDate ? esc(consumedDate) : "NULL";

  sql.push(
    `INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) ` +
      `SELECT m.id, ${esc(userId)}, ${esc(status)}, ${esc(ownership)}, ${ratingVal}, ${dateVal} ` +
      `${match} ON CONFLICT (media_id, user_id) DO NOTHING;`
  );
}

function emitBookEntryDetails(match, userId, format, startedDate) {
  if (!format && !startedDate) return;
  sql.push(
    `INSERT INTO book_entry_details (entry_id, format, started_date) ` +
      `SELECT e.id, ${esc(format)}, ${startedDate ? esc(startedDate) : "NULL"} ` +
      `FROM entries e WHERE e.user_id = ${esc(userId)} AND e.media_id = (SELECT m.id ${match}) ` +
      `ON CONFLICT (entry_id) DO NOTHING;`
  );
}

function mapMovieStatus(s) {
  s = (s || "").toLowerCase().trim();
  if (s === "watched") return "completed";
  if (s === "unwatched" || s === "unreleased") return "want";
  if (s === "dnf") return "completed";
  return "want";
}

function processMovies() {
  sql.push("");
  sql.push("-- ========== MOVIES ==========");
  const rows = parseCSV("imports/MyTierion - Movies.csv");

  for (const row of rows) {
    const title = (row["Title"] || "").trim().replace(/^"|"$/g, "");
    if (!title) continue;

    const yearStr = (row["Year"] || "").trim();
    const year = yearStr && yearStr !== "TBD" ? parseInt(yearStr) : null;
    const genres = (row["Genre"] || "")
      .split(",")
      .map((g) => g.trim())
      .filter(Boolean);
    const director = (row["Director"] || "").trim();

    emitMedia("movie", title, year, genres, {
      table: "movies",
      columns: { director: director ? esc(director) : "NULL" },
    });
    const match = mediaMatch("movie", title);

    const abStatus = (row["Watch Status (AB)"] || "").trim();
    const dmStatus = (row["Watch Status (DM)"] || "").trim();
    const abRating = scaleRating(row["AB Rating (1-10)"] || "");
    const dmRating = scaleRating(row["DM Rating (1-10)"] || "");
    const watchDate = parseDateDMY((row["Watch Date"] || "").trim());

    if (abStatus) {
      const status = mapMovieStatus(abStatus);
      emitEntry(match, AB_USER, status, "none", abRating, status === "completed" ? watchDate : null);
    }

    if (dmStatus) {
      const status = mapMovieStatus(dmStatus);
      emitEntry(match, DM_USER, status, "none", dmRating, status === "completed" ? watchDate : null);
    }
    sql.push("");
  }
}

function processRecords() {
  sql.push("");
  sql.push("-- ========== RECORDS ==========");
  const rows = parseCSV("imports/MyTierion - Records.csv");

  for (const row of rows) {
    const album = (row["Album"] || "").trim();
    const artist = (row["Artist"] || "").trim();
    if (!album || !artist) continue;

    const yearStr = (row["Year"] || "").trim();
    const year = yearStr ? parseInt(yearStr) : null;
    const genres = (row["Genre"] || "")
      .split("/")
      .map((g) => g.trim())
      .filter(Boolean);
    const status = (row["Status"] || "").trim();

    emitMedia("record", album, year, genres, {
      table: "records",
      columns: { artist: esc(artist) },
    });
    const match = mediaMatch("record", album, {
      table: "records",
      where: `s.artist = ${esc(artist)}`,
    });

    if (status.startsWith("Owned DM")) {
      emitEntry(match, DM_USER, "completed", "physical", null, null);
    } else if (status.startsWith("Owned AB")) {
      emitEntry(match, AB_USER, "completed", "physical", null, null);
    } else if (status === "Want") {
      emitEntry(match, DM_USER, "completed", "want_to_own", null, null);
      emitEntry(match, AB_USER, "completed", "want_to_own", null, null);
    }
    sql.push("");
  }
}

function processBooks() {
  let currentLabel = null;
  for (const b of readBookRows()) {
    if (b.label !== currentLabel) {
      currentLabel = b.label;
      sql.push("");
      sql.push(`-- ========== ${b.label} BOOKS ==========`);
    }

    emitMedia("book", b.title, b.year, b.genres, {
      table: "books",
      columns: { authors: sqlArr(b.author ? [b.author] : []) },
    });
    const match = mediaMatch(
      "book",
      b.title,
      b.author ? { table: "books", where: `s.authors = ${sqlArr([b.author])}` } : undefined
    );

    emitEntry(match, b.userId, b.status, b.ownership, b.rating, b.endDate || b.startDate || null);
    emitBookEntryDetails(match, b.userId, b.format, b.startDate);
    sql.push("");
  }
}

processMovies();
processRecords();
processBooks();

sql.push("");
sql.push("COMMIT;");

const output = resolve(root, "scripts/backfill.sql");
writeFileSync(output, sql.join("\n"));
console.log(`Generated ${output} (${sql.length} lines, ${mediaCounter} media items)`);
