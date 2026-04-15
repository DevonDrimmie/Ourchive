-- Add DNF (did not finish) status option
alter table entries drop constraint entries_status_check;
alter table entries add constraint entries_status_check
  check (status in ('want', 'consuming', 'completed', 'dnf'));
