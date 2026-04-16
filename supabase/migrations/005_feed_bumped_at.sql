-- When an entry should surface in the home feed (ordering). Only bump on meaningful
-- lifecycle changes; plain review/rating edits keep the previous value so edits
-- don't re-rank the feed. Application sets this explicitly; updated_at still tracks edits.

alter table entries add column if not exists feed_bumped_at timestamptz;

update entries set feed_bumped_at = coalesce(created_at, now()) where feed_bumped_at is null;

alter table entries alter column feed_bumped_at set default now();
alter table entries alter column feed_bumped_at set not null;
