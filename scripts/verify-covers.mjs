import { createClient } from "@supabase/supabase-js";
import { writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));

const SUPABASE_URL = "https://vsyivikjbohijhqofuqu.supabase.co";
const SUPABASE_KEY =
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZzeWl2aWtqYm9oaWpocW9mdXF1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzYxOTEzNTYsImV4cCI6MjA5MTc2NzM1Nn0.2aD-QAvfu8ORT4N58zbhwA8vQckskn8zJD4bEsugvA4";

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);

function esc(str) {
  return "'" + String(str).replace(/'/g, "''") + "'";
}

function sleep(ms) {
  return new Promise((r) => setTimeout(r, ms));
}

async function main() {
  // We can't read from Supabase without auth, so just check all CAA URLs
  // by extracting release IDs from the cover-updates SQL
  const fs = await import("fs");
  const coverSql = fs.readFileSync(
    resolve(__dirname, "cover-updates.sql"),
    "utf-8"
  );

  // Extract all coverartarchive URLs and their associated media titles
  const regex =
    /cover_url = '(https:\/\/coverartarchive\.org\/release\/[^']+)'.+WHERE title = '([^']+)' AND media_type = 'record'/g;

  const entries = [];
  let match;
  while ((match = regex.exec(coverSql)) !== null) {
    entries.push({ url: match[1], title: match[2] });
  }

  console.log(`Found ${entries.length} record cover URLs to verify...`);

  const broken = [];

  for (let i = 0; i < entries.length; i++) {
    const { url, title } = entries[i];

    try {
      const res = await fetch(url, { method: "HEAD", redirect: "follow" });
      if (!res.ok) {
        broken.push(title);
      }
    } catch {
      broken.push(title);
    }

    await sleep(500);

    if ((i + 1) % 20 === 0) {
      console.log(
        `  ${i + 1}/${entries.length} checked, ${broken.length} broken`
      );
    }
  }

  console.log(`\n${broken.length} broken covers found out of ${entries.length}`);

  if (broken.length > 0) {
    const sql = [
      "-- Clear broken record cover URLs",
      "UPDATE media SET cover_url = NULL WHERE media_type = 'record' AND title IN (",
      broken.map((t) => "  " + esc(t)).join(",\n"),
      ");",
    ];

    const outPath = resolve(__dirname, "fix-broken-covers.sql");
    writeFileSync(outPath, sql.join("\n"));
    console.log(`SQL written to ${outPath}`);
  }
}

main().catch(console.error);
