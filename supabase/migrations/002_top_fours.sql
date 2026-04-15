create table if not exists top_fours (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references profiles(id) on delete cascade not null,
  media_type text not null check (media_type in ('movie', 'tv', 'book', 'record')),
  slot int not null check (slot >= 1 and slot <= 4),
  media_id uuid references media(id) on delete cascade not null,
  unique(user_id, media_type, slot)
);

alter table top_fours enable row level security;

create policy "Top fours are viewable by all authenticated users"
  on top_fours for select
  to authenticated
  using (true);

create policy "Users can insert their own top fours"
  on top_fours for insert
  to authenticated
  with check (auth.uid() = user_id);

create policy "Users can update their own top fours"
  on top_fours for update
  to authenticated
  using (auth.uid() = user_id);

create policy "Users can delete their own top fours"
  on top_fours for delete
  to authenticated
  using (auth.uid() = user_id);
