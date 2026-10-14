-- 009: Remove TV as a media type; records only use Wishlist (ownership), never Backlog (status).
--
-- TV rows are copied to archived_tv_* tables (RLS on, no policies) before deletion.

-- 1. Archive TV --------------------------------------------------------------

create table archived_tv_media as
select m.*, to_jsonb(t) - 'media_id' - 'media_type' as tv_details, now() as archived_at
from media m
left join tv_shows t on t.media_id = m.id
where m.media_type = 'tv';

create table archived_tv_entries as
select e.*, to_jsonb(d) - 'entry_id' as tv_entry_details, now() as archived_at
from entries e
join media m on m.id = e.media_id
left join tv_entry_details d on d.entry_id = e.id
where m.media_type = 'tv';

create table archived_tv_top_fours as
select tf.*, now() as archived_at from top_fours tf where tf.media_type = 'tv';

create table archived_tv_rankings as
select r.*, now() as archived_at from rankings r where r.media_type = 'tv';

alter table archived_tv_media enable row level security;
alter table archived_tv_entries enable row level security;
alter table archived_tv_top_fours enable row level security;
alter table archived_tv_rankings enable row level security;

-- 2. Delete TV and drop its tables -------------------------------------------

delete from top_fours where media_type = 'tv';
delete from rankings where media_type = 'tv';
delete from media where media_type = 'tv';  -- cascades to entries, tv_shows, tv_entry_details

drop table tv_entry_details;
drop table tv_shows;

alter table media drop constraint media_media_type_check;
alter table media add constraint media_media_type_check
  check (media_type in ('movie', 'book', 'record', 'game'));

alter table top_fours drop constraint top_fours_media_type_check;
alter table top_fours add constraint top_fours_media_type_check
  check (media_type in ('movie', 'book', 'record', 'game'));

alter table rankings drop constraint rankings_media_type_check;
alter table rankings add constraint rankings_media_type_check
  check (media_type in ('movie', 'book', 'record', 'game'));

-- 3. Records: "want" means Wishlist (want_to_own), not Backlog -----------------
-- Keep updated_at as-is so these don't jump to the top of the feed.

alter table entries disable trigger entries_updated_at;

update entries e
set status = 'completed',
    ownership = case when e.ownership = 'none' then 'want_to_own' else e.ownership end
from media m
where m.id = e.media_id
  and m.media_type = 'record'
  and e.status = 'want';

alter table entries enable trigger entries_updated_at;

-- 4. upsert_media without the TV branch ----------------------------------------

create or replace function public.upsert_media(p_media jsonb, p_details jsonb DEFAULT '{}'::jsonb)
 RETURNS uuid
 LANGUAGE plpgsql
 SET search_path TO 'public'
AS $function$
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
$function$;

-- 5. Verify -------------------------------------------------------------------

do $$
begin
  if exists (select 1 from media where media_type = 'tv') then
    raise exception 'TV media still present';
  end if;
  if (select count(*) from archived_tv_media) = 0 then
    raise exception 'TV archive is empty';
  end if;
  if exists (
    select 1 from entries e join media m on m.id = e.media_id
    where m.media_type = 'record' and e.status = 'want'
  ) then
    raise exception 'Records still have Backlog status';
  end if;
end $$;
