-- Migrate owned from boolean to text enum for richer ownership tracking
-- Values: none, want_to_own, physical, digital

-- Add new column
alter table entries add column ownership text not null default 'none'
  check (ownership in ('none', 'want_to_own', 'physical', 'digital'));

-- Migrate existing data
update entries set ownership = 'physical' where owned = true;
update entries set ownership = 'none' where owned = false;

-- Drop old column
alter table entries drop column owned;
