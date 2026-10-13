-- Read-only audit to run against production before applying
-- supabase/migrations/007_typed_media.sql. Nothing here writes data.

-- Row counts per media type (007 must produce the same counts per subtype table)
select media_type, count(*) from media group by 1 order by 1;

-- Every metadata key in use, with its JSON type, per media type.
-- Any key not mapped by 007 (director, overview, authors, author, isbn, pages, artist)
-- survives only in media_metadata_archive after 008.
select media_type, k as key, jsonb_typeof(metadata -> k) as json_type, count(*)
from media, jsonb_object_keys(coalesce(metadata, '{}'::jsonb)) as k
group by 1, 2, 3
order by 1, 2, 3;

-- Records with no artist (backfilled as 'Unknown Artist')
select id, title from media
where media_type = 'record' and coalesce(metadata ->> 'artist', '') = '';

-- Books whose authors are not a JSON array (string values are wrapped; missing falls back to "author")
select id, title, metadata -> 'authors' as authors, metadata -> 'author' as author from media
where media_type = 'book' and jsonb_typeof(metadata -> 'authors') is distinct from 'array';

-- Non-integer page counts (backfilled as null)
select id, title, metadata ->> 'pages' as pages from media
where metadata ? 'pages' and metadata ->> 'pages' !~ '^\d+$';

-- Media types the new schema doesn't know about (007 would fail its check constraint)
select media_type, count(*) from media
where media_type not in ('movie', 'tv', 'book', 'record', 'game')
group by 1;
