import { readFileSync, writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "..");

const TMDB_KEY = "13a5d3b58a3d8c1a848f47bc37c9f87e";
const TMDB_BASE = "https://api.themoviedb.org/3";
const TMDB_IMG = "https://image.tmdb.org/t/p/w500";
const OL_SEARCH = "https://openlibrary.org/search.json";
const CAA_BASE = "https://coverartarchive.org/release";
const MB_BASE = "https://musicbrainz.org/ws/2";

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

function esc(str) {
  return "'" + String(str).replace(/'/g, "''") + "'";
}

function sleep(ms) {
  return new Promise((r) => setTimeout(r, ms));
}

async function fetchTmdbData(title, year) {
  const yearParam = year ? `&year=${year}` : "";
  const url = `${TMDB_BASE}/search/movie?api_key=${TMDB_KEY}&query=${encodeURIComponent(title)}${yearParam}&page=1`;
  const res = await fetch(url);
  if (!res.ok) return null;
  const data = await res.json();
  const movie = data.results?.[0];
  if (!movie) return null;
  return {
    cover_url: movie.poster_path ? `${TMDB_IMG}${movie.poster_path}` : null,
    external_id: String(movie.id),
    external_source: "tmdb_movie",
    overview: movie.overview || null,
  };
}

async function fetchOLData(title, author) {
  const q = author ? `${title} ${author}` : title;
  const url = `${OL_SEARCH}?q=${encodeURIComponent(q)}&limit=1&fields=key,cover_i,subject,number_of_pages_median`;
  const res = await fetch(url);
  if (!res.ok) return null;
  const data = await res.json();
  const doc = data.docs?.[0];
  if (!doc) return null;
  return {
    cover_url: doc.cover_i
      ? `https://covers.openlibrary.org/b/id/${doc.cover_i}-L.jpg`
      : null,
    external_id: doc.key || null,
    external_source: "openlibrary",
    pages: doc.number_of_pages_median || null,
  };
}

async function fetchMBData(title, artist) {
  const q = artist ? `release:"${title}" AND artist:"${artist}"` : title;
  const url = `${MB_BASE}/release/?query=${encodeURIComponent(q)}&limit=1&fmt=json`;
  const res = await fetch(url, {
    headers: { "User-Agent": "Ourchive/0.1 (https://github.com/ourchive)" },
  });
  if (!res.ok) return null;
  const data = await res.json();
  const release = data.releases?.[0];
  if (!release) return null;
  return {
    cover_url: release.id ? `${CAA_BASE}/${release.id}/front-250` : null,
    external_id: release.id || null,
    external_source: "musicbrainz",
  };
}

async function main() {
  const sql = ["-- Cover image updates", "BEGIN;", ""];
  let found = 0;
  let total = 0;

  // --- MOVIES ---
  console.log("Processing movies...");
  const movies = parseCSV(resolve(root, "imports/MyTierion - Movies.csv"));
  const seenMovies = new Set();

  for (const row of movies) {
    const title = (row["Title"] || "").trim().replace(/^"|"$/g, "");
    if (!title || seenMovies.has(title)) continue;
    seenMovies.add(title);
    total++;

    const yearStr = (row["Year"] || "").trim();
    const year = yearStr && yearStr !== "TBD" ? parseInt(yearStr) : null;

    const tmdb = await fetchTmdbData(title, year);
    if (tmdb) {
      const sets = [];
      if (tmdb.cover_url) sets.push(`cover_url = ${esc(tmdb.cover_url)}`);
      if (tmdb.external_id) sets.push(`external_id = ${esc(tmdb.external_id)}`);
      if (tmdb.external_source) sets.push(`external_source = ${esc(tmdb.external_source)}`);
      if (tmdb.overview) sets.push(`metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', ${esc(JSON.stringify(tmdb.overview))}::jsonb)`);
      if (sets.length > 0) {
        sql.push(
          `UPDATE media SET ${sets.join(", ")} WHERE title = ${esc(title)} AND media_type = 'movie';`
        );
        found++;
      }
    }
    await sleep(260);

    if (total % 20 === 0) console.log(`  ${total} movies processed (${found} covers)`);
  }
  console.log(`  Movies done: ${found}/${seenMovies.size} covers found`);

  // --- BOOKS (AB) ---
  console.log("Processing AB books...");
  const abBooks = parseCSV(resolve(root, "imports/MyTierion - AB Books.csv"));
  const seenBooks = new Set();
  let bookFound = 0;

  for (const row of abBooks) {
    const title = (row["Title"] || "").trim();
    const author = (row["Author"] || "").trim();
    if (!title || seenBooks.has(title)) continue;
    seenBooks.add(title);
    total++;

    const ol = await fetchOLData(title, author);
    if (ol) {
      const sets = [];
      if (ol.cover_url) sets.push(`cover_url = ${esc(ol.cover_url)}`);
      if (ol.external_id) sets.push(`external_id = ${esc(ol.external_id)}`);
      if (ol.external_source) sets.push(`external_source = ${esc(ol.external_source)}`);
      if (ol.pages) sets.push(`metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '${ol.pages}'::jsonb)`);
      if (sets.length > 0) {
        sql.push(
          `UPDATE media SET ${sets.join(", ")} WHERE title = ${esc(title)} AND media_type = 'book';`
        );
        bookFound++;
        found++;
      }
    }
    await sleep(1100);

    if (seenBooks.size % 10 === 0) console.log(`  ${seenBooks.size} AB books processed`);
  }

  // --- BOOKS (DM) ---
  console.log("Processing DM books...");
  const dmBooks = parseCSV(resolve(root, "imports/MyTierion - DM Books.csv"));

  for (const row of dmBooks) {
    const title = (row["Title"] || "").trim();
    const author = (row["Author"] || "").trim();
    if (!title || seenBooks.has(title)) continue;
    seenBooks.add(title);
    total++;

    const ol = await fetchOLData(title, author);
    if (ol) {
      const sets = [];
      if (ol.cover_url) sets.push(`cover_url = ${esc(ol.cover_url)}`);
      if (ol.external_id) sets.push(`external_id = ${esc(ol.external_id)}`);
      if (ol.external_source) sets.push(`external_source = ${esc(ol.external_source)}`);
      if (ol.pages) sets.push(`metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '${ol.pages}'::jsonb)`);
      if (sets.length > 0) {
        sql.push(
          `UPDATE media SET ${sets.join(", ")} WHERE title = ${esc(title)} AND media_type = 'book';`
        );
        bookFound++;
        found++;
      }
    }
    await sleep(1100);
  }
  console.log(`  Books done: ${bookFound} covers found`);

  // --- RECORDS ---
  console.log("Processing records...");
  const records = parseCSV(resolve(root, "imports/MyTierion - Records.csv"));
  const seenRecords = new Set();
  let recFound = 0;

  for (const row of records) {
    const album = (row["Album"] || "").trim();
    const artist = (row["Artist"] || "").trim();
    if (!album || !artist || seenRecords.has(album)) continue;
    seenRecords.add(album);
    total++;

    const mb = await fetchMBData(album, artist);
    if (mb) {
      const sets = [];
      if (mb.cover_url) sets.push(`cover_url = ${esc(mb.cover_url)}`);
      if (mb.external_id) sets.push(`external_id = ${esc(mb.external_id)}`);
      if (mb.external_source) sets.push(`external_source = ${esc(mb.external_source)}`);
      if (sets.length > 0) {
        sql.push(
          `UPDATE media SET ${sets.join(", ")} WHERE title = ${esc(album)} AND media_type = 'record';`
        );
        recFound++;
        found++;
      }
    }
    await sleep(1100);

    if (seenRecords.size % 20 === 0) console.log(`  ${seenRecords.size} records processed`);
  }
  console.log(`  Records done: ${recFound}/${seenRecords.size} covers found`);

  sql.push("", "COMMIT;");

  const outPath = resolve(__dirname, "cover-updates.sql");
  writeFileSync(outPath, sql.join("\n"));
  console.log(`\nTotal: ${found}/${total} covers found. SQL written to ${outPath}`);
}

main().catch(console.error);
