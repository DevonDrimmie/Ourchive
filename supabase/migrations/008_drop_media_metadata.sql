-- Retire media.metadata now that every type has its own table (007).
-- Apply only after the frontend that reads typed details is deployed.
-- The original jsonb is kept in media_metadata_archive (service role only).

create table if not exists media_metadata_archive (
  media_id uuid primary key,
  metadata jsonb not null,
  archived_at timestamptz not null default now()
);

alter table media_metadata_archive enable row level security;

insert into media_metadata_archive (media_id, metadata)
select id, metadata from media
where metadata is not null and metadata <> '{}'::jsonb
on conflict (media_id) do nothing;

do $$
declare
  missing int;
begin
  select count(*) into missing from media m
  where m.metadata is not null and m.metadata <> '{}'::jsonb
    and not exists (select 1 from media_metadata_archive a where a.media_id = m.id);
  if missing > 0 then
    raise exception 'Archive incomplete: % media rows with metadata not archived', missing;
  end if;
end $$;

alter table media drop column metadata;
