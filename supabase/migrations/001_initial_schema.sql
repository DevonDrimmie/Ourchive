-- Profiles (extends Supabase auth.users)
create table if not exists profiles (
  id uuid references auth.users on delete cascade primary key,
  display_name text not null,
  avatar_url text
);

alter table profiles enable row level security;

create policy "Profiles are viewable by all authenticated users"
  on profiles for select
  to authenticated
  using (true);

create policy "Users can update their own profile"
  on profiles for update
  to authenticated
  using (auth.uid() = id);

-- Media (shared metadata)
create table if not exists media (
  id uuid primary key default gen_random_uuid(),
  media_type text not null check (media_type in ('movie', 'tv', 'book', 'record')),
  title text not null,
  year int,
  cover_url text,
  genres text[] default '{}',
  external_id text,
  external_source text,
  metadata jsonb default '{}',
  created_at timestamptz default now()
);

alter table media enable row level security;

create policy "Media is viewable by all authenticated users"
  on media for select
  to authenticated
  using (true);

create policy "Authenticated users can insert media"
  on media for insert
  to authenticated
  with check (true);

create policy "Authenticated users can update media"
  on media for update
  to authenticated
  using (true);

-- Unique constraint to prevent duplicate media from external sources
create unique index if not exists media_external_unique
  on media (external_id, external_source)
  where external_id is not null and external_source is not null;

-- Entries (per-user relationship with media)
create table if not exists entries (
  id uuid primary key default gen_random_uuid(),
  media_id uuid references media(id) on delete cascade not null,
  user_id uuid references profiles(id) on delete cascade not null,
  status text not null default 'want' check (status in ('want', 'consuming', 'completed')),
  owned boolean not null default false,
  rating numeric(2,1) check (rating is null or (rating >= 0.5 and rating <= 5.0)),
  review text,
  consumed_date date,
  created_at timestamptz default now(),
  updated_at timestamptz default now(),
  unique(media_id, user_id)
);

alter table entries enable row level security;

create policy "Entries are viewable by all authenticated users"
  on entries for select
  to authenticated
  using (true);

create policy "Users can insert their own entries"
  on entries for insert
  to authenticated
  with check (auth.uid() = user_id);

create policy "Users can update their own entries"
  on entries for update
  to authenticated
  using (auth.uid() = user_id);

create policy "Users can delete their own entries"
  on entries for delete
  to authenticated
  using (auth.uid() = user_id);

-- Auto-update updated_at on entries
create or replace function update_updated_at_column()
returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

create trigger entries_updated_at
  before update on entries
  for each row
  execute function update_updated_at_column();

-- Auto-create profile on signup
create or replace function handle_new_user()
returns trigger as $$
begin
  insert into public.profiles (id, display_name)
  values (new.id, coalesce(new.raw_user_meta_data->>'display_name', new.email));
  return new;
end;
$$ language plpgsql security definer;

create trigger on_auth_user_created
  after insert on auth.users
  for each row
  execute function handle_new_user();
