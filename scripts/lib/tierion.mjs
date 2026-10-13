// Shared helpers for turning the MyTierion CSV exports in imports/ into SQL.
import { readFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";

export const root = resolve(dirname(fileURLToPath(import.meta.url)), "../..");

export const DM_USER = "3caf032e-8303-4cc4-a4e9-5e624afb2266";
export const AB_USER = "74c42906-6efa-4c48-99d0-0b6d2eb01eab";

export const BOOK_FILES = [
  { file: "imports/MyTierion - AB Books.csv", userId: AB_USER, label: "AB" },
  { file: "imports/MyTierion - DM Books.csv", userId: DM_USER, label: "DM" },
];

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

export function parseCSV(relativePath) {
  const content = readFileSync(resolve(root, relativePath), "utf-8");
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

export function parseDateDMY(str) {
  if (!str) return null;
  const parts = str.split("/");
  if (parts.length !== 3) return null;
  const [d, m, y] = parts;
  return `${y}-${m.padStart(2, "0")}-${d.padStart(2, "0")}`;
}

export function scaleRating(val) {
  const n = parseFloat(val);
  if (isNaN(n) || n <= 0) return null;
  const scaled = n / 2;
  return Math.round(scaled * 2) / 2;
}

export function esc(str) {
  if (str === null || str === undefined) return "NULL";
  return "'" + String(str).replace(/'/g, "''") + "'";
}

export function sqlArr(arr) {
  if (!arr || arr.length === 0) return "'{}'";
  return "ARRAY[" + arr.map((g) => esc(g)).join(",") + "]";
}

/**
 * Map a book CSV "Status" cell (e.g. "Currently Reading, Kobo", "Physical TBR")
 * to entry status, ownership and book_entry_details.format.
 */
export function mapBookStatus(csvStatus) {
  const s = csvStatus.toLowerCase();
  if (s === "read") return { status: "completed", ownership: "none", format: null };
  if (s === "want to read") return { status: "want", ownership: "none", format: null };
  if (s === "physical tbr") return { status: "want", ownership: "physical", format: "physical" };
  if (s.startsWith("currently reading")) {
    return s.includes("kobo")
      ? { status: "consuming", ownership: "none", format: "ebook" }
      : { status: "consuming", ownership: "physical", format: "physical" };
  }
  return { status: "want", ownership: "none", format: null };
}

/** Each usable book row from both book CSVs, normalized. */
export function readBookRows() {
  const out = [];
  for (const { file, userId, label } of BOOK_FILES) {
    for (const row of parseCSV(file)) {
      const title = (row["Title"] || "").trim();
      const csvStatus = (row["Status"] || "").trim();
      if (!title || !csvStatus) continue;
      const yearStr = (row["Year"] || "").trim();
      const genre = (row["Literary Genre"] || "").trim();
      out.push({
        label,
        userId,
        title,
        author: (row["Author"] || "").trim(),
        year: yearStr ? parseInt(yearStr) : null,
        genres: genre ? genre.split("/").map((g) => g.trim()).filter(Boolean) : [],
        rating: scaleRating((row["Rating"] || "0").trim()),
        startDate: parseDateDMY((row["Start Date"] || "").trim()),
        endDate: parseDateDMY((row["End Date"] || "").trim()),
        ...mapBookStatus(csvStatus),
      });
    }
  }
  return out;
}
