import { createClient } from "@supabase/supabase-js";
import { readFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "..");

const SUPABASE_URL = "https://vsyivikjbohijhqofuqu.supabase.co";
const SUPABASE_KEY =
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZzeWl2aWtqYm9oaWpocW9mdXF1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzYxOTEzNTYsImV4cCI6MjA5MTc2NzM1Nn0.2aD-QAvfu8ORT4N58zbhwA8vQckskn8zJD4bEsugvA4";

const DM_USER = "3caf032e-8303-4cc4-a4e9-5e624afb2266";
const AB_USER = "74c42906-6efa-4c48-99d0-0b6d2eb01eab";

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);

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
  return Math.round((n / 2) * 2) / 2; // scale 1-10 to 0.5-5, snap to half
}

function mapStatus(csv_status) {
  const s = csv_status?.toLowerCase().trim() ?? "";
  if (s === "watched" || s === "read") return "completed";
  if (
    s.startsWith("currently reading") ||
    s.startsWith("currently reading,")
  )
    return "consuming";
  if (
    s === "want to read" ||
    s === "want to watch" ||
    s === "unwatched" ||
    s === "unreleased" ||
    s === "physical tbr"
  )
    return "want";
  if (s === "dnf") return "completed";
  return "want";
}

function isOwned(csv_status) {
  const s = csv_status?.toLowerCase().trim() ?? "";
  return s.startsWith("physical tbr") || s.startsWith("currently reading, kobo");
}

async function upsertMedia(media) {
  const { data: existing } = await supabase
    .from("media")
    .select("id")
    .eq("title", media.title)
    .eq("media_type", media.media_type)
    .limit(1)
    .maybeSingle();

  if (existing) return existing.id;

  const { data, error } = await supabase
    .from("media")
    .insert(media)
    .select("id")
    .single();

  if (error) {
    if (error.code === "23505") {
      const { data: dup } = await supabase
        .from("media")
        .select("id")
        .eq("title", media.title)
        .eq("media_type", media.media_type)
        .limit(1)
        .single();
      return dup?.id;
    }
    console.error("Media insert error:", error.message, media.title);
    return null;
  }
  return data.id;
}

async function upsertEntry(entry) {
  const { error } = await supabase
    .from("entries")
    .upsert(entry, { onConflict: "media_id,user_id" });

  if (error) {
    console.error("Entry upsert error:", error.message, entry);
  }
}

async function importMovies() {
  console.log("\n--- Importing Movies ---");
  const rows = parseCSV(resolve(root, "imports/MyTierion - Movies.csv"));
  let count = 0;

  for (const row of rows) {
    const title = row["Title"]?.trim();
    if (!title) continue;

    const yearStr = row["Year"]?.trim();
    const year =
      yearStr && yearStr !== "TBD" ? parseInt(yearStr) : null;
    const genres = (row["Genre"] ?? "")
      .split(",")
      .map((g) => g.trim())
      .filter(Boolean);
    const director = row["Director"]?.trim();

    const mediaId = await upsertMedia({
      media_type: "movie",
      title,
      year: isNaN(year) ? null : year,
      genres,
      metadata: director ? { director } : {},
    });
    if (!mediaId) continue;

    const abStatus = row["Watch Status (AB)"]?.trim();
    const dmStatus = row["Watch Status (DM)"]?.trim();
    const abRating = row["AB Rating (1-10)"]?.trim();
    const dmRating = row["DM Rating (1-10)"]?.trim();
    const watchDate = parseDateDMY(row["Watch Date"]?.trim());

    if (abStatus) {
      await upsertEntry({
        media_id: mediaId,
        user_id: AB_USER,
        status: mapStatus(abStatus),
        owned: false,
        rating: scaleRating(abRating),
        consumed_date: mapStatus(abStatus) === "completed" ? watchDate : null,
      });
    }

    if (dmStatus) {
      await upsertEntry({
        media_id: mediaId,
        user_id: DM_USER,
        status: mapStatus(dmStatus),
        owned: false,
        rating: scaleRating(dmRating),
        consumed_date: mapStatus(dmStatus) === "completed" ? watchDate : null,
      });
    }

    count++;
    if (count % 20 === 0) console.log(`  ...${count} movies`);
  }
  console.log(`  Done: ${count} movies imported`);
}

async function importRecords() {
  console.log("\n--- Importing Records ---");
  const rows = parseCSV(resolve(root, "imports/MyTierion - Records.csv"));
  let count = 0;

  for (const row of rows) {
    const title = row["Album"]?.trim();
    const artist = row["Artist"]?.trim();
    if (!title || !artist) continue;

    const yearStr = row["Year"]?.trim();
    const year = yearStr ? parseInt(yearStr) : null;
    const genres = (row["Genre"] ?? "")
      .split("/")
      .map((g) => g.trim())
      .filter(Boolean);
    const status = row["Status"]?.trim();

    const mediaId = await upsertMedia({
      media_type: "record",
      title,
      year: isNaN(year) ? null : year,
      genres,
      metadata: { artist },
    });
    if (!mediaId) continue;

    if (status?.startsWith("Owned DM")) {
      await upsertEntry({
        media_id: mediaId,
        user_id: DM_USER,
        status: "completed",
        owned: true,
        rating: null,
      });
    } else if (status?.startsWith("Owned AB")) {
      await upsertEntry({
        media_id: mediaId,
        user_id: AB_USER,
        status: "completed",
        owned: true,
        rating: null,
      });
    } else if (status === "Want") {
      await upsertEntry({
        media_id: mediaId,
        user_id: DM_USER,
        status: "want",
        owned: false,
        rating: null,
      });
      await upsertEntry({
        media_id: mediaId,
        user_id: AB_USER,
        status: "want",
        owned: false,
        rating: null,
      });
    }

    count++;
    if (count % 20 === 0) console.log(`  ...${count} records`);
  }
  console.log(`  Done: ${count} records imported`);
}

async function importBooks(filepath, userId, userName) {
  console.log(`\n--- Importing ${userName} Books ---`);
  const rows = parseCSV(filepath);
  let count = 0;

  for (const row of rows) {
    const title = (row["Title"] ?? "").trim();
    if (!title) continue;

    const author = (row["Author"] ?? "").trim();
    const yearStr = (row["Year"] ?? "").trim();
    const year = yearStr ? parseInt(yearStr) : null;
    const csvStatus = (row["Status"] ?? "").trim();
    const ratingStr = (row["Rating"] ?? "0").trim();
    const startDate = parseDateDMY((row["Start Date"] ?? "").trim());
    const endDate = parseDateDMY((row["End Date"] ?? "").trim());
    const genre = (row["Literary Genre"] ?? "").trim();

    if (!csvStatus) continue;

    const genres = genre
      ? genre.split("/").map((g) => g.trim()).filter(Boolean)
      : [];

    const mediaId = await upsertMedia({
      media_type: "book",
      title,
      year: isNaN(year) ? null : year,
      genres,
      metadata: author ? { authors: [author] } : {},
    });
    if (!mediaId) continue;

    const status = mapStatus(csvStatus);
    const rating = scaleRating(ratingStr);

    await upsertEntry({
      media_id: mediaId,
      user_id: userId,
      status,
      owned: isOwned(csvStatus),
      rating,
      consumed_date: endDate || startDate || null,
    });

    count++;
    if (count % 20 === 0) console.log(`  ...${count} books`);
  }
  console.log(`  Done: ${count} books imported`);
}

async function main() {
  console.log("Starting backfill...");

  await importMovies();
  await importRecords();
  await importBooks(
    resolve(root, "imports/MyTierion - DM Books.csv"),
    DM_USER,
    "DM"
  );
  await importBooks(
    resolve(root, "imports/MyTierion - AB Books.csv"),
    AB_USER,
    "AB"
  );

  console.log("\nBackfill complete!");
}

main().catch(console.error);
