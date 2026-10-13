-- Typed media: each media type gets its own first-class table (movies, tv_shows,
-- books, records, games) joined 1:1 to the shared `media` identity row. Per-user
-- fields that only apply to one type live in *_entry_details tables keyed by entry.
-- Shared, cross-type fields (rating, review, status, ownership, dates) stay on entries.
--
-- media.metadata is backfilled here but left in place; 008 archives and drops it
-- once the frontend no longer reads it.

-- ---------------------------------------------------------------------------
-- New media type: game
-- ---------------------------------------------------------------------------

alter table media drop constraint media_media_type_check;
alter table media add constraint media_media_type_check
  check (media_type in ('movie', 'tv', 'book', 'record', 'game'));

alter table top_fours drop constraint top_fours_media_type_check;
alter table top_fours add constraint top_fours_media_type_check
  check (media_type in ('movie', 'tv', 'book', 'record', 'game'));

alter table rankings drop constraint rankings_media_type_check;
alter table rankings add constraint rankings_media_type_check
  check (media_type in ('movie', 'tv', 'book', 'record', 'game'));

-- Target for the composite FKs below, so a subtype row can only attach to media of its own type
alter table media add constraint media_id_media_type_key unique (id, media_type);

-- ---------------------------------------------------------------------------
-- JSON helpers (used by the backfill and by upsert_media)
-- ---------------------------------------------------------------------------

create or replace function jsonb_to_text_array(j jsonb)
returns text[] language sql immutable as $$
  select case jsonb_typeof(j)
    when 'array' then array(select jsonb_array_elements_text(j))
    when 'string' then array[j #>> '{}']
    else '{}'::text[]
  end
$$;

create or replace function jsonb_to_int(j jsonb)
returns int language sql immutable as $$
  select case when j #>> '{}' ~ '^\d+$' then (j #>> '{}')::int end
$$;

create or replace function jsonb_to_numeric(j jsonb)
returns numeric language sql immutable as $$
  select case when j #>> '{}' ~ '^\d+(\.\d+)?$' then (j #>> '{}')::numeric end
$$;

-- ---------------------------------------------------------------------------
-- Subtype tables
-- ---------------------------------------------------------------------------

create table if not exists movies (
  media_id uuid primary key,
  media_type text not null default 'movie' check (media_type = 'movie'),
  director text,
  overview text,
  runtime_minutes int check (runtime_minutes is null or runtime_minutes > 0),
  unique (media_id, media_type),
  foreign key (media_id, media_type) references media (id, media_type) on delete cascade
);

create table if not exists tv_shows (
  media_id uuid primary key,
  media_type text not null default 'tv' check (media_type = 'tv'),
  creators text[] not null default '{}',
  overview text,
  season_count int check (season_count is null or season_count >= 0),
  episode_count int check (episode_count is null or episode_count >= 0),
  unique (media_id, media_type),
  foreign key (media_id, media_type) references media (id, media_type) on delete cascade
);

create table if not exists books (
  media_id uuid primary key,
  media_type text not null default 'book' check (media_type = 'book'),
  authors text[] not null default '{}',
  isbn text,
  pages int check (pages is null or pages > 0),
  publisher text,
  unique (media_id, media_type),
  foreign key (media_id, media_type) references media (id, media_type) on delete cascade
);

create table if not exists records (
  media_id uuid primary key,
  media_type text not null default 'record' check (media_type = 'record'),
  artist text not null,
  release_type text,
  label text,
  track_count int check (track_count is null or track_count > 0),
  unique (media_id, media_type),
  foreign key (media_id, media_type) references media (id, media_type) on delete cascade
);

create table if not exists games (
  media_id uuid primary key,
  media_type text not null default 'game' check (media_type = 'game'),
  platforms text[] not null default '{}',
  developers text[] not null default '{}',
  publishers text[] not null default '{}',
  overview text,
  unique (media_id, media_type),
  foreign key (media_id, media_type) references media (id, media_type) on delete cascade
);

do $$
declare t text;
begin
  foreach t in array array['movies', 'tv_shows', 'books', 'records', 'games'] loop
    execute format('alter table %I enable row level security', t);
    execute format(
      'create policy "%s are viewable by all authenticated users" on %I for select to authenticated using (true)', t, t);
    execute format(
      'create policy "Authenticated users can insert %s" on %I for insert to authenticated with check (true)', t, t);
    execute format(
      'create policy "Authenticated users can update %s" on %I for update to authenticated using (true)', t, t);
  end loop;
end $$;

-- ---------------------------------------------------------------------------
-- Per-type entry extension tables
-- ---------------------------------------------------------------------------

create table if not exists movie_entry_details (
  entry_id uuid primary key references entries (id) on delete cascade,
  rewatch_count int not null default 0 check (rewatch_count >= 0)
);

create table if not exists tv_entry_details (
  entry_id uuid primary key references entries (id) on delete cascade,
  current_season int check (current_season is null or current_season >= 1),
  current_episode int check (current_episode is null or current_episode >= 1)
);

create table if not exists book_entry_details (
  entry_id uuid primary key references entries (id) on delete cascade,
  format text check (format in ('physical', 'ebook', 'audiobook')),
  started_date date,
  pages_read int check (pages_read is null or pages_read >= 0)
);

create table if not exists record_entry_details (
  entry_id uuid primary key references entries (id) on delete cascade,
  format text check (format in ('vinyl', 'cd', 'cassette', 'digital'))
);

create table if not exists game_entry_details (
  entry_id uuid primary key references entries (id) on delete cascade,
  platform text,
  hours_played numeric(6,1) check (hours_played is null or hours_played >= 0)
);

-- Entry details must belong to an entry whose media is of the matching type
create or replace function check_entry_details_media_type()
returns trigger language plpgsql as $$
begin
  if not exists (
    select 1 from entries e join media m on m.id = e.media_id
    where e.id = new.entry_id and m.media_type = tg_argv[0]
  ) then
    raise exception '% rows must belong to a % entry', tg_table_name, tg_argv[0];
  end if;
  return new;
end;
$$;

do $$
declare
  t text;
  types text[] := array['movie', 'tv', 'book', 'record', 'game'];
begin
  foreach t in array types loop
    execute format('alter table %I enable row level security', t || '_entry_details');
    execute format(
      'create trigger %I before insert or update on %I for each row execute function check_entry_details_media_type(%L)',
      t || '_entry_details_type_check', t || '_entry_details', t);
    execute format(
      'create policy "Entry details are viewable by all authenticated users" on %I for select to authenticated using (true)',
      t || '_entry_details');
    execute format(
      'create policy "Users can insert their own entry details" on %I for insert to authenticated
         with check (exists (select 1 from entries e where e.id = entry_id and e.user_id = auth.uid()))',
      t || '_entry_details');
    execute format(
      'create policy "Users can update their own entry details" on %I for update to authenticated
         using (exists (select 1 from entries e where e.id = entry_id and e.user_id = auth.uid()))',
      t || '_entry_details');
    execute format(
      'create policy "Users can delete their own entry details" on %I for delete to authenticated
         using (exists (select 1 from entries e where e.id = entry_id and e.user_id = auth.uid()))',
      t || '_entry_details');
  end loop;
end $$;

-- ---------------------------------------------------------------------------
-- Backfill subtype rows from media.metadata (idempotent)
-- ---------------------------------------------------------------------------

insert into movies (media_id, director, overview)
select id, nullif(metadata ->> 'director', ''), nullif(metadata ->> 'overview', '')
from media where media_type = 'movie'
on conflict (media_id) do nothing;

insert into tv_shows (media_id, creators, overview)
select id, jsonb_to_text_array(metadata -> 'creators'), nullif(metadata ->> 'overview', '')
from media where media_type = 'tv'
on conflict (media_id) do nothing;

insert into books (media_id, authors, isbn, pages)
select
  id,
  case
    when jsonb_typeof(metadata -> 'authors') in ('array', 'string') then jsonb_to_text_array(metadata -> 'authors')
    else jsonb_to_text_array(metadata -> 'author')
  end,
  nullif(metadata ->> 'isbn', ''),
  nullif(jsonb_to_int(metadata -> 'pages'), 0)
from media where media_type = 'book'
on conflict (media_id) do nothing;

insert into records (media_id, artist)
select id, coalesce(nullif(trim(metadata ->> 'artist'), ''), 'Unknown Artist')
from media where media_type = 'record'
on conflict (media_id) do nothing;

insert into games (media_id, platforms, developers, publishers, overview)
select
  id,
  jsonb_to_text_array(metadata -> 'platforms'),
  jsonb_to_text_array(metadata -> 'developers'),
  jsonb_to_text_array(metadata -> 'publishers'),
  nullif(metadata ->> 'overview', '')
from media where media_type = 'game'
on conflict (media_id) do nothing;

-- Abort (and roll back the whole migration) if any media row lacks its subtype row
do $$
declare
  r record;
  subtype_count int;
  orphans int;
begin
  for r in
    select t.media_type, t.tbl,
      (select count(*) from media m where m.media_type = t.media_type) as media_count
    from (values ('movie', 'movies'), ('tv', 'tv_shows'), ('book', 'books'),
                 ('record', 'records'), ('game', 'games')) as t (media_type, tbl)
  loop
    execute format('select count(*) from %I', r.tbl) into subtype_count;
    if subtype_count <> r.media_count then
      raise exception 'Backfill mismatch for %: media has % rows, % has %',
        r.media_type, r.media_count, r.tbl, subtype_count;
    end if;
  end loop;

  select count(*) into orphans from media m
  where not exists (select 1 from movies s where s.media_id = m.id)
    and not exists (select 1 from tv_shows s where s.media_id = m.id)
    and not exists (select 1 from books s where s.media_id = m.id)
    and not exists (select 1 from records s where s.media_id = m.id)
    and not exists (select 1 from games s where s.media_id = m.id);
  if orphans > 0 then
    raise exception 'Backfill left % media rows without a subtype row', orphans;
  end if;
end $$;

-- ---------------------------------------------------------------------------
-- upsert_media: find-or-create a media row and its subtype row atomically.
-- Existing subtype fields are kept; missing ones are filled from p_details.
-- ---------------------------------------------------------------------------

create or replace function upsert_media(p_media jsonb, p_details jsonb default '{}'::jsonb)
returns uuid
language plpgsql
security invoker
set search_path = public
as $$
declare
  v_id uuid;
  v_type text;
  v_external_id text := nullif(p_media ->> 'external_id', '');
  v_external_source text := nullif(p_media ->> 'external_source', '');
  d jsonb := coalesce(p_details, '{}'::jsonb);
begin
  if v_external_id is not null and v_external_source is not null then
    select id, media_type into v_id, v_type from media
    where external_id = v_external_id and external_source = v_external_source;
  end if;

  if v_id is null then
    v_type := p_media ->> 'media_type';
    insert into media (media_type, title, year, cover_url, genres, external_id, external_source)
    values (
      v_type,
      p_media ->> 'title',
      jsonb_to_int(p_media -> 'year'),
      nullif(p_media ->> 'cover_url', ''),
      jsonb_to_text_array(p_media -> 'genres'),
      v_external_id,
      v_external_source
    )
    on conflict (external_id, external_source)
      where external_id is not null and external_source is not null
      do nothing
    returning id into v_id;

    if v_id is null then
      select id, media_type into v_id, v_type from media
      where external_id = v_external_id and external_source = v_external_source;
    end if;
  end if;

  case v_type
    when 'movie' then
      insert into movies (media_id, director, overview, runtime_minutes)
      values (v_id, nullif(d ->> 'director', ''), nullif(d ->> 'overview', ''),
              nullif(jsonb_to_int(d -> 'runtime_minutes'), 0))
      on conflict (media_id) do update set
        director = coalesce(movies.director, excluded.director),
        overview = coalesce(movies.overview, excluded.overview),
        runtime_minutes = coalesce(movies.runtime_minutes, excluded.runtime_minutes);
    when 'tv' then
      insert into tv_shows (media_id, creators, overview, season_count, episode_count)
      values (v_id, jsonb_to_text_array(d -> 'creators'), nullif(d ->> 'overview', ''),
              jsonb_to_int(d -> 'season_count'), jsonb_to_int(d -> 'episode_count'))
      on conflict (media_id) do update set
        creators = case when cardinality(tv_shows.creators) = 0 then excluded.creators else tv_shows.creators end,
        overview = coalesce(tv_shows.overview, excluded.overview),
        season_count = coalesce(tv_shows.season_count, excluded.season_count),
        episode_count = coalesce(tv_shows.episode_count, excluded.episode_count);
    when 'book' then
      insert into books (media_id, authors, isbn, pages, publisher)
      values (v_id, jsonb_to_text_array(d -> 'authors'), nullif(d ->> 'isbn', ''),
              nullif(jsonb_to_int(d -> 'pages'), 0), nullif(d ->> 'publisher', ''))
      on conflict (media_id) do update set
        authors = case when cardinality(books.authors) = 0 then excluded.authors else books.authors end,
        isbn = coalesce(books.isbn, excluded.isbn),
        pages = coalesce(books.pages, excluded.pages),
        publisher = coalesce(books.publisher, excluded.publisher);
    when 'record' then
      insert into records (media_id, artist, release_type, label, track_count)
      values (v_id, coalesce(nullif(trim(d ->> 'artist'), ''), 'Unknown Artist'),
              nullif(d ->> 'release_type', ''), nullif(d ->> 'label', ''),
              nullif(jsonb_to_int(d -> 'track_count'), 0))
      on conflict (media_id) do update set
        artist = case when records.artist = 'Unknown Artist' then excluded.artist else records.artist end,
        release_type = coalesce(records.release_type, excluded.release_type),
        label = coalesce(records.label, excluded.label),
        track_count = coalesce(records.track_count, excluded.track_count);
    when 'game' then
      insert into games (media_id, platforms, developers, publishers, overview)
      values (v_id, jsonb_to_text_array(d -> 'platforms'), jsonb_to_text_array(d -> 'developers'),
              jsonb_to_text_array(d -> 'publishers'), nullif(d ->> 'overview', ''))
      on conflict (media_id) do update set
        platforms = case when cardinality(games.platforms) = 0 then excluded.platforms else games.platforms end,
        developers = case when cardinality(games.developers) = 0 then excluded.developers else games.developers end,
        publishers = case when cardinality(games.publishers) = 0 then excluded.publishers else games.publishers end,
        overview = coalesce(games.overview, excluded.overview);
    else
      raise exception 'Unknown media_type: %', v_type;
  end case;

  return v_id;
end;
$$;

grant execute on function upsert_media(jsonb, jsonb) to authenticated;
