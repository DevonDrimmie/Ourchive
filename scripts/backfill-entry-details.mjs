// Generates scripts/backfill-entry-details.sql: book_entry_details (format, started_date)
// for entries that already exist in the database, using the MyTierion book CSVs.
// Run after supabase/migrations/007_typed_media.sql. Existing details rows are left untouched.
import { writeFileSync } from "fs";
import { resolve } from "path";
import { esc, readBookRows, root, sqlArr } from "./lib/tierion.mjs";

const sql = [
  "-- Ourchive book entry details generated " + new Date().toISOString(),
  "BEGIN;",
  "",
];

let count = 0;
for (const b of readBookRows()) {
  if (!b.format && !b.startDate) continue;
  count++;
  const authorMatch = b.author ? ` AND bk.authors = ${sqlArr([b.author])}` : "";
  sql.push(`-- ${b.label}: ${b.title}`);
  sql.push(
    `INSERT INTO book_entry_details (entry_id, format, started_date) ` +
      `SELECT e.id, ${esc(b.format)}, ${b.startDate ? esc(b.startDate) : "NULL"} ` +
      `FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id ` +
      `WHERE e.user_id = ${esc(b.userId)} AND m.title = ${esc(b.title)}${authorMatch} ` +
      `ON CONFLICT (entry_id) DO NOTHING;`
  );
}

sql.push("", "COMMIT;");

const output = resolve(root, "scripts/backfill-entry-details.sql");
writeFileSync(output, sql.join("\n"));
console.log(`Generated ${output} (${count} book entries with details)`);
