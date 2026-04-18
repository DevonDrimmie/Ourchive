-- Per-user ranked list of media (one ordered list per (user, media_type))
create table if not exists rankings (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references profiles(id) on delete cascade not null,
  media_type text not null check (media_type in ('movie', 'tv', 'book', 'record')),
  media_id uuid references media(id) on delete cascade not null,
  position int not null,
  updated_at timestamptz default now(),
  unique(user_id, media_type, media_id)
);

create index if not exists rankings_user_type_position_idx
  on rankings (user_id, media_type, position);

alter table rankings enable row level security;

create policy "Rankings are viewable by all authenticated users"
  on rankings for select
  to authenticated
  using (true);

create policy "Users can insert their own rankings"
  on rankings for insert
  to authenticated
  with check (auth.uid() = user_id);

create policy "Users can update their own rankings"
  on rankings for update
  to authenticated
  using (auth.uid() = user_id);

create policy "Users can delete their own rankings"
  on rankings for delete
  to authenticated
  using (auth.uid() = user_id);
