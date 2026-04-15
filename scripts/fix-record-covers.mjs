import { readFileSync, writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "..");

const MB_BASE = "https://musicbrainz.org/ws/2";
const CAA_BASE = "https://coverartarchive.org/release";
const UA = "Ourchive/0.1 (https://github.com/ourchive)";

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

async function findCoverForAlbum(title, artist) {
  const q = artist
    ? `release:"${title}" AND artist:"${artist}"`
    : `release:"${title}"`;
  const url = `${MB_BASE}/release/?query=${encodeURIComponent(q)}&limit=10&fmt=json`;

  const res = await fetch(url, { headers: { "User-Agent": UA } });
  if (!res.ok) return null;
  const data = await res.json();
  const releases = data.releases ?? [];

  if (releases.length === 0) return null;

  // Try each release until we find one with cover art
  for (const release of releases) {
    await sleep(500);
    try {
      const check = await fetch(`${CAA_BASE}/${release.id}/front-250`, {
        method: "HEAD",
        redirect: "manual",
      });
      // 307 = redirect to actual image (success), 404 = no art
      if (check.status === 307 || check.status === 200) {
        return {
          cover_url: `${CAA_BASE}/${release.id}/front-250`,
          external_id: release.id,
        };
      }
    } catch {
      // network error, skip
    }
  }

  return null;
}

async function main() {
  const rows = parseCSV(resolve(root, "imports/MyTierion - Records.csv"));
  const sql = ["-- Fix record covers (verified working)", "DO $$", "BEGIN"];
  let fixed = 0;
  let total = 0;
  const seen = new Set();

  for (const row of rows) {
    const album = (row["Album"] || "").trim();
    const artist = (row["Artist"] || "").trim();
    if (!album || !artist || seen.has(album)) continue;
    seen.add(album);
    total++;

    const result = await findCoverForAlbum(album, artist);
    await sleep(1100);

    if (result) {
      sql.push("  BEGIN");
      sql.push(
        `    UPDATE media SET cover_url = ${esc(result.cover_url)}, external_id = ${esc(result.external_id)}, external_source = 'musicbrainz' WHERE title = ${esc(album)} AND media_type = 'record';`
      );
      sql.push("  EXCEPTION WHEN unique_violation THEN NULL;");
      sql.push("  END;");
      fixed++;
    }

    if (total % 10 === 0) {
      console.log(`  ${total}/${seen.size} checked, ${fixed} with verified covers`);
    }
  }

  sql.push("END;", "$$;");

  const outPath = resolve(__dirname, "fix-record-covers.sql");
  writeFileSync(outPath, sql.join("\n"));
  console.log(`\nDone: ${fixed}/${total} records have verified covers`);
  console.log(`SQL written to ${outPath}`);
}

main().catch(console.error);
