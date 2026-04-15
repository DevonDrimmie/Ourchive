import { readFileSync, writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "..");

const DM_USER = "3caf032e-8303-4cc4-a4e9-5e624afb2266";
const AB_USER = "74c42906-6efa-4c48-99d0-0b6d2eb01eab";

function parseCSVLine(line) {
  const fields = [];
  let current = "";
  let inQuotes = false;
  for (let i = 0; i < line.length; i++) {
    const ch = line[i];
    if (ch === '"') {
      if (inQuotes && line[i + 1] === '"') {
        current += '"';
        i++;
      } else {
        inQuotes = !inQuotes;
      }
    } else if (ch === "," && !inQuotes) {
      fields.push(current.trim());
      current = "";
    } else {
      current += ch;
    }
  }
  fields.push(current.trim());
  return fields;
}

function parseCSV(filepath) {
  const content = readFileSync(filepath, "utf-8");
  const lines = content.split("\n").filter((l) => l.trim());
  const headers = parseCSVLine(lines[0]);
  return lines.slice(1).map((line) => {
    const vals = parseCSVLine(line);
    const obj = {};
    headers.forEach((h, i) => {
      obj[h.trim()] = vals[i] ?? "";
    });
    return obj;
  });
}

function parseDateDMY(str) {
  if (!str) return null;
  const parts = str.split("/");
  if (parts.length !== 3) return null;
  const [d, m, y] = parts;
  return `${y}-${m.padStart(2, "0")}-${d.padStart(2, "0")}`;
}

function scaleRating(val) {
  const n = parseFloat(val);
  if (isNaN(n) || n <= 0) return null;
  const scaled = n / 2;
  return Math.round(scaled * 2) / 2;
}

function esc(str) {
  if (str === null || str === undefined) return "NULL";
  return "'" + String(str).replace(/'/g, "''") + "'";
}

function sqlArr(arr) {
  if (!arr || arr.length === 0) return "'{}'";
  return "ARRAY[" + arr.map((g) => esc(g)).join(",") + "]";
}

function sqlJson(obj) {
  return "'" + JSON.stringify(obj).replace(/'/g, "''") + "'::jsonb";
}

let mediaCounter = 0;
const sql = [];

sql.push("-- Ourchive backfill generated " + new Date().toISOString());
sql.push("BEGIN;");
sql.push("");

function emitMedia(mediaType, title, year, genres, metadata) {
  mediaCounter++;
  const varName = `m${mediaCounter}`;
  const yearVal = year && !isNaN(year) ? year : "NULL";

  sql.push(`-- ${title}`);
  sql.push(
    `INSERT INTO media (media_type, title, year, genres, metadata) ` +
      `VALUES (${esc(mediaType)}, ${esc(title)}, ${yearVal}, ${sqlArr(genres)}, ${sqlJson(metadata)}) ` +
      `ON CONFLICT DO NOTHING;`
  );

  return { mediaType, title };
}

function emitEntry(mediaType, title, userId, status, owned, rating, consumedDate) {
  const ratingVal = rating !== null ? rating : "NULL";
  const dateVal = consumedDate ? esc(consumedDate) : "NULL";

  sql.push(
    `INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) ` +
      `SELECT m.id, ${esc(userId)}, ${esc(status)}, ${owned}, ${ratingVal}, ${dateVal} ` +
      `FROM media m WHERE m.title = ${esc(title)} AND m.media_type = ${esc(mediaType)} LIMIT 1 ` +
      `ON CONFLICT (media_id, user_id) DO NOTHING;`
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
  const rows = parseCSV(resolve(root, "imports/MyTierion - Movies.csv"));

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

    emitMedia("movie", title, year, genres, director ? { director } : {});

    const abStatus = (row["Watch Status (AB)"] || "").trim();
    const dmStatus = (row["Watch Status (DM)"] || "").trim();
    const abRating = scaleRating(row["AB Rating (1-10)"] || "");
    const dmRating = scaleRating(row["DM Rating (1-10)"] || "");
    const watchDate = parseDateDMY((row["Watch Date"] || "").trim());

    if (abStatus) {
      const status = mapMovieStatus(abStatus);
      emitEntry(
        "movie", title, AB_USER, status, false, abRating,
        status === "completed" ? watchDate : null
      );
    }

    if (dmStatus) {
      const status = mapMovieStatus(dmStatus);
      emitEntry(
        "movie", title, DM_USER, status, false, dmRating,
        status === "completed" ? watchDate : null
      );
    }
    sql.push("");
  }
}

function processRecords() {
  sql.push("");
  sql.push("-- ========== RECORDS ==========");
  const rows = parseCSV(resolve(root, "imports/MyTierion - Records.csv"));

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

    emitMedia("record", album, year, genres, { artist });

    if (status.startsWith("Owned DM")) {
      emitEntry("record", album, DM_USER, "completed", true, null, null);
    } else if (status.startsWith("Owned AB")) {
      emitEntry("record", album, AB_USER, "completed", true, null, null);
    } else if (status === "Want") {
      emitEntry("record", album, DM_USER, "want", false, null, null);
      emitEntry("record", album, AB_USER, "want", false, null, null);
    }
    sql.push("");
  }
}

function processBooks(filepath, userId, label) {
  sql.push("");
  sql.push(`-- ========== ${label} BOOKS ==========`);
  const rows = parseCSV(filepath);

  for (const row of rows) {
    const title = (row["Title"] || "").trim();
    if (!title) continue;

    const author = (row["Author"] || "").trim();
    const yearStr = (row["Year"] || "").trim();
    const year = yearStr ? parseInt(yearStr) : null;
    const csvStatus = (row["Status"] || "").trim();
    const ratingStr = (row["Rating"] || "0").trim();
    const startDate = parseDateDMY((row["Start Date"] || "").trim());
    const endDate = parseDateDMY((row["End Date"] || "").trim());
    const genre = (row["Literary Genre"] || "").trim();

    if (!csvStatus) continue;

    const genres = genre
      ? genre.split("/").map((g) => g.trim()).filter(Boolean)
      : [];

    emitMedia("book", title, year, genres, author ? { authors: [author] } : {});

    const lowerStatus = csvStatus.toLowerCase();
    let status, owned;

    if (lowerStatus === "read") {
      status = "completed";
      owned = false;
    } else if (lowerStatus === "want to read") {
      status = "want";
      owned = false;
    } else if (lowerStatus === "physical tbr") {
      status = "want";
      owned = true;
    } else if (lowerStatus.startsWith("currently reading")) {
      status = "consuming";
      owned = lowerStatus.includes("kobo") ? false : true;
    } else {
      status = "want";
      owned = false;
    }

    const rating = scaleRating(ratingStr);

    emitEntry(
      "book", title, userId, status, owned, rating,
      endDate || startDate || null
    );
    sql.push("");
  }
}

processMovies();
processRecords();
processBooks(resolve(root, "imports/MyTierion - AB Books.csv"), AB_USER, "AB");
processBooks(resolve(root, "imports/MyTierion - DM Books.csv"), DM_USER, "DM");

sql.push("");
sql.push("COMMIT;");

const output = resolve(root, "scripts/backfill.sql");
writeFileSync(output, sql.join("\n"));
console.log(`Generated ${output} (${sql.length} lines, ${mediaCounter} media items)`);
