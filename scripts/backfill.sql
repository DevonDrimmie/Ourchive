-- Ourchive backfill generated 2026-10-13T22:53:44.738Z
BEGIN;

-- Ensure profiles exist for both users
INSERT INTO profiles (id, display_name) VALUES
  ('3caf032e-8303-4cc4-a4e9-5e624afb2266', 'DM'),
  ('74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'AB')
ON CONFLICT (id) DO NOTHING;

-- ========== MOVIES ==========
-- Tampopo
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Tampopo', 1985, ARRAY['Comedy','Ramen Western']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Jūzō Itami' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2026-04-07' FROM media m WHERE m.title = 'Tampopo' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-04-07' FROM media m WHERE m.title = 'Tampopo' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Oddity
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Oddity', 2024, ARRAY['Horror','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Damian McCarthy' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2026-03-28' FROM media m WHERE m.title = 'Oddity' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-03-28' FROM media m WHERE m.title = 'Oddity' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Watermelon Woman
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Watermelon Woman', 1996, ARRAY['Comedy','Romance','Drama','LGBT+']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Cheryl Dunye' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2026-03-21' FROM media m WHERE m.title = 'The Watermelon Woman' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-03-21' FROM media m WHERE m.title = 'The Watermelon Woman' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Undertone
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Undertone', 2025, ARRAY['Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Ian Tuason' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2026-03-20' FROM media m WHERE m.title = 'Undertone' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-03-20' FROM media m WHERE m.title = 'Undertone' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Videodrome
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Videodrome', 1983, ARRAY['Body Horror','Sci-Fi']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Cronenberg' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2026-03-18' FROM media m WHERE m.title = 'Videodrome' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-03-18' FROM media m WHERE m.title = 'Videodrome' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wuthering Heights
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Wuthering Heights', 2026, ARRAY['Romance','Drama','Period']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Emerald Fennell' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2026-03-18' FROM media m WHERE m.title = 'Wuthering Heights' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-03-18' FROM media m WHERE m.title = 'Wuthering Heights' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Master
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Master', 2012, ARRAY['Drama','Psychological','Period']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Paul Thomas Anderson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2026-03-16' FROM media m WHERE m.title = 'The Master' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-03-16' FROM media m WHERE m.title = 'The Master' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- One Battle After Another
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'One Battle After Another', 2025, ARRAY['Thriller','Comedy','Action']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Paul Thomas Anderson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2026-03-03' FROM media m WHERE m.title = 'One Battle After Another' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-03-03' FROM media m WHERE m.title = 'One Battle After Another' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Thing
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Thing', 1982, ARRAY['Sci-Fi','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'John Carpenter' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2026-02-27' FROM media m WHERE m.title = 'The Thing' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-02-27' FROM media m WHERE m.title = 'The Thing' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 28 Years Later: The Bone Temple
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', '28 Years Later: The Bone Temple', 2026, ARRAY['Horror','Apocalypse/Post-apocalyptic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Nia DaCosta' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2026-02-27' FROM media m WHERE m.title = '28 Years Later: The Bone Temple' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-02-27' FROM media m WHERE m.title = '28 Years Later: The Bone Temple' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Marty Supreme
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Marty Supreme', 2025, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Josh Safdie' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2026-02-14' FROM media m WHERE m.title = 'Marty Supreme' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-02-14' FROM media m WHERE m.title = 'Marty Supreme' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Happiness
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Happiness', 1998, ARRAY['Black Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Todd Solondz' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1.5, '2026-02-10' FROM media m WHERE m.title = 'Happiness' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-02-10' FROM media m WHERE m.title = 'Happiness' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Long Walk
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Long Walk', 2025, ARRAY['Thriller','Dystopian','Survival']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Francis Lawrence' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2026-01-29' FROM media m WHERE m.title = 'The Long Walk' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-01-29' FROM media m WHERE m.title = 'The Long Walk' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Mastermind
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Mastermind', 2025, ARRAY['Drama','Heist']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kelly Reichardt' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-12-31' FROM media m WHERE m.title = 'The Mastermind' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-12-31' FROM media m WHERE m.title = 'The Mastermind' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Saint Maud
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Saint Maud', 2019, ARRAY['Psychological','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Rose Glass' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3, '2025-12-30' FROM media m WHERE m.title = 'Saint Maud' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-12-30' FROM media m WHERE m.title = 'Saint Maud' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- No Other Choice
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'No Other Choice', 2025, ARRAY['Black Comedy','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Park Chan-wook' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-12-20' FROM media m WHERE m.title = 'No Other Choice' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-12-20' FROM media m WHERE m.title = 'No Other Choice' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wake Up Dead Man
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Wake Up Dead Man', 2025, ARRAY['Whodunnit','Mystery']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Rian Johnson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3, '2025-12-18' FROM media m WHERE m.title = 'Wake Up Dead Man' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-12-18' FROM media m WHERE m.title = 'Wake Up Dead Man' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- In the Mood for Love
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'In the Mood for Love', 2000, ARRAY['Romance','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Wong Kar-wai' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-12-08' FROM media m WHERE m.title = 'In the Mood for Love' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-12-08' FROM media m WHERE m.title = 'In the Mood for Love' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- How to Shoot a Ghost
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'How to Shoot a Ghost', 2025, ARRAY['Romance','Fantasy','Surrealist']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Charlie Kaufman' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2.5, '2025-12-04' FROM media m WHERE m.title = 'How to Shoot a Ghost' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-12-04' FROM media m WHERE m.title = 'How to Shoot a Ghost' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bugonia
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Bugonia', 2025, ARRAY['Black Comedy','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Yorgos Lanthimos' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-11-30' FROM media m WHERE m.title = 'Bugonia' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-11-30' FROM media m WHERE m.title = 'Bugonia' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hard Eight
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Hard Eight', 1996, ARRAY['Crime','Neo-noir']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Paul Thomas Anderson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-11-24' FROM media m WHERE m.title = 'Hard Eight' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-11-24' FROM media m WHERE m.title = 'Hard Eight' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Secretary
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Secretary', 2002, ARRAY['Erotic','Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Steven Shainberg' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2025-11-12' FROM media m WHERE m.title = 'Secretary' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-11-12' FROM media m WHERE m.title = 'Secretary' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- M3GAN 2.0
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'M3GAN 2.0', 2025, ARRAY['Comedy','Sci-Fi','Slasher']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Gerard Johnstone' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1.5, '2025-11-11' FROM media m WHERE m.title = 'M3GAN 2.0' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-11-11' FROM media m WHERE m.title = 'M3GAN 2.0' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pulse
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Pulse', 2001, ARRAY['Horror','Supernatural','Techno-horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kiyoshi Kurosawa' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-10-30' FROM media m WHERE m.title = 'Pulse' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-10-30' FROM media m WHERE m.title = 'Pulse' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cemetery Man
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Cemetery Man', 1994, ARRAY['Black Comedy','Romance','Gothic','Surrealist']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Michele Soavi' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-10-29' FROM media m WHERE m.title = 'Cemetery Man' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-10-29' FROM media m WHERE m.title = 'Cemetery Man' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cloud
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Cloud', 2024, ARRAY['Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kiyoshi Kurosawa' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-10-15' FROM media m WHERE m.title = 'Cloud' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-10-15' FROM media m WHERE m.title = 'Cloud' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Together
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Together', 2025, ARRAY['Body Horror','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Benoît Delépine, Gustave Kervern' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-09-21' FROM media m WHERE m.title = 'Together' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-09-21' FROM media m WHERE m.title = 'Together' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Celebration
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Celebration', 1998, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Thomas Vinterberg' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2025-09-16' FROM media m WHERE m.title = 'The Celebration' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-09-16' FROM media m WHERE m.title = 'The Celebration' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mile End Kicks
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Mile End Kicks', 2025, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Chandler Levack' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-09-13' FROM media m WHERE m.title = 'Mile End Kicks' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-09-13' FROM media m WHERE m.title = 'Mile End Kicks' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Crimson Peak
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Crimson Peak', 2015, ARRAY['Gothic','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Guillermo del Toro' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-09-12' FROM media m WHERE m.title = 'Crimson Peak' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-09-12' FROM media m WHERE m.title = 'Crimson Peak' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Frankenstein
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Frankenstein', 2025, ARRAY['Gothic','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Guillermo del Toro' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2025-09-10' FROM media m WHERE m.title = 'Frankenstein' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-09-10' FROM media m WHERE m.title = 'Frankenstein' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Harold and Maud
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Harold and Maud', 1971, ARRAY['Black Comedy','Romance']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Hal Ashby' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-09-07' FROM media m WHERE m.title = 'Harold and Maud' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Harold and Maud' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sentimental Value
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Sentimental Value', 2025, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Joachim Trier' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2025-09-05' FROM media m WHERE m.title = 'Sentimental Value' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-09-05' FROM media m WHERE m.title = 'Sentimental Value' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sick of Myself
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Sick of Myself', 2022, ARRAY['Black Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kristoffer Borgli' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-09-03' FROM media m WHERE m.title = 'Sick of Myself' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-09-03' FROM media m WHERE m.title = 'Sick of Myself' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Monkey
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Monkey', 2025, ARRAY['Supernatural','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Osgood Perkins' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3, '2025-09-02' FROM media m WHERE m.title = 'The Monkey' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-09-02' FROM media m WHERE m.title = 'The Monkey' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wepons
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Wepons', 2025, ARRAY['Horror','Supernatural','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Zach Cregger' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-09-01' FROM media m WHERE m.title = 'Wepons' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-09-01' FROM media m WHERE m.title = 'Wepons' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Thursday Murder Club
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Thursday Murder Club', 2025, ARRAY['Crime','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Chris Columbus' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1.5, '2025-08-31' FROM media m WHERE m.title = 'The Thursday Murder Club' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-08-31' FROM media m WHERE m.title = 'The Thursday Murder Club' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mysterious Skin
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Mysterious Skin', 2004, ARRAY['LGBT+','Drama','Coming-of-age']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Gregg Araki' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2025-08-28' FROM media m WHERE m.title = 'Mysterious Skin' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Mysterious Skin' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 28 Years Later
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', '28 Years Later', 2025, ARRAY['Horror','Apocalypse/Post-apocalyptic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Danny Boyle' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-08-16' FROM media m WHERE m.title = '28 Years Later' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-08-16' FROM media m WHERE m.title = '28 Years Later' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Eddington
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Eddington', 2025, ARRAY['Western','Satire']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Ari Aster' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1.5, '2025-07-31' FROM media m WHERE m.title = 'Eddington' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-07-31' FROM media m WHERE m.title = 'Eddington' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Badlands
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Badlands', 1973, ARRAY['Road Movie','Crime']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Terrence Malick' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-07-26' FROM media m WHERE m.title = 'Badlands' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-07-26' FROM media m WHERE m.title = 'Badlands' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- We're All Going to the World's Fair
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'We''re All Going to the World''s Fair', 2021, ARRAY['Coming-of-age','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Jane Schoenbrun' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-07-23' FROM media m WHERE m.title = 'We''re All Going to the World''s Fair' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-07-23' FROM media m WHERE m.title = 'We''re All Going to the World''s Fair' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- When Evil Lurks
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'When Evil Lurks', 2023, ARRAY['Supernatural','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Demián Rugna' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-07-19' FROM media m WHERE m.title = 'When Evil Lurks' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-07-19' FROM media m WHERE m.title = 'When Evil Lurks' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bring Her Back
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Bring Her Back', 2025, ARRAY['Horror','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Danny & Michael Philippou' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-07-19' FROM media m WHERE m.title = 'Bring Her Back' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-07-19' FROM media m WHERE m.title = 'Bring Her Back' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Memento
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Memento', 2000, ARRAY['Neo-noir','Mystery']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Christopher Nolan' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2025-07-18' FROM media m WHERE m.title = 'Memento' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Memento' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pet Sematary
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Pet Sematary', 1989, ARRAY['Horror','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Mary Lambert' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-07-05' FROM media m WHERE m.title = 'Pet Sematary' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Pet Sematary' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Erin Brockovich
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Erin Brockovich', 2000, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Steven Soderbergh' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-06-29' FROM media m WHERE m.title = 'Erin Brockovich' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-06-29' FROM media m WHERE m.title = 'Erin Brockovich' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 28 Days Later
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', '28 Days Later', 2002, ARRAY['Horror','Apocalypse/Post-apocalyptic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Danny Boyle' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-06-29' FROM media m WHERE m.title = '28 Days Later' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-06-29' FROM media m WHERE m.title = '28 Days Later' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dogma
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Dogma', 1999, ARRAY['Satire','Comedy','Fantasy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kevin Smith' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-06-09' FROM media m WHERE m.title = 'Dogma' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-06-09' FROM media m WHERE m.title = 'Dogma' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Hunger
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Hunger', 1993, ARRAY['Horror','Gothic','Erotic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Tony Scott' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-06-06' FROM media m WHERE m.title = 'The Hunger' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-06-06' FROM media m WHERE m.title = 'The Hunger' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Party Girl
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Party Girl', 1995, ARRAY['Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Daisy von Scherler Mayer' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-06-05' FROM media m WHERE m.title = 'Party Girl' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-06-05' FROM media m WHERE m.title = 'Party Girl' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Paddington in Peru
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Paddington in Peru', 2024, ARRAY['Adventure']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Dougal Wilson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-06-05' FROM media m WHERE m.title = 'Paddington in Peru' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-06-05' FROM media m WHERE m.title = 'Paddington in Peru' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mickey 17
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Mickey 17', 2025, ARRAY['Comedy','Sci-Fi']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Bong Joon-ho' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-05-31' FROM media m WHERE m.title = 'Mickey 17' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-05-31' FROM media m WHERE m.title = 'Mickey 17' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Friendship
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Friendship', 2024, ARRAY['Comedy','Satire']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Andrew DeYoung' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-05-29' FROM media m WHERE m.title = 'Friendship' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-05-29' FROM media m WHERE m.title = 'Friendship' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Blink Twice
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Blink Twice', 2024, ARRAY['Psychological','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Zoë Kravitz' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-05-27' FROM media m WHERE m.title = 'Blink Twice' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-05-27' FROM media m WHERE m.title = 'Blink Twice' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Shepherds
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Shepherds', 2024, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Sophie Deraspe' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-05-09' FROM media m WHERE m.title = 'Shepherds' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-05-09' FROM media m WHERE m.title = 'Shepherds' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Saturday Night
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Saturday Night', 2024, ARRAY['Comedy','Biopic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Jason Reitman' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-04-19' FROM media m WHERE m.title = 'Saturday Night' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Saturday Night' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Heretic
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Heretic', 2024, ARRAY['Psychological','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Scott Beck, Bryan Woods' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-04-04' FROM media m WHERE m.title = 'Heretic' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-04-04' FROM media m WHERE m.title = 'Heretic' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Sweet East
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Sweet East', 2023, ARRAY['Satire','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Sean Price Williams' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-04-03' FROM media m WHERE m.title = 'The Sweet East' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-04-03' FROM media m WHERE m.title = 'The Sweet East' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A Real Pain
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'A Real Pain', 2024, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Jesse Eisenberg' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2025-02-28' FROM media m WHERE m.title = 'A Real Pain' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-02-28' FROM media m WHERE m.title = 'A Real Pain' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Companion
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Companion', 2025, ARRAY['Sci-Fi','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Drew Hancock' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3, '2025-02-20' FROM media m WHERE m.title = 'Companion' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-02-20' FROM media m WHERE m.title = 'Companion' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Days of Heaven
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Days of Heaven', 1978, ARRAY['Romance','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Terrence Malick' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3, '2025-02-12' FROM media m WHERE m.title = 'Days of Heaven' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-02-12' FROM media m WHERE m.title = 'Days of Heaven' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sometimes I Think About Dying
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Sometimes I Think About Dying', 2023, ARRAY['Comedy','Drama','Surrealist']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Rachel Lambert' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-02-12' FROM media m WHERE m.title = 'Sometimes I Think About Dying' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-02-12' FROM media m WHERE m.title = 'Sometimes I Think About Dying' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Presence
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Presence', 2024, ARRAY['Psychological','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Steven Soderbergh' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-02-03' FROM media m WHERE m.title = 'Presence' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-02-03' FROM media m WHERE m.title = 'Presence' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cube
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Cube', 1997, ARRAY['Sci-Fi','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Vincenzo Natali' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2025-02-01' FROM media m WHERE m.title = 'Cube' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-02-01' FROM media m WHERE m.title = 'Cube' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Adaptation
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Adaptation', 2002, ARRAY['Comedy','Meta']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Spike Jonze' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2025-01-28' FROM media m WHERE m.title = 'Adaptation' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-01-28' FROM media m WHERE m.title = 'Adaptation' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- My Bloody Valentine
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'My Bloody Valentine', 1981, ARRAY['Horror','Slasher']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'George Mihalka' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-01-24' FROM media m WHERE m.title = 'My Bloody Valentine' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-01-24' FROM media m WHERE m.title = 'My Bloody Valentine' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Radio Rebel
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Radio Rebel', 2012, ARRAY['Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Peter Howitt' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 0.5, '2025-01-24' FROM media m WHERE m.title = 'Radio Rebel' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Radio Rebel' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Evil Does Not Exist
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Evil Does Not Exist', 2023, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Ryusuke Hamaguchi' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2025-01-23' FROM media m WHERE m.title = 'Evil Does Not Exist' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-01-23' FROM media m WHERE m.title = 'Evil Does Not Exist' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nosferatu
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Nosferatu', 2024, ARRAY['Gothic','Horror','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Robert Eggers' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2025-01-08' FROM media m WHERE m.title = 'Nosferatu' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-01-08' FROM media m WHERE m.title = 'Nosferatu' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Climax
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Climax', 2018, ARRAY['Music','Horror','Psychological']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Gaspar Noé' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-12-29' FROM media m WHERE m.title = 'Climax' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-12-29' FROM media m WHERE m.title = 'Climax' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Queer
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Queer', 2024, ARRAY['Drama','LGBT+','Period']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Luca Guadagnino' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-12-21' FROM media m WHERE m.title = 'Queer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-12-21' FROM media m WHERE m.title = 'Queer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Beetlejuice
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Beetlejuice', 1988, ARRAY['Horror','Comedy','Gothic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Tim Burton' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-12-18' FROM media m WHERE m.title = 'Beetlejuice' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-12-18' FROM media m WHERE m.title = 'Beetlejuice' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Anora
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Anora', 2024, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Sean Baker' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-12-17' FROM media m WHERE m.title = 'Anora' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-12-17' FROM media m WHERE m.title = 'Anora' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cyberbully
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Cyberbully', 2011, ARRAY['Drama','Coming-of-age']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Charles Binamé' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2024-12-11' FROM media m WHERE m.title = 'Cyberbully' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Cyberbully' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Love, Actually
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Love, Actually', 2003, ARRAY['Romance','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Richard Curtis' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1, '2024-12-08' FROM media m WHERE m.title = 'Love, Actually' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-12-08' FROM media m WHERE m.title = 'Love, Actually' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ju-on: The Grudge
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Ju-on: The Grudge', 2002, ARRAY['Horror','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Takashi Shimizu' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-12-05' FROM media m WHERE m.title = 'Ju-on: The Grudge' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-12-05' FROM media m WHERE m.title = 'Ju-on: The Grudge' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Wild Robot
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Wild Robot', 2024, ARRAY['Animated','Sci-Fi']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Chris Sanders' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-12-02' FROM media m WHERE m.title = 'The Wild Robot' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-12-02' FROM media m WHERE m.title = 'The Wild Robot' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Time Cut
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Time Cut', 2024, ARRAY['Sci-Fi','Slasher']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Hannah Macpherson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1, '2024-11-06' FROM media m WHERE m.title = 'Time Cut' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Time Cut' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Terrifier 3
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Terrifier 3', 2024, ARRAY['Slasher']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Damien Leone' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-10-30' FROM media m WHERE m.title = 'Terrifier 3' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-10-30' FROM media m WHERE m.title = 'Terrifier 3' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Fog
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Fog', 1980, ARRAY['Horror','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'John Carpenter' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-10-25' FROM media m WHERE m.title = 'The Fog' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-10-25' FROM media m WHERE m.title = 'The Fog' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- House
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'House', 1977, ARRAY['Horror','Comedy','Experimental']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Nobuhiko Obayashi' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2024-10-24' FROM media m WHERE m.title = 'House' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-10-24' FROM media m WHERE m.title = 'House' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dark Water
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Dark Water', 2002, ARRAY['Supernatural','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Hideo Nakata' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-10-23' FROM media m WHERE m.title = 'Dark Water' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-10-23' FROM media m WHERE m.title = 'Dark Water' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Woman of the Hour
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Woman of the Hour', 2023, ARRAY['Psychological','Crime','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Anna Kendrick' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2.5, '2024-10-21' FROM media m WHERE m.title = 'Woman of the Hour' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-10-21' FROM media m WHERE m.title = 'Woman of the Hour' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cuckoo
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Cuckoo', 2024, ARRAY['Horror','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Tilman Singer' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2024-10-21' FROM media m WHERE m.title = 'Cuckoo' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-10-21' FROM media m WHERE m.title = 'Cuckoo' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Texas Chainsaw Massacre
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Texas Chainsaw Massacre', 1974, ARRAY['Horror','Slasher']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Tobe Hooper' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-10-09' FROM media m WHERE m.title = 'The Texas Chainsaw Massacre' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-10-09' FROM media m WHERE m.title = 'The Texas Chainsaw Massacre' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Megalopolis
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Megalopolis', 2024, ARRAY['Sci-Fi','Epic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Francis Ford Coppola' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1, '2024-10-09' FROM media m WHERE m.title = 'Megalopolis' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-10-09' FROM media m WHERE m.title = 'Megalopolis' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Creepy
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Creepy', 2016, ARRAY['Mystery','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kiyoshi Kurosawa' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-10-03' FROM media m WHERE m.title = 'Creepy' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-10-03' FROM media m WHERE m.title = 'Creepy' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- It Ends with Us
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'It Ends with Us', 2024, ARRAY['Romance','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Justin Baldoni' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1.5, '2024-10-01' FROM media m WHERE m.title = 'It Ends with Us' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'It Ends with Us' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Only the River Flows
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Only the River Flows', 2023, ARRAY['Neo-noir']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Wei Shujun' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-09-29' FROM media m WHERE m.title = 'Only the River Flows' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-09-29' FROM media m WHERE m.title = 'Only the River Flows' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Substance
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Substance', 2024, ARRAY['Body Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Coralie Fargeat' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-09-28' FROM media m WHERE m.title = 'The Substance' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-09-28' FROM media m WHERE m.title = 'The Substance' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Uglies
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Uglies', 2024, ARRAY['Dystopian','Sci-Fi']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'McG' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1, '2024-09-15' FROM media m WHERE m.title = 'Uglies' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Uglies' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Life of Chuck
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Life of Chuck', 2024, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Mike Flanagan' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2024-09-13' FROM media m WHERE m.title = 'The Life of Chuck' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-09-13' FROM media m WHERE m.title = 'The Life of Chuck' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Good Time
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Good Time', 2017, ARRAY['Crime','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Josh & Benny Safdie' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-09-05' FROM media m WHERE m.title = 'Good Time' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-09-05' FROM media m WHERE m.title = 'Good Time' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wild at Heart
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Wild at Heart', 1990, ARRAY['Neo-noir','Road Movie']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Lynch' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-08-28' FROM media m WHERE m.title = 'Wild at Heart' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-28' FROM media m WHERE m.title = 'Wild at Heart' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Challenger
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Challenger', 2024, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Luca Guadagnino' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-08-27' FROM media m WHERE m.title = 'Challenger' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-27' FROM media m WHERE m.title = 'Challenger' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Immaculate
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Immaculate', 2024, ARRAY['Psychological','Horror','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Michael Mohan' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3, '2024-08-21' FROM media m WHERE m.title = 'Immaculate' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-21' FROM media m WHERE m.title = 'Immaculate' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Alien: Romulus
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Alien: Romulus', 2024, ARRAY['Sci-Fi','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Fede Álvarez' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-08-21' FROM media m WHERE m.title = 'Alien: Romulus' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-21' FROM media m WHERE m.title = 'Alien: Romulus' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Perfect Days
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Perfect Days', 2023, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Wim Wenders' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-08-19' FROM media m WHERE m.title = 'Perfect Days' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-19' FROM media m WHERE m.title = 'Perfect Days' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bottle Rocket
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Bottle Rocket', 1996, ARRAY['Comedy','Crime']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Wes Anderson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2.5, '2024-08-15' FROM media m WHERE m.title = 'Bottle Rocket' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-15' FROM media m WHERE m.title = 'Bottle Rocket' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Aliens
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Aliens', 1986, ARRAY['Sci-Fi','Action']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'James Cameron' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-08-14' FROM media m WHERE m.title = 'Aliens' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-14' FROM media m WHERE m.title = 'Aliens' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pecker
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Pecker', 1998, ARRAY['Comedy','LGBT+']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'John Waters' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3, '2024-08-12' FROM media m WHERE m.title = 'Pecker' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-12' FROM media m WHERE m.title = 'Pecker' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Alien
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Alien', 1979, ARRAY['Horror','Sci-Fi']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Ridley Scott' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-08-10' FROM media m WHERE m.title = 'Alien' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-10' FROM media m WHERE m.title = 'Alien' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- An American Werewolf in London
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'An American Werewolf in London', 1981, ARRAY['Horror','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'John Landis' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-08-10' FROM media m WHERE m.title = 'An American Werewolf in London' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-10' FROM media m WHERE m.title = 'An American Werewolf in London' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Beau Travail
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Beau Travail', 1999, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Claire Denis' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-08-10' FROM media m WHERE m.title = 'Beau Travail' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-10' FROM media m WHERE m.title = 'Beau Travail' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- MaXXXine
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'MaXXXine', 2024, ARRAY['Slasher']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Ti West' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-08-09' FROM media m WHERE m.title = 'MaXXXine' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-09' FROM media m WHERE m.title = 'MaXXXine' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Paris, Texas
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Paris, Texas', 1984, ARRAY['Road Movie','Drama','Indie']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Wim Wenders' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2024-08-05' FROM media m WHERE m.title = 'Paris, Texas' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-05' FROM media m WHERE m.title = 'Paris, Texas' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I Still Know What You Did Last Summer
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'I Still Know What You Did Last Summer', 1998, ARRAY['Slasher']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Danny Cannon' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2024-08-05' FROM media m WHERE m.title = 'I Still Know What You Did Last Summer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-05' FROM media m WHERE m.title = 'I Still Know What You Did Last Summer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I Know What You Did Last Summer
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'I Know What You Did Last Summer', 1997, ARRAY['Slasher']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Jim Gillespie' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-08-04' FROM media m WHERE m.title = 'I Know What You Did Last Summer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-04' FROM media m WHERE m.title = 'I Know What You Did Last Summer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Airplane!
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Airplane!', 1980, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Zucker, Jim Abrahams, Jerry Zucker' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-07-29' FROM media m WHERE m.title = 'Airplane!' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-07-29' FROM media m WHERE m.title = 'Airplane!' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ginger Snaps
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Ginger Snaps', 2000, ARRAY['Horror','Supernatural','Fantasy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'John Fawcett' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-07-28' FROM media m WHERE m.title = 'Ginger Snaps' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-07-28' FROM media m WHERE m.title = 'Ginger Snaps' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Fargo
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Fargo', 1996, ARRAY['Black Comedy','Crime']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Joel & Ethan Coen' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2024-07-24' FROM media m WHERE m.title = 'Fargo' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-07-24' FROM media m WHERE m.title = 'Fargo' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Longlegs
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Longlegs', 2024, ARRAY['Supernatural','Horror','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Osgood Perkins' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-07-19' FROM media m WHERE m.title = 'Longlegs' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-07-19' FROM media m WHERE m.title = 'Longlegs' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Vanishing
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Vanishing', 1988, ARRAY['Thriller','Psychological']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'George Sluizer' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-07-18' FROM media m WHERE m.title = 'The Vanishing' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-07-18' FROM media m WHERE m.title = 'The Vanishing' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Skinamarink
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Skinamarink', 2022, ARRAY['Horror','Suspence']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kyle Edward Ball' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 0.5, '2024-07-18' FROM media m WHERE m.title = 'Skinamarink' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-07-18' FROM media m WHERE m.title = 'Skinamarink' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Jaws
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Jaws', 1975, ARRAY['Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Steven Spielberg' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-07-13' FROM media m WHERE m.title = 'Jaws' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Jaws' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dealth Becomes Her
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Dealth Becomes Her', 1992, ARRAY['Black Comedy','Fantasy','Surrealist']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Robert Zemeckis' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-07-12' FROM media m WHERE m.title = 'Dealth Becomes Her' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Dealth Becomes Her' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nowhere
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Nowhere', 1997, ARRAY['Black Comedy','LGBT+']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Gregg Araki' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-07-12' FROM media m WHERE m.title = 'Nowhere' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Nowhere' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Posession
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Posession', 1981, ARRAY['Horror','Psychological']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Andrzej Żuławski' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-07-06' FROM media m WHERE m.title = 'Posession' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-07-06' FROM media m WHERE m.title = 'Posession' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pearl
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Pearl', 2022, ARRAY['Horror','Slasher','Psychological']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Ti West' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-07-05' FROM media m WHERE m.title = 'Pearl' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-07-05' FROM media m WHERE m.title = 'Pearl' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- X
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'X', 2022, ARRAY['Slasher']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Ti West' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-07-05' FROM media m WHERE m.title = 'X' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-07-05' FROM media m WHERE m.title = 'X' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Exhuma
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Exhuma', 2024, ARRAY['Supernatural','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Jang Jae-hyun' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-06-30' FROM media m WHERE m.title = 'Exhuma' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-06-30' FROM media m WHERE m.title = 'Exhuma' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- But I'm a Cheerleader
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'But I''m a Cheerleader', 1999, ARRAY['Comedy','LGBT+','Satire']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Jamie Babbit' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-06-29' FROM media m WHERE m.title = 'But I''m a Cheerleader' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'But I''m a Cheerleader' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Kinds of Kindness
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Kinds of Kindness', 2024, ARRAY['Black Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Yorgos Lanthimos' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-06-27' FROM media m WHERE m.title = 'Kinds of Kindness' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-06-27' FROM media m WHERE m.title = 'Kinds of Kindness' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I Use to Be Funny
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'I Use to Be Funny', 2023, ARRAY['Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Ally Pankiw' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-06-25' FROM media m WHERE m.title = 'I Use to Be Funny' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-06-25' FROM media m WHERE m.title = 'I Use to Be Funny' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- After Hours
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'After Hours', 1985, ARRAY['Surrealist','Neo-noir','Black Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Martin Scorsese' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2024-06-19' FROM media m WHERE m.title = 'After Hours' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'After Hours' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Late Night with the Devil
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Late Night with the Devil', 2023, ARRAY['Horror','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Cameron & Colin Cairnes' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3, '2024-06-15' FROM media m WHERE m.title = 'Late Night with the Devil' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-06-15' FROM media m WHERE m.title = 'Late Night with the Devil' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I Saw the TV Glow
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'I Saw the TV Glow', 2024, ARRAY['Horror','Drama','LGBT+']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Jane Schoenbrun' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-06-08' FROM media m WHERE m.title = 'I Saw the TV Glow' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-06-08' FROM media m WHERE m.title = 'I Saw the TV Glow' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mean Girls
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Mean Girls', 2024, ARRAY['Music','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Samantha Jayne, Arturo Perez Jr.' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2.5, '2024-06-04' FROM media m WHERE m.title = 'Mean Girls' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Mean Girls' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lisa Frankenstein
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Lisa Frankenstein', 2024, ARRAY['Comedy','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Zelda Williams' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3, '2024-06-03' FROM media m WHERE m.title = 'Lisa Frankenstein' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Lisa Frankenstein' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Decision to Leave
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Decision to Leave', 2022, ARRAY['Mystery','Romance','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Park Chan-wook' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-05-31' FROM media m WHERE m.title = 'Decision to Leave' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-05-31' FROM media m WHERE m.title = 'Decision to Leave' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Past Lives
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Past Lives', 2023, ARRAY['Drama','Romance']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Celine Song' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-05-31' FROM media m WHERE m.title = 'Past Lives' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-05-31' FROM media m WHERE m.title = 'Past Lives' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Battle Royal
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Battle Royal', 2000, ARRAY['Action','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kinji Fukasaku' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-05-30' FROM media m WHERE m.title = 'Battle Royal' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-05-30' FROM media m WHERE m.title = 'Battle Royal' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Godzilla Minus One
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Godzilla Minus One', 2023, ARRAY['Kaiju','Sci-Fi','Action']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Takashi Yamazaki' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-05-29' FROM media m WHERE m.title = 'Godzilla Minus One' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-05-29' FROM media m WHERE m.title = 'Godzilla Minus One' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Idea of You
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Idea of You', 2024, ARRAY['Romance','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Michael Showalter' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-05-01' FROM media m WHERE m.title = 'The Idea of You' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Idea of You' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Anyone But You
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Anyone But You', 2023, ARRAY['Romance','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Will Gluck' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 0.5, '2024-04-28' FROM media m WHERE m.title = 'Anyone But You' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-04-28' FROM media m WHERE m.title = 'Anyone But You' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Love Lies Bleeding
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Love Lies Bleeding', 2024, ARRAY['Romance','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Rose Glass' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-04-18' FROM media m WHERE m.title = 'Love Lies Bleeding' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-04-18' FROM media m WHERE m.title = 'Love Lies Bleeding' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Madame Web
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Madame Web', 2024, ARRAY['Action','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'S.J. Clarkson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2024-04-14' FROM media m WHERE m.title = 'Madame Web' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-04-14' FROM media m WHERE m.title = 'Madame Web' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Turtles All the Way Down
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Turtles All the Way Down', 2024, ARRAY['Drama','Romance']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Hannah Marks' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-04-09' FROM media m WHERE m.title = 'Turtles All the Way Down' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-04-09' FROM media m WHERE m.title = 'Turtles All the Way Down' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Drive My Car
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Drive My Car', 2021, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Ryusuke Hamaguchi' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-03-12' FROM media m WHERE m.title = 'Drive My Car' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-03-12' FROM media m WHERE m.title = 'Drive My Car' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dune: Part 2
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Dune: Part 2', 2024, ARRAY['Sci-Fi','Adventure','Space Opera']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Denis Villeneuve' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-03-08' FROM media m WHERE m.title = 'Dune: Part 2' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-03-08' FROM media m WHERE m.title = 'Dune: Part 2' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Worst Person in the World
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Worst Person in the World', 2021, ARRAY['Romance','Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Joachim Trier' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-03-08' FROM media m WHERE m.title = 'Worst Person in the World' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-03-08' FROM media m WHERE m.title = 'Worst Person in the World' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Poor Things
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Poor Things', 2023, ARRAY['Black Comedy','Steampunk']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Yorgos Lanthimos' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-03-03' FROM media m WHERE m.title = 'Poor Things' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-03-03' FROM media m WHERE m.title = 'Poor Things' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Synecdoche, New York
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Synecdoche, New York', 2008, ARRAY['Psychological','Drama','Meta']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Charlie Kaufman' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-02-27' FROM media m WHERE m.title = 'Synecdoche, New York' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-02-27' FROM media m WHERE m.title = 'Synecdoche, New York' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Fallen Angels
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Fallen Angels', 1995, ARRAY['Crime','Romance','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Wong Kar-wai' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-02-20' FROM media m WHERE m.title = 'Fallen Angels' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-02-20' FROM media m WHERE m.title = 'Fallen Angels' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dreams
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Dreams', 1990, ARRAY['Fantasy','Anthology']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Akira Kurosawa' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-02-16' FROM media m WHERE m.title = 'Dreams' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', 4.5, '2024-02-16' FROM media m WHERE m.title = 'Dreams' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Twilight Saga: New Moon
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Twilight Saga: New Moon', 2009, ARRAY['Fantasy','Romance']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Chris Weitz' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2024-02-09' FROM media m WHERE m.title = 'Twilight Saga: New Moon' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-02-09' FROM media m WHERE m.title = 'Twilight Saga: New Moon' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- American Fiction
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'American Fiction', 2023, ARRAY['Satire','Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Cord Jefferson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-02-08' FROM media m WHERE m.title = 'American Fiction' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-02-08' FROM media m WHERE m.title = 'American Fiction' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Fallen Leaves
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Fallen Leaves', 2023, ARRAY['Romance','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Aki Kaurismäki' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2024-02-06' FROM media m WHERE m.title = 'Fallen Leaves' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-02-06' FROM media m WHERE m.title = 'Fallen Leaves' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Society of the Snow
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Society of the Snow', 2023, ARRAY['Drama','Survival']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'J.A. Bayona' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-01-29' FROM media m WHERE m.title = 'Society of the Snow' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-01-29' FROM media m WHERE m.title = 'Society of the Snow' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A Charlie Brown Christmas
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'A Charlie Brown Christmas', 1965, ARRAY['Animated']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Bill Melendez' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2024-01-27' FROM media m WHERE m.title = 'A Charlie Brown Christmas' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-01-27' FROM media m WHERE m.title = 'A Charlie Brown Christmas' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Barbie
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Barbie', 2023, ARRAY['Fantasy','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Greta Gerwig' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-01-24' FROM media m WHERE m.title = 'Barbie' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-01-24' FROM media m WHERE m.title = 'Barbie' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dumb Money
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Dumb Money', 2023, ARRAY['Comedy','Biopic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Craig Gillespie' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-01-24' FROM media m WHERE m.title = 'Dumb Money' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-01-24' FROM media m WHERE m.title = 'Dumb Money' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- May December
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'May December', 2023, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Todd Haynes' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-01-20' FROM media m WHERE m.title = 'May December' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-01-20' FROM media m WHERE m.title = 'May December' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Chungking Express
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Chungking Express', 1994, ARRAY['Romance','Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Wong Kar-wai' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-01-16' FROM media m WHERE m.title = 'Chungking Express' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-01-16' FROM media m WHERE m.title = 'Chungking Express' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Curse (TV)
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Curse (TV)', 2023, ARRAY['Drama','Black Comedy','Satire']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Nathan Fielder, Benny Safdie' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2024-01-14' FROM media m WHERE m.title = 'The Curse (TV)' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-01-14' FROM media m WHERE m.title = 'The Curse (TV)' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Aftersun
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Aftersun', 2022, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Charlotte Wells' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2024-01-08' FROM media m WHERE m.title = 'Aftersun' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-01-08' FROM media m WHERE m.title = 'Aftersun' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Killing of a Sacred Deer
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Killing of a Sacred Deer', 2017, ARRAY['Psychological','Thriller','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Yorgos Lanthimos' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2.5, '2024-01-07' FROM media m WHERE m.title = 'The Killing of a Sacred Deer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-01-07' FROM media m WHERE m.title = 'The Killing of a Sacred Deer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Boy and the Heron
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Boy and the Heron', 2023, ARRAY['Fantasy','Animated']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Hayao Miyazaki' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2024-01-03' FROM media m WHERE m.title = 'The Boy and the Heron' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-01-03' FROM media m WHERE m.title = 'The Boy and the Heron' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Holdovers
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Holdovers', 2023, ARRAY['Drama','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Alexander Payne' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2023-12-26' FROM media m WHERE m.title = 'The Holdovers' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-12-26' FROM media m WHERE m.title = 'The Holdovers' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dream Scenario
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Dream Scenario', 2023, ARRAY['Black Comedy','Fantasy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kristoffer Borgli' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2023-12-15' FROM media m WHERE m.title = 'Dream Scenario' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-12-15' FROM media m WHERE m.title = 'Dream Scenario' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Call Me By Your Name
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Call Me By Your Name', 2017, ARRAY['Drama','Romance']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Luca Guadagnino' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2023-11-15' FROM media m WHERE m.title = 'Call Me By Your Name' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', 3.5, '2023-11-15' FROM media m WHERE m.title = 'Call Me By Your Name' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Minari
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Minari', 2020, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Lee Isaac Chung' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2023-11-15' FROM media m WHERE m.title = 'Minari' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-11-15' FROM media m WHERE m.title = 'Minari' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Anatomy of a Fall
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Anatomy of a Fall', 2023, ARRAY['Thriller','Drama','Legal']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Justine Triet' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2023-11-04' FROM media m WHERE m.title = 'Anatomy of a Fall' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-11-04' FROM media m WHERE m.title = 'Anatomy of a Fall' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Oldboy
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Oldboy', 2003, ARRAY['Action','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Park Chan-wook' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2023-10-30' FROM media m WHERE m.title = 'Oldboy' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-10-30' FROM media m WHERE m.title = 'Oldboy' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Goodnight Mommy
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Goodnight Mommy', 2014, ARRAY['Psychological','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Severin Fiala, Veronika Franz' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2023-10-23' FROM media m WHERE m.title = 'Goodnight Mommy' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-10-23' FROM media m WHERE m.title = 'Goodnight Mommy' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- All Hallows' Eve
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'All Hallows'' Eve', 2013, ARRAY['Horror','Anthology']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Damien Leone' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3, '2023-10-21' FROM media m WHERE m.title = 'All Hallows'' Eve' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-10-21' FROM media m WHERE m.title = 'All Hallows'' Eve' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Humanist Vampire Seeking Consenting Suicidal Person
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Humanist Vampire Seeking Consenting Suicidal Person', 2023, ARRAY['Horror','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Emma Seligman' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2023-10-17' FROM media m WHERE m.title = 'Humanist Vampire Seeking Consenting Suicidal Person' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-10-17' FROM media m WHERE m.title = 'Humanist Vampire Seeking Consenting Suicidal Person' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Eileen
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Eileen', 2023, ARRAY['Thriller','Psychological']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'William Oldroyd' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3, '2023-10-14' FROM media m WHERE m.title = 'Eileen' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-10-14' FROM media m WHERE m.title = 'Eileen' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Akira
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Akira', 1988, ARRAY['Cyberpunk','Anime']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Katsuhiro Otomo' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2023-10-07' FROM media m WHERE m.title = 'Akira' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', 3.5, '2023-10-07' FROM media m WHERE m.title = 'Akira' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Handmaiden
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Handmaiden', 2016, ARRAY['Thriller','Romance']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Park Chan-wook' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2023-10-07' FROM media m WHERE m.title = 'The Handmaiden' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-10-07' FROM media m WHERE m.title = 'The Handmaiden' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bottoms
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Bottoms', 2023, ARRAY['Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Emma Seligman' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2023-10-05' FROM media m WHERE m.title = 'Bottoms' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-10-05' FROM media m WHERE m.title = 'Bottoms' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Terrifier 2
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Terrifier 2', 2022, ARRAY['Slasher']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Damien Leone' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2023-09-30' FROM media m WHERE m.title = 'Terrifier 2' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-09-30' FROM media m WHERE m.title = 'Terrifier 2' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Blackberry
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Blackberry', 2023, ARRAY['Comedy','Biopic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Matthew Johnson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4.5, '2023-09-21' FROM media m WHERE m.title = 'Blackberry' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-09-21' FROM media m WHERE m.title = 'Blackberry' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Starship Trooper
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Starship Trooper', 1997, ARRAY['Sci-Fi','Action','Satire']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Paul Verhoeven' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2023-09-20' FROM media m WHERE m.title = 'Starship Trooper' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-09-20' FROM media m WHERE m.title = 'Starship Trooper' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Malignant
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Malignant', 2021, ARRAY['Horror','Thriller','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'James Wan' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2023-09-16' FROM media m WHERE m.title = 'Malignant' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-09-16' FROM media m WHERE m.title = 'Malignant' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mimang
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Mimang', 2023, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kim Tae-yang' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3, '2023-09-15' FROM media m WHERE m.title = 'Mimang' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-09-15' FROM media m WHERE m.title = 'Mimang' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Boy Kills World
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Boy Kills World', 2023, ARRAY['Action','Thriller','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Moritz Mohr' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2023-09-11' FROM media m WHERE m.title = 'Boy Kills World' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-09-11' FROM media m WHERE m.title = 'Boy Kills World' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hell of a Summer
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Hell of a Summer', 2023, ARRAY['Horror','Comedy','Slasher']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Finn Wolfhard, Billy Bryk' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2023-09-11' FROM media m WHERE m.title = 'Hell of a Summer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-09-11' FROM media m WHERE m.title = 'Hell of a Summer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Saltburn
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Saltburn', 2023, ARRAY['Thriller','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Emerald Fennell' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 3.5, '2023-08-11' FROM media m WHERE m.title = 'Saltburn' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-08-11' FROM media m WHERE m.title = 'Saltburn' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sorry to Bother You
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Sorry to Bother You', 2018, ARRAY['Black Comedy','Sci-Fi']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Boots Riley' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 4, '2023-07-03' FROM media m WHERE m.title = 'Sorry to Bother You' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-07-03' FROM media m WHERE m.title = 'Sorry to Bother You' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Fantastic Mr. Fox
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Fantastic Mr. Fox', 2009, ARRAY['Comedy','Animated']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Wes Anderson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2023-06-29' FROM media m WHERE m.title = 'Fantastic Mr. Fox' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-06-29' FROM media m WHERE m.title = 'Fantastic Mr. Fox' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Banshees of Inisherin
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Banshees of Inisherin', 2022, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Martin McDonagh' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2023-01-18' FROM media m WHERE m.title = 'Banshees of Inisherin' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-01-18' FROM media m WHERE m.title = 'Banshees of Inisherin' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Twin Peaks: Fire Walk With Me
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Twin Peaks: Fire Walk With Me', 1992, ARRAY['Horror','Crime']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Lynch' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 5, '2022-07-29' FROM media m WHERE m.title = 'Twin Peaks: Fire Walk With Me' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2022-07-29' FROM media m WHERE m.title = 'Twin Peaks: Fire Walk With Me' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Inside Llewyn Davis
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Inside Llewyn Davis', 2013, ARRAY['Drama','Music']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Joel & Ethan Coen' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Inside Llewyn Davis' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2026-08-29' FROM media m WHERE m.title = 'Inside Llewyn Davis' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Being John Malkovich
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Being John Malkovich', 1999, ARRAY['Fantasy','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Spike Jonze' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Being John Malkovich' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', 4, '2026-08-10' FROM media m WHERE m.title = 'Being John Malkovich' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Universal Language
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Universal Language', 2024, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Matthew Rankin' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Universal Language' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', 4.5, '2026-07-19' FROM media m WHERE m.title = 'Universal Language' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Spongebob Squarepants Movie: Search for SquarePants
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Spongebob Squarepants Movie: Search for SquarePants', 2025, ARRAY['Comedy','Animated']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Derek Drymon' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Spongebob Squarepants Movie: Search for SquarePants' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', 0.5, '2026-02-22' FROM media m WHERE m.title = 'The Spongebob Squarepants Movie: Search for SquarePants' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hard Boiled
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Hard Boiled', 1992, ARRAY['Action','Crime']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'John Woo' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Hard Boiled' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-10-26' FROM media m WHERE m.title = 'Hard Boiled' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nickel Boys
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Nickel Boys', 2024, ARRAY['Drama','Historical']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'RaMell Ross' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Nickel Boys' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', 4.5, '2025-04-25' FROM media m WHERE m.title = 'Nickel Boys' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lost in Translation
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Lost in Translation', 2003, ARRAY['Drama','Romance','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Sofia Coppola' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Lost in Translation' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', 3, '2025-04-05' FROM media m WHERE m.title = 'Lost in Translation' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Garden State
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Garden State', 2004, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Zach Braff' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Garden State' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', 1.5, '2025-04-05' FROM media m WHERE m.title = 'Garden State' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A Complete Unknown
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'A Complete Unknown', 2025, ARRAY['Drama','Biopic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'James Mangold' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'A Complete Unknown' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', 3, '2025-04-05' FROM media m WHERE m.title = 'A Complete Unknown' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rap World
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Rap World', 2024, ARRAY['Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Connor O''Malley' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Rap World' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2025-01-21' FROM media m WHERE m.title = 'Rap World' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Blind Beast
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Blind Beast', 1969, ARRAY['Horror','Erotic','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Yasuzō Masumura' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Blind Beast' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-10-22' FROM media m WHERE m.title = 'Blind Beast' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Tokyo Story
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Tokyo Story', 1953, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Yasujirō Ozu' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Tokyo Story' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-08-01' FROM media m WHERE m.title = 'Tokyo Story' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Punch Drunk Love
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Punch Drunk Love', 2002, ARRAY['Romance','Drama','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Paul Thomas Anderson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Punch Drunk Love' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-07-07' FROM media m WHERE m.title = 'Punch Drunk Love' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Anomalisa
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Anomalisa', 2015, ARRAY['Romance','Comedy','Drama','Psychological','Animated']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Charlie Kaufman' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Anomalisa' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-03-26' FROM media m WHERE m.title = 'Anomalisa' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Neon Genesis Evangelion: The End of Evangelion
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Neon Genesis Evangelion: The End of Evangelion', 1997, ARRAY['Anime','Sci-Fi']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Hideaki Anno, Kazuya Tsurumaki' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Neon Genesis Evangelion: The End of Evangelion' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-03-08' FROM media m WHERE m.title = 'Neon Genesis Evangelion: The End of Evangelion' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hard to be a God
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Hard to be a God', 2013, ARRAY['Sci-Fi','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Aleksei German' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Hard to be a God' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-01-14' FROM media m WHERE m.title = 'Hard to be a God' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pride & Prejudice
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Pride & Prejudice', 2005, ARRAY['Romance','Period','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Joe Wright' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Pride & Prejudice' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2024-01-13' FROM media m WHERE m.title = 'Pride & Prejudice' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Oppenheimer
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Oppenheimer', 2023, ARRAY['Drama','Biopic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Christopher Nolan' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Oppenheimer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'none', NULL, '2023-06-19' FROM media m WHERE m.title = 'Oppenheimer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rosemary's Baby
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Rosemary''s Baby', 1968, ARRAY['Psychological','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Roman Polanski' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Rosemary''s Baby' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Rosemary''s Baby' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Front Room
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Front Room', 2024, ARRAY['Psychological','Horror','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Max Eggers & Sam Eggers' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Front Room' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Front Room' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Exit 8
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Exit 8', 2025, ARRAY['Psychological','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Genki Kawamura' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Exit 8' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Exit 8' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cramps! A Period Piece
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Cramps! A Period Piece', 2025, ARRAY['Fantasy','Horror','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Brooke H. Cellars' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Cramps! A Period Piece' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Cramps! A Period Piece' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Bride!
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Bride!', 2026, ARRAY['Sci-Fi','Romance','Gothic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Maggie Gyllenhaal' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Bride!' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Bride!' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Meshes of the Afternoon
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Meshes of the Afternoon', 1943, ARRAY['Mystery','Fantasy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Maya Deren, Alexander Hammid' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Meshes of the Afternoon' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Meshes of the Afternoon' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rear Window
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Rear Window', 1954, ARRAY['Mystery','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Alfred Hitchcokc' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Rear Window' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Rear Window' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Le Bonheur
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Le Bonheur', 1965, ARRAY['Drama','Romance']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Agnes Varda' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Le Bonheur' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Le Bonheur' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- PlayTime
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'PlayTime', 1967, ARRAY['Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Jacques Tati' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'PlayTime' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'PlayTime' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lady Snowblood
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Lady Snowblood', 1973, ARRAY['Crime','Drama','Action']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Toshiya Fujita' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Lady Snowblood' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Lady Snowblood' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nashville
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Nashville', 1975, ARRAY['Drama','Comedy','Music']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Robert Altman' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Nashville' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Nashville' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Appointment
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Appointment', 1981, ARRAY['Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Lindsey C. Vickers' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Appointment' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Appointment' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Taipei Story
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Taipei Story', 1985, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Edward Yang' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Taipei Story' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Taipei Story' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Cat
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Cat', 1992, ARRAY['Sci-Fi','Horror','Action']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Lam Nai-Choi' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Cat' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Cat' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Totally F**ed Up
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Totally F**ed Up', 1993, ARRAY['Romance','Drama','Comedy','LGBT+']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Gregg Araki' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Totally F**ed Up' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Totally F**ed Up' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Welcome to the Dollhouse
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Welcome to the Dollhouse', 1995, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Todd Solondz' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Welcome to the Dollhouse' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Welcome to the Dollhouse' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Audition
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Audition', 1999, ARRAY['Horror','Mystery']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Takashi Miike' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Audition' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Audition' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ichi the Killer
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Ichi the Killer', 2001, ARRAY['Horror','Crime','Action']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Takashi Miike' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Ichi the Killer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Ichi the Killer' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- One Missed Call
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'One Missed Call', 2003, ARRAY['Supernatural','Horror','Mystery']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Takashi Miike' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'One Missed Call' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'One Missed Call' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Smiley Face
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Smiley Face', 2007, ARRAY['Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Gregg Araki' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Smiley Face' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Smiley Face' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lake Mungo
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Lake Mungo', 2008, ARRAY['Thriller','Horror','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Joel Anderson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Lake Mungo' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Lake Mungo' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Let the Right One In
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Let the Right One In', 2008, ARRAY['Horror','Romance']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Tomas Alfredson' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Let the Right One In' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Let the Right One In' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Thirst
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Thirst', 2009, ARRAY['Horror','Drama','Vampire']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Park Chan-wook' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Thirst' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Thirst' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nebraska
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Nebraska', 2013, ARRAY['Adventure','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Alexander Payne' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Nebraska' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Nebraska' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Wailing
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Wailing', 2016, ARRAY['Horror','Mystery']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Na Hong-jin' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Wailing' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Wailing' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Love Witch
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Love Witch', 2016, ARRAY['Romance','Horror','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Anna Biller' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Love Witch' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Love Witch' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Roma
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Roma', 2018, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Alfonso Cuaron' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Roma' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Roma' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Under the Silver Lake
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Under the Silver Lake', 2018, ARRAY['Mystery','Crime','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Robert Mitchell' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Under the Silver Lake' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Under the Silver Lake' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Only the Animals
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Only the Animals', 2019, ARRAY['Drama','Crime']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Dominik Moll' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Only the Animals' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Only the Animals' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nightmare Alley
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Nightmare Alley', 2021, ARRAY['Drama','Crime','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Guillermo del Toro' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Nightmare Alley' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Nightmare Alley' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Leave the World Behind
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Leave the World Behind', 2023, ARRAY['Thriller','Apocalypse/Post-apocalyptic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Sam Esmail' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Leave the World Behind' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Leave the World Behind' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Never Let Go
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Never Let Go', 2024, ARRAY['Survival','Horror','Suspence']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Alexandre Aja' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Never Let Go' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Never Let Go' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Chime
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Chime', 2024, ARRAY['Thriller','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kiyoshi Kurosawa' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Chime' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Chime' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Frewaka
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Frewaka', 2024, ARRAY['Drama','Horror','Fantasy','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Aislinn Clarke' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Frewaka' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Frewaka' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Angela
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Angela', 1995, ARRAY['Drama','Indie']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Rebecca Miller' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Angela' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Angela' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rabbit Trap
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Rabbit Trap', 2025, ARRAY['Fantasy','Horror','Thriller','Mystery','Folk']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Bryn Chainey' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Rabbit Trap' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Rabbit Trap' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ikiru
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Ikiru', 1952, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Akira Kurosawa' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Ikiru' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Ikiru' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cure
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Cure', 1997, ARRAY['Mystery','Crime','Thriller','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kiyoshi Kurosawa' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Cure' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Cure' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lucky
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Lucky', 2017, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'John Carroll Lynch' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Lucky' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Lucky' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Straight Story
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Straight Story', 1999, ARRAY['Drama','Road Movie']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Lynch' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Straight Story' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Straight Story' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ms. 45
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Ms. 45', 1981, ARRAY['Crime','Thriller','Action','Revenge']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Abel Ferrara' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Ms. 45' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Ms. 45' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Vertigo
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Vertigo', 1958, ARRAY['Psychological','Thriller','Mystery','Noir']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Alfred Hitchcock' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Vertigo' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Vertigo' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Basketball Diaries
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Basketball Diaries', 1995, ARRAY['Crime','Drama','Noir']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Scott Kalvert' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Basketball Diaries' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Basketball Diaries' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Crimes of the Future
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Crimes of the Future', 2022, ARRAY['Sci-Fi','Body Horror','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Cronenberg' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Crimes of the Future' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Crimes of the Future' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- High and Low
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'High and Low', 1963, ARRAY['Crime','Noir']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Akira Kurosawa' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'High and Low' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'High and Low' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Lair of the White Worm
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Lair of the White Worm', 1988, ARRAY['Comedy','Horror','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Ken Russell' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Lair of the White Worm' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Lair of the White Worm' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Janet Planet
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Janet Planet', 2023, ARRAY['Coming-of-age','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Annie Baker' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Janet Planet' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Janet Planet' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Perfect Blue
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Perfect Blue', 1997, ARRAY['Anime','Horror','Psychological','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Satoshi Kon' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Perfect Blue' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Perfect Blue' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Paprika
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Paprika', 2006, ARRAY['Sci-Fi','Psychological','Thriller','Anime']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Satoshi Kon' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Paprika' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Paprika' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Oslo, August 31st
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Oslo, August 31st', 2011, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Joachim Trier' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Oslo, August 31st' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Oslo, August 31st' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Wicker Man
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Wicker Man', 1973, ARRAY['Mystery','Music','Folk','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Robin Hardy' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Wicker Man' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Wicker Man' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sideways
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Sideways', 2004, ARRAY['Comedy','Romance','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Alexander Payne' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Sideways' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Sideways' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Being Natural
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Being Natural', 2017, ARRAY['Drama','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Tadashi Nagayama' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Being Natural' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Being Natural' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mystery Train
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Mystery Train', 1989, ARRAY['Anthology','Comedy','Crime']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Jim Jarmusch' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Mystery Train' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Mystery Train' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Landscape in the Mist
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Landscape in the Mist', 1988, ARRAY['Drama','Road Movie']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Theo Angelopoulos' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Landscape in the Mist' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Landscape in the Mist' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Columbus
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Columbus', 2017, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kogonada' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Columbus' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Columbus' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ritual
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Ritual', 2000, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Hideaki Anno' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Ritual' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Ritual' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 11 x 14
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', '11 x 14', 1977, ARRAY['Experimental']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'James Benning' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = '11 x 14' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = '11 x 14' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Yi Yi
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Yi Yi', 2000, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Edward Yang' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Yi Yi' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Yi Yi' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Close Encounters of the Third Kind
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Close Encounters of the Third Kind', 1977, ARRAY['Sci-Fi','Adventure']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Steven Spielberg' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Close Encounters of the Third Kind' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Close Encounters of the Third Kind' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Drama
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Drama', 2026, ARRAY['Romance','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kristoffer Borgli' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Drama' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Drama' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Jeanne Dielman, 23, quai du Commerce, 1080 Bruxelles
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Jeanne Dielman, 23, quai du Commerce, 1080 Bruxelles', 1975, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Chantal Akerman' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Jeanne Dielman, 23, quai du Commerce, 1080 Bruxelles' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Jeanne Dielman, 23, quai du Commerce, 1080 Bruxelles' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Invasion of the Body Snatchers
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Invasion of the Body Snatchers', 1978, ARRAY['Sci-Fi']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Philip Kaufman' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Invasion of the Body Snatchers' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Invasion of the Body Snatchers' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Saccharine
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Saccharine', 2026, ARRAY['Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Natalie Erika James' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Saccharine' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Saccharine' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Apartment 7A
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Apartment 7A', 2024, ARRAY['Horror','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Natalie Erika James' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Apartment 7A' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Apartment 7A' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Fly
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Fly', 1986, ARRAY['Sci-Fi','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Cronenberg' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Fly' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Fly' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Crash
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Crash', 1996, ARRAY['Thriller','Erotic','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Cronenberg' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Crash' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Crash' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Scanners
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Scanners', 1981, ARRAY['Sci-Fi','Thriller','Body Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Cronenberg' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Scanners' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Scanners' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Terrified
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Terrified', 2017, ARRAY['Supernatural','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Demián Rugna' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Terrified' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Terrified' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- MadS
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'MadS', 2024, ARRAY['Horror','Psychadelic','Infection']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Moreau' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'MadS' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'MadS' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Shelby Oaks
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Shelby Oaks', 2024, ARRAY['Horror','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Chris Stuckmann' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Shelby Oaks' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Shelby Oaks' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Obsession
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Obsession', 2025, ARRAY['Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Curry Barker' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Obsession' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Obsession' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Gummo
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Gummo', 1997, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Harmony Korine' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Gummo' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Gummo' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Naked
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Naked', 1993, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Mike Leigh' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Naked' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Naked' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Werewulf
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Werewulf', 2026, ARRAY['Horror','Gothic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Robert Eggers' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Werewulf' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Werewulf' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Teenage Sex and Death at Camp Miasma
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Teenage Sex and Death at Camp Miasma', 2026, ARRAY['Slasher','LGBT+']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Jane Schoenbrun' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Teenage Sex and Death at Camp Miasma' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Teenage Sex and Death at Camp Miasma' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Backrooms
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Backrooms', 2026, ARRAY['Sci-Fi','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Kane Parsons' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Backrooms' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Backrooms' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Wolf Will Tear Your Immaculate Hands
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Wolf Will Tear Your Immaculate Hands', 2026, ARRAY['Horror','Gothic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Nathalie Álvarez Mesén' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Wolf Will Tear Your Immaculate Hands' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Wolf Will Tear Your Immaculate Hands' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Godzilla Minus Zero
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Godzilla Minus Zero', 2026, ARRAY['Sci-Fi','Kaiju']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Takashi Yamazaki' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Godzilla Minus Zero' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Godzilla Minus Zero' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bucking Fastard
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Bucking Fastard', 2026, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Werner Herzog' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Bucking Fastard' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Bucking Fastard' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Evil Dead Burn
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Evil Dead Burn', 2026, ARRAY['Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Sébastien Vaniček' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Evil Dead Burn' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Evil Dead Burn' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Flowervale Street
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Flowervale Street', 2026, ARRAY['Sci-Fi']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Robert Mitchell' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Flowervale Street' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Flowervale Street' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lee Cronin's The Mummy
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Lee Cronin''s The Mummy', 2026, ARRAY['Horror','Mystery']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Lee Cronin' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Lee Cronin''s The Mummy' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Lee Cronin''s The Mummy' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Faces of Death
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Faces of Death', 2026, ARRAY['Thriller','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Daniel Goldhaber' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Faces of Death' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Faces of Death' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Young People
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Young People', 2026, ARRAY['Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Osgood Perkins' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Young People' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Young People' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hokum
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Hokum', 2026, ARRAY['Horror','Mystery']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Damian McCarthy' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Hokum' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Hokum' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The End of Oak Street
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The End of Oak Street', 2026, ARRAY['Mystery','Thriller','Sci-Fi']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Robert Mitchell' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The End of Oak Street' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The End of Oak Street' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I Want Your Sex
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'I Want Your Sex', 2026, ARRAY['Drama','Comedy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Gregg Araki' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'I Want Your Sex' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'I Want Your Sex' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Brides
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Brides', NULL, ARRAY['Gothic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Chloe Okuno' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Brides' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Brides' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Claire
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Claire', NULL, ARRAY['Horror','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Tracy Kleeman' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Claire' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Claire' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Epilogue
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Epilogue', NULL, ARRAY['Zombie']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Michael Fimognari' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Epilogue' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Epilogue' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hope
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Hope', NULL, ARRAY['Sci-Fi','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Na Hong-jin' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Hope' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Hope' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- October
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'October', NULL, ARRAY['Action','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Jeremy Saulnier' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'October' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'October' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Onslaught
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Onslaught', NULL, ARRAY['Action','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Adam Wingard' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Onslaught' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Onslaught' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pendulum
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Pendulum', NULL, ARRAY['Psychological','Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Darren Aronofsky' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Pendulum' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Pendulum' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Bell Jar
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Bell Jar', NULL, ARRAY['Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Sarah Polley' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Bell Jar' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Bell Jar' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Mist
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'The Mist', NULL, ARRAY['Sci-Fi','Horror']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Mike Flanagan' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Mist' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'The Mist' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Deep Cuts
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Deep Cuts', NULL, ARRAY['Drama','Music']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Sean Durkin' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Deep Cuts' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Deep Cuts' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Klara and the Sun
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Klara and the Sun', NULL, ARRAY['Sci-Fi','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Taika Waititi' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Klara and the Sun' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Klara and the Sun' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A Christmas Carol
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'A Christmas Carol', NULL, ARRAY['Gothic','Drama','Fantasy']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Robert Eggers' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'A Christmas Carol' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'A Christmas Carol' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Artificial
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Artificial', NULL, ARRAY['Comedy','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Luca Guadagnino' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Artificial' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Artificial' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Good Sex
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Good Sex', NULL, ARRAY['Comedy','Romance']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Lena Dunham' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Good Sex' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Good Sex' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- They Follow
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'They Follow', NULL, ARRAY['Horror','Supernatural','Mystery']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'David Robert Mitchell' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'They Follow' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'They Follow' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Primetime
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Primetime', NULL, ARRAY['Thriller','Crime','Drama']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Lance Oppenheim' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Primetime' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Primetime' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Checkmate
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Checkmate', NULL, ARRAY['Drama','Biopic']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Nathan Fielder' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Checkmate' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Checkmate' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Untitled The Exorcist Film
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Untitled The Exorcist Film', NULL, ARRAY['Horror','Supernatural']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'Mike Flanagan' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Untitled The Exorcist Film' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Untitled The Exorcist Film' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Strange Darling
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('movie', 'Strange Darling', 2023, ARRAY['Thriller']) RETURNING id) INSERT INTO movies (media_id, director) SELECT id, 'JT Mollner' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', NULL, '2025-07-12' FROM media m WHERE m.title = 'Strange Darling' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m WHERE m.title = 'Strange Darling' AND m.media_type = 'movie' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;


-- ========== RECORDS ==========
-- Abba
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Abba', 1975, ARRAY['Disco','Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Abba' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Abba' WHERE m.title = 'Abba' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- As the Eternal Cowboy
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'As the Eternal Cowboy', 2003, ARRAY['Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Against Me' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Against Me' WHERE m.title = 'As the Eternal Cowboy' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I'm Still In Love With You
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'I''m Still In Love With You', 1972, ARRAY['Funk','Soul']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Al Green' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Al Green' WHERE m.title = 'I''m Still In Love With You' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- House of Sugar
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'House of Sugar', 2019, ARRAY['Folk','Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Alex G' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Alex G' WHERE m.title = 'House of Sugar' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rocket
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Rocket', 2017, ARRAY['Indie','Folk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Alex G' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Alex G' WHERE m.title = 'Rocket' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Headlights
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Headlights', 2025, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Alex G' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Alex G' WHERE m.title = 'Headlights' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Parrot Flies
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Parrot Flies', 2011, ARRAY['Emo']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Algernon Cadwallader' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Algernon Cadwallader' WHERE m.title = 'Parrot Flies' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- American Football
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'American Football', 1999, ARRAY['Emo','Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'American Football' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'American Football' WHERE m.title = 'American Football' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Blue Velvet OST
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Blue Velvet OST', 1986, ARRAY['Jazz','Funk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Angelo Badalamenti' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Angelo Badalamenti' WHERE m.title = 'Blue Velvet OST' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Twin Peaks OST
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Twin Peaks OST', 1990, ARRAY['Electronic','Jazz']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Angelo Badalamenti' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Angelo Badalamenti' WHERE m.title = 'Twin Peaks OST' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Only Boundaries
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Only Boundaries', 2012, ARRAY['Emo','Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Balance and Composure' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Balance and Composure' WHERE m.title = 'Only Boundaries' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Split
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Split', 2010, ARRAY['Emo','Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Balance and Composure / Tigers Jaw' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Balance and Composure / Tigers Jaw' WHERE m.title = 'Split' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Depression Cherry
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Depression Cherry', 2015, ARRAY['Indie','Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Beach House' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Beach House' WHERE m.title = 'Depression Cherry' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Teen Dream
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Teen Dream', 2010, ARRAY['Indie','Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Beach House' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Beach House' WHERE m.title = 'Teen Dream' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- S/T 7"
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'S/T 7"', 2009, ARRAY['Lo-fi','Rock','Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Best Coast' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Best Coast' WHERE m.title = 'S/T 7"' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Crazy For You
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Crazy For You', 2010, ARRAY['Surf','Garage Rock','Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Best Coast' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Best Coast' WHERE m.title = 'Crazy For You' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Best Coast' WHERE m.title = 'Crazy For You' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sittin By the Road
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Sittin By the Road', 2010, ARRAY['Folk','Country']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Blaze Foley' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Blaze Foley' WHERE m.title = 'Sittin By the Road' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Blaze Foley' WHERE m.title = 'Sittin By the Road' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 1000 Arms
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', '1000 Arms', 2016, ARRAY['Country','Folk Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Blue Rodeo' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Blue Rodeo' WHERE m.title = '1000 Arms' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Five Days in July
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Five Days in July', 1993, ARRAY['Country','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Blue Rodeo' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Blue Rodeo' WHERE m.title = 'Five Days in July' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- John Wesley Harding
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'John Wesley Harding', 1968, ARRAY['Folk','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Bob Dylan' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Bob Dylan' WHERE m.title = 'John Wesley Harding' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Before the Flood
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Before the Flood', 1974, ARRAY['Rock','Folk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Bob Dylan & The Band' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Bob Dylan & The Band' WHERE m.title = 'Before the Flood' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- For Emma, Forever Ago
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'For Emma, Forever Ago', 2007, ARRAY['Folk','Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Bon Iver' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Bon Iver' WHERE m.title = 'For Emma, Forever Ago' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Tender Buttons
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Tender Buttons', 2005, ARRAY['Synth Pop','Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Broadcast' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Broadcast' WHERE m.title = 'Tender Buttons' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Minecraft Beta OST
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Minecraft Beta OST', 2013, ARRAY['Synth']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'C418' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'C418' WHERE m.title = 'Minecraft Beta OST' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Heavy Metal
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Heavy Metal', 2024, ARRAY['Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Cameron Winter' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Cameron Winter' WHERE m.title = 'Heavy Metal' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Analphabetapolothology
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Analphabetapolothology', 1998, ARRAY['Emo','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Cap''n Jazz' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Cap''n Jazz' WHERE m.title = 'Analphabetapolothology' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Teaser and the Firecat
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Teaser and the Firecat', 1971, ARRAY['Folk','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Cat Stevens' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Cat Stevens' WHERE m.title = 'Teaser and the Firecat' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Zoo
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Zoo', 2012, ARRAY['Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Ceremony' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Ceremony' WHERE m.title = 'Zoo' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mingus Ah Um
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Mingus Ah Um', 1959, ARRAY['Jazz']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Charles Mingus' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Charles Mingus' WHERE m.title = 'Mingus Ah Um' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Young States
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Young States', 2011, ARRAY['Punk','Emo']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Citizen' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Citizen' WHERE m.title = 'Young States' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Split
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Split', 2012, ARRAY['Punk','Emo']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Citizen / Turnover' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Citizen / Turnover' WHERE m.title = 'Split' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Little Hell
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Little Hell', 2011, ARRAY['Indie','Acoustic']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'City and Color' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'City and Color' WHERE m.title = 'Little Hell' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Heaven or Las Vegas
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Heaven or Las Vegas', 1990, ARRAY['Synth Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Cocteau Twins' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Cocteau Twins' WHERE m.title = 'Heaven or Las Vegas' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Chronicle
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Chronicle', 1976, ARRAY['Folk','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Creedance Clearwater Revival' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Creedance Clearwater Revival' WHERE m.title = 'Chronicle' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Shade of Poison Trees
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'The Shade of Poison Trees', 2007, ARRAY['Acoustic']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Dashboard Congessional' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Dashboard Congessional' WHERE m.title = 'The Shade of Poison Trees' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Around the Fur
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Around the Fur', 1997, ARRAY['Post Hardcore']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Deftones' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Deftones' WHERE m.title = 'Around the Fur' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Milo Gets Bootlegged
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Milo Gets Bootlegged', 2005, ARRAY['Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Descendents' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Descendents' WHERE m.title = 'Milo Gets Bootlegged' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Milo Goes to College
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Milo Goes to College', 1982, ARRAY['Punk','Hardcore']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Descendents' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Descendents' WHERE m.title = 'Milo Goes to College' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Everything Sucks
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Everything Sucks', 1996, ARRAY['Hardcore','Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Descendents' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Descendents' WHERE m.title = 'Everything Sucks' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Chilling, Thrilling Sounds Of The Haunted House
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Chilling, Thrilling Sounds Of The Haunted House', 1979, ARRAY['Scary','Ambient']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Disneyland' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Disneyland' WHERE m.title = 'Chilling, Thrilling Sounds Of The Haunted House' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I Don't Even Care Anymore
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'I Don''t Even Care Anymore', 2013, ARRAY['Emo','Pop Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Dowsing' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Dowsing' WHERE m.title = 'I Don''t Even Care Anymore' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Take Care
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Take Care', 2011, ARRAY['Rap','R&B']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Drake' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Drake' WHERE m.title = 'Take Care' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- What a Time To Be Alive
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'What a Time To Be Alive', 2015, ARRAY['Rap']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Drake & Future' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Drake & Future' WHERE m.title = 'What a Time To Be Alive' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Stratosphere
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Stratosphere', 1998, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Duster' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Duster' WHERE m.title = 'Stratosphere' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Songs to Learn & Sing
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Songs to Learn & Sing', 1985, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Echo & The Bunnymen' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Echo & The Bunnymen' WHERE m.title = 'Songs to Learn & Sing' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Earth is Not a Cold Dead Place
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'The Earth is Not a Cold Dead Place', 2003, ARRAY['Post Rock','Instrumental']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Explosions in the Sky' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Explosions in the Sky' WHERE m.title = 'The Earth is Not a Cold Dead Place' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Gospel
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Gospel', 2011, ARRAY['Pop Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Fireworks' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Fireworks' WHERE m.title = 'Gospel' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Painting of a Panic Attack
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Painting of a Panic Attack', 2016, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Frightened Rabbit' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Frightened Rabbit' WHERE m.title = 'Painting of a Panic Attack' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Fugazi
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Fugazi', 1988, ARRAY['Hardcore','Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Fugazi' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Fugazi' WHERE m.title = 'Fugazi' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Getting Killed
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Getting Killed', 2025, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Geese' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Geese' WHERE m.title = 'Getting Killed' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rationale
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Rationale', 2024, ARRAY['Punk','Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Glitterer' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Glitterer' WHERE m.title = 'Rationale' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lift your Skinny Fists Like Antennas to Heaven
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Lift your Skinny Fists Like Antennas to Heaven', 2000, ARRAY['Post Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Godspeed You Black Emperor!' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Godspeed You Black Emperor!' WHERE m.title = 'Lift your Skinny Fists Like Antennas to Heaven' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cold on the Shoulder
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Cold on the Shoulder', 1975, ARRAY['Folk','Country']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Gordon Lightfoot' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Gordon Lightfoot' WHERE m.title = 'Cold on the Shoulder' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Visions
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Visions', 2012, ARRAY['Electronic','Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Grimes' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Grimes' WHERE m.title = 'Visions' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Don't Bite Your Tongue
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Don''t Bite Your Tongue', 2011, ARRAY['Pop Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Handguns' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Handguns' WHERE m.title = 'Don''t Bite Your Tongue' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 10.17.09
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', '10.17.09', 2010, ARRAY['Hardcore','Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Have Heart' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Have Heart' WHERE m.title = '10.17.09' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Horse Jumper of Love
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Horse Jumper of Love', 2016, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Horse Jumper of Love' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Horse Jumper of Love' WHERE m.title = 'Horse Jumper of Love' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Turn On The Bright Lights
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Turn On The Bright Lights', 2002, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Interpol' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Interpol' WHERE m.title = 'Turn On The Bright Lights' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 2014 Forest Hills Drive
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', '2014 Forest Hills Drive', 2014, ARRAY['Rap']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'J Cole' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'J Cole' WHERE m.title = '2014 Forest Hills Drive' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Donuts
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Donuts', 2006, ARRAY['Electronic']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'J Dilla' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'J Dilla' WHERE m.title = 'Donuts' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- You Had to Be There
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'You Had to Be There', 1978, ARRAY['Boat Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Jimmy Buffett' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Jimmy Buffett' WHERE m.title = 'You Had to Be There' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Back Home Again
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Back Home Again', 1974, ARRAY['Country','Folk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'John Denver' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'John Denver' WHERE m.title = 'Back Home Again' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- At Folsom Prison
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'At Folsom Prison', 1968, ARRAY['Country','Folk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Johnny Cash' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Johnny Cash' WHERE m.title = 'At Folsom Prison' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Christmas
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Christmas', 1971, ARRAY['Christmas']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Johnny Cash' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Johnny Cash' WHERE m.title = 'Christmas' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Unknown Pleasures
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Unknown Pleasures', 1979, ARRAY['Post-Punk','New Wave']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Joy Division' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Joy Division' WHERE m.title = 'Unknown Pleasures' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Joyce Manor
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Joyce Manor', 2011, ARRAY['Punk','Emo']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Joyce Manor' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Joyce Manor' WHERE m.title = 'Joyce Manor' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- My Beautiful Dark Twisted Fantasy
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'My Beautiful Dark Twisted Fantasy', 2010, ARRAY['Rap']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Kanye West' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Kanye West' WHERE m.title = 'My Beautiful Dark Twisted Fantasy' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Louie
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Louie', 2022, ARRAY['Electronic','Instrumental']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Kenneth Blume' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Kenneth Blume' WHERE m.title = 'Louie' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Brothers Blood
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Brothers Blood', 2009, ARRAY['Folk','Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Kevin Devine' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Kevin Devine' WHERE m.title = 'Brothers Blood' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Instigator
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Instigator', 2016, ARRAY['Indie','Folk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Kevin Devine' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Kevin Devine' WHERE m.title = 'Instigator' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wildlife
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Wildlife', 2011, ARRAY['Skramz']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'La Dispute' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'La Dispute' WHERE m.title = 'Wildlife' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Never Come Undone
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Never Come Undone', 2011, ARRAY['Emo','Folk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'La Dispute & Koji' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'La Dispute & Koji' WHERE m.title = 'Never Come Undone' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- New Skin for the Old Ceremony
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'New Skin for the Old Ceremony', 1974, ARRAY['Folk','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Leonard Cohen' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Leonard Cohen' WHERE m.title = 'New Skin for the Old Ceremony' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hey Dolly
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Hey Dolly', 1964, ARRAY['Jazz']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Louis Armstrong' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Louis Armstrong' WHERE m.title = 'Hey Dolly' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hurry Up, We're Dreaming
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Hurry Up, We''re Dreaming', 2011, ARRAY['Electronic']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'M83' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'M83' WHERE m.title = 'Hurry Up, We''re Dreaming' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Part and Parcel
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Part and Parcel', 2011, ARRAY['Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Make Do and Mend' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Make Do and Mend' WHERE m.title = 'Part and Parcel' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- End Measured Mile
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'End Measured Mile', 2010, ARRAY['Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Make Do and Mend' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Make Do and Mend' WHERE m.title = 'End Measured Mile' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Everything You Ever Loved
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Everything You Ever Loved', 2012, ARRAY['Hardcore','Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Make Do and Mend' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Make Do and Mend' WHERE m.title = 'Everything You Ever Loved' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Real Talk
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Real Talk', 2010, ARRAY['Pop Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Man Overboard' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Man Overboard' WHERE m.title = 'Real Talk' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Man Overboard
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Man Overboard', 2011, ARRAY['Pop Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Man Overboard' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Man Overboard' WHERE m.title = 'Man Overboard' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Christmas Songs
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Christmas Songs', 2020, ARRAY['Christmas']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Manchester Orchestra' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Manchester Orchestra' WHERE m.title = 'Christmas Songs' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Land is Inhospitable And So Are We
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'The Land is Inhospitable And So Are We', 2023, ARRAY['Indie','Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Mitski' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Mitski' WHERE m.title = 'The Land is Inhospitable And So Are We' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Manning Fireworks
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Manning Fireworks', 2024, ARRAY['Alt Country','Folk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'MJ Lenderman' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'MJ Lenderman' WHERE m.title = 'Manning Fireworks' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'MJ Lenderman' WHERE m.title = 'Manning Fireworks' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- You're Gonna Miss it All
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'You''re Gonna Miss it All', 2014, ARRAY['Emo','Pop-punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Modern Baseball' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Modern Baseball' WHERE m.title = 'You''re Gonna Miss it All' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Good News for People Who Love Bad News
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Good News for People Who Love Bad News', 2004, ARRAY['Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Modest Mouse' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Modest Mouse' WHERE m.title = 'Good News for People Who Love Bad News' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- We Were Dead Before the Ship Even Sank
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'We Were Dead Before the Ship Even Sank', 2007, ARRAY['Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Modest Mouse' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Modest Mouse' WHERE m.title = 'We Were Dead Before the Ship Even Sank' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Love at the Greek
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Love at the Greek', 1977, ARRAY['Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Neil Diamond' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Neil Diamond' WHERE m.title = 'Love at the Greek' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hawks & Doves
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Hawks & Doves', 1980, ARRAY['Country','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Neil Young' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Neil Young' WHERE m.title = 'Hawks & Doves' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sings the Blues
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Sings the Blues', 1967, ARRAY['Soul','Jazz']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Nina Simone' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Nina Simone' WHERE m.title = 'Sings the Blues' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pastel Blues
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Pastel Blues', 1965, ARRAY['Soul','Blues']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Nina Simone' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Nina Simone' WHERE m.title = 'Pastel Blues' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Xanadu 7" (Japanese)
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Xanadu 7" (Japanese)', 1980, ARRAY['Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Olivia Newton John' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Olivia Newton John' WHERE m.title = 'Xanadu 7" (Japanese)' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Otis Redding Sings Soul
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Otis Redding Sings Soul', 1973, ARRAY['Soul']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Otis Redding' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Otis Redding' WHERE m.title = 'Otis Redding Sings Soul' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Am
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Am', 2013, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Ovlov' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Ovlov' WHERE m.title = 'Am' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Tru
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Tru', 2018, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Ovlov' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Ovlov' WHERE m.title = 'Tru' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ghost Town
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Ghost Town', 2011, ARRAY['Folk','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Owen' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Owen' WHERE m.title = 'Ghost Town' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Punisher
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Punisher', 2020, ARRAY['Folk','Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Pheobe Bridgers' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Pheobe Bridgers' WHERE m.title = 'Punisher' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Old Pride
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Old Pride', 2009, ARRAY['Emo','Hardcore']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Pianos Become the Teeth' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Pianos Become the Teeth' WHERE m.title = 'Old Pride' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Magic Isn't Real
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Magic Isn''t Real', 2010, ARRAY['Rock','Post-punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Pile' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Pile' WHERE m.title = 'Magic Isn''t Real' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Pile' WHERE m.title = 'Magic Isn''t Real' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Amperland, NY
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Amperland, NY', 2021, ARRAY['Indie','Folk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Pinegrove' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Pinegrove' WHERE m.title = 'Amperland, NY' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cardinal
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Cardinal', 2016, ARRAY['Indie','Folk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Pinegrove' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Pinegrove' WHERE m.title = 'Cardinal' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Atom Heart Mother
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Atom Heart Mother', 1970, ARRAY['Pysch Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Pink Floyd' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Pink Floyd' WHERE m.title = 'Atom Heart Mother' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Feast of Love
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Feast of Love', 2013, ARRAY['Shoegaze','Emo']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Pity Sex' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Pity Sex' WHERE m.title = 'Feast of Love' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Doolittle
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Doolittle', 1989, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Pixies' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Pixies' WHERE m.title = 'Doolittle' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dummy
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Dummy', 1994, ARRAY['Pysch Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Portishead' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Portishead' WHERE m.title = 'Dummy' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Evil Empire
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Evil Empire', 1996, ARRAY['Alternative','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Rage Against the Machine' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Rage Against the Machine' WHERE m.title = 'Evil Empire' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Black Radio 3
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Black Radio 3', 2022, ARRAY['Soul','Jazz']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Robert Glasper' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Robert Glasper' WHERE m.title = 'Black Radio 3' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Double Booked
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Double Booked', 2009, ARRAY['Jazz']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Robert Glasper' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Robert Glasper' WHERE m.title = 'Double Booked' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Live at the Harlem Square Club
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Live at the Harlem Square Club', 1963, ARRAY['Soul','Jazz']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Sam Cooke' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Sam Cooke' WHERE m.title = 'Live at the Harlem Square Club' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Winter Forever
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Winter Forever', 2011, ARRAY['Punk','Emo']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Seahaven' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Seahaven' WHERE m.title = 'Winter Forever' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Reverie Lagoon
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Reverie Lagoon', 2014, ARRAY['Indie','Emo']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Seahaven' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Seahaven' WHERE m.title = 'Reverie Lagoon' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ghost
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Ghost', 2011, ARRAY['Emo','Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Seahaven' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Seahaven' WHERE m.title = 'Ghost' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- ()
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', '()', 2002, ARRAY['Post Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Sigur Ros' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Sigur Ros' WHERE m.title = '()' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Safe and Also No Fear
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Safe and Also No Fear', 2019, ARRAY['Folk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Slaughter Beach, Dog' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Slaughter Beach, Dog' WHERE m.title = 'Safe and Also No Fear' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Slaughter Beach, Dog' WHERE m.title = 'Safe and Also No Fear' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Souvlaki
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Souvlaki', 1963, ARRAY['Shoegaze','Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Slowdive' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Slowdive' WHERE m.title = 'Souvlaki' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Goo
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Goo', 1990, ARRAY['Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Sonic Youth' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Sonic Youth' WHERE m.title = 'Goo' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Little Creatures
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Little Creatures', 1985, ARRAY['Alternative','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Talking Heads' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Talking Heads' WHERE m.title = 'Little Creatures' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Folklore
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Folklore', 2020, ARRAY['Folk','Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Taylor Swift' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Taylor Swift' WHERE m.title = 'Folklore' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Songs from the Big Chair
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Songs from the Big Chair', 1985, ARRAY['Synth Pop','New Wave']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Tears For Fears' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Tears For Fears' WHERE m.title = 'Songs from the Big Chair' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hospice
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Hospice', 2009, ARRAY['Shoegaze','Emo']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Antlers' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Antlers' WHERE m.title = 'Hospice' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Greatest Hits
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Greatest Hits', 1966, ARRAY['Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Beegees' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Beegees' WHERE m.title = 'Greatest Hits' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Soft Parade
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'The Soft Parade', 1969, ARRAY['Psychadelic','Blues Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Doors' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Doors' WHERE m.title = 'The Soft Parade' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Strange Days
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Strange Days', 1967, ARRAY['Psych Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Doors' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Doors' WHERE m.title = 'Strange Days' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Front Bottoms
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'The Front Bottoms', 2011, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Front Bottoms' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Front Bottoms' WHERE m.title = 'The Front Bottoms' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Talon of the Hawk
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Talon of the Hawk', 2013, ARRAY['Emo','Indie']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Front Bottoms' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Front Bottoms' WHERE m.title = 'Talon of the Hawk' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Emily's Song 7" (Japanese)
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Emily''s Song 7" (Japanese)', 1974, ARRAY['Folk','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Moody Blues' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Moody Blues' WHERE m.title = 'Emily''s Song 7" (Japanese)' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A Light for Attracting Attention
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'A Light for Attracting Attention', 2022, ARRAY['Alternative','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Smile' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Smile' WHERE m.title = 'A Light for Attracting Attention' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Queen is Dead
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'The Queen is Dead', 1986, ARRAY['Indie','Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Smiths' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Smiths' WHERE m.title = 'The Queen is Dead' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Strangeways, Here we Come
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Strangeways, Here we Come', 1987, ARRAY['Indie','Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Smiths' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Smiths' WHERE m.title = 'Strangeways, Here we Come' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Smiths
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'The Smiths', 1984, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Smiths' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Smiths' WHERE m.title = 'The Smiths' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Meat is Murder
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Meat is Murder', 1985, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Smiths' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Smiths' WHERE m.title = 'Meat is Murder' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Smiths' WHERE m.title = 'Meat is Murder' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Under Soil & Dirt
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Under Soil & Dirt', 2011, ARRAY['Incel Punk','Pop Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Story So Far' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Story So Far' WHERE m.title = 'Under Soil & Dirt' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- S/T
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'S/T', 1980, ARRAY['Alternative','Indie Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Violent Femmes' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Violent Femmes' WHERE m.title = 'S/T' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Upsides
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'The Upsides', 2013, ARRAY['Pop Punk','Emo']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Wonder Years' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Wonder Years' WHERE m.title = 'The Upsides' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wont Be Pathetic Forever 7"
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Wont Be Pathetic Forever 7"', 2008, ARRAY['Pop Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The Wonder Years' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The Wonder Years' WHERE m.title = 'Wont Be Pathetic Forever 7"' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Whenever, If Ever
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Whenever, If Ever', 2013, ARRAY['Emo','Hardcore']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'The World Is A Beautiful Place & I Am No Longer Afraid To Die' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'The World Is A Beautiful Place & I Am No Longer Afraid To Die' WHERE m.title = 'Whenever, If Ever' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Floral Green
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Floral Green', 2012, ARRAY['Punk','Emo']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Title Fight' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Title Fight' WHERE m.title = 'Floral Green' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Shed (Destroyed)
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Shed (Destroyed)', 2011, ARRAY['Punk','Hardcore']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Title Fight' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Title Fight' WHERE m.title = 'Shed (Destroyed)' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Shed
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Shed', 2011, ARRAY['Punk','Emo']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Title Fight' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Title Fight' WHERE m.title = 'Shed' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Flood of 72
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Flood of 72', 2011, ARRAY['Punk','Emo']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Title Fight' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Title Fight' WHERE m.title = 'Flood of 72' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Parting The Sea Between Brightness And Me
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Parting The Sea Between Brightness And Me', 2011, ARRAY['Skramz']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Touche Amore' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Touche Amore' WHERE m.title = 'Parting The Sea Between Brightness And Me' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- For the Sake of the Song
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'For the Sake of the Song', 1968, ARRAY['Folk','Country']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Townes Van Zandt' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Townes Van Zandt' WHERE m.title = 'For the Sake of the Song' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Listen & Forgive
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Listen & Forgive', 2011, ARRAY['Pop Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Transit' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Transit' WHERE m.title = 'Listen & Forgive' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Turnover
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Turnover', 2011, ARRAY['Pop Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Turnover' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Turnover' WHERE m.title = 'Turnover' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Goodbye Bread
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Goodbye Bread', 2011, ARRAY['Pysch Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Ty Segall' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Ty Segall' WHERE m.title = 'Goodbye Bread' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Goblin
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Goblin', 2011, ARRAY['Hip-Hop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Tyler, the Creator' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Tyler, the Creator' WHERE m.title = 'Goblin' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Purgatory
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Purgatory', 2017, ARRAY['Folk','Country']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Tyler Childers' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Tyler Childers' WHERE m.title = 'Purgatory' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Saturday Night Fever OST
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Saturday Night Fever OST', 1977, ARRAY['Disco','Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Various' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Various' WHERE m.title = 'Saturday Night Fever OST' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Glamour Kills Tour
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'The Glamour Kills Tour', 2012, ARRAY['Pop Punk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Various' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Various' WHERE m.title = 'The Glamour Kills Tour' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Golden Archive Compilation
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Golden Archive Compilation', 1970, ARRAY['Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Velvet Underground' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Velvet Underground' WHERE m.title = 'Golden Archive Compilation' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Charlie Brown Christmas
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Charlie Brown Christmas', 1965, ARRAY['Christmas']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Vince Guaraldi Trio' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Vince Guaraldi Trio' WHERE m.title = 'Charlie Brown Christmas' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Vince Staples
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Vince Staples', 2021, ARRAY['Rap']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Vince Staples' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Vince Staples' WHERE m.title = 'Vince Staples' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Violent Femmes
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Violent Femmes', 1983, ARRAY['Alternative','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Violent Femmes' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Violent Femmes' WHERE m.title = 'Violent Femmes' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Just Another Diamond Day
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Just Another Diamond Day', 1970, ARRAY['Folk']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Washti Bunyon' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Washti Bunyon' WHERE m.title = 'Just Another Diamond Day' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wavvves
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Wavvves', 2009, ARRAY['Indie','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Wavves' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Wavves' WHERE m.title = 'Wavvves' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- King of the Beach
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'King of the Beach', 2010, ARRAY['Psychedelic Rock','Lo-Fi','Pop']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Wavves' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Wavves' WHERE m.title = 'King of the Beach' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Wavves' WHERE m.title = 'King of the Beach' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- S/T
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'S/T', 2008, ARRAY['Garage Rock','Lo-Fi']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Wavves' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Wavves' WHERE m.title = 'S/T' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'want_to_own', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Wavves' WHERE m.title = 'S/T' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pinkerton
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Pinkerton', 1996, ARRAY['Alternative','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Weezer' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Weezer' WHERE m.title = 'Pinkerton' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Being There
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Being There', 1996, ARRAY['Folk','Rock']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Wilco' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Wilco' WHERE m.title = 'Being There' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Music of Twin Peaks
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'The Music of Twin Peaks', 2016, ARRAY['Ambient','Electronic']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Xiu Xiu' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Xiu Xiu' WHERE m.title = 'The Music of Twin Peaks' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- American Heartbreak
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'American Heartbreak', 2022, ARRAY['Folk','Country']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Zach Bryan' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Zach Bryan' WHERE m.title = 'American Heartbreak' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Deann
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Deann', 2019, ARRAY['Folk','Country']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Zach Bryan' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Zach Bryan' WHERE m.title = 'Deann' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Summertime Blues
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('record', 'Summertime Blues', 2022, ARRAY['Folk','Country']) RETURNING id) INSERT INTO records (media_id, artist) SELECT id, 'Zach Bryan' FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', 'physical', NULL, NULL FROM media m JOIN records s ON s.media_id = m.id AND s.artist = 'Zach Bryan' WHERE m.title = 'Summertime Blues' AND m.media_type = 'record' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;


-- ========== AB BOOKS ==========
-- The Idiot
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Idiot', 1868, ARRAY['Classic Literature','Philosophical Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Fyodor Dostoevsky'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'consuming', 'none', 1.5, '2024-04-18' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Fyodor Dostoevsky'] WHERE m.title = 'The Idiot' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'ebook', '2024-04-18' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Fyodor Dostoevsky'] WHERE m.title = 'The Idiot' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Tender is the Flesh
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Tender is the Flesh', 2017, ARRAY['Dystopian','Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Agustina Bazterrica'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Agustina Bazterrica'] WHERE m.title = 'Tender is the Flesh' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Agustina Bazterrica'] WHERE m.title = 'Tender is the Flesh' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Fall
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Fall', 1956, ARRAY['Philosophical Fiction','Existentialism']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Albert Camus'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Albert Camus'] WHERE m.title = 'The Fall' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Albert Camus'] WHERE m.title = 'The Fall' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Stranger
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Stranger', 1942, ARRAY['Existential Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Albert Camus'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Albert Camus'] WHERE m.title = 'The Stranger' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Albert Camus'] WHERE m.title = 'The Stranger' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Rebel
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Rebel', 1951, ARRAY['Philosophical Essay']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Albert Camus'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Albert Camus'] WHERE m.title = 'The Rebel' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Albert Camus'] WHERE m.title = 'The Rebel' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Count of Monte Cristo
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Count of Monte Cristo', 1844, ARRAY['Adventure','Historical Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Alexandre Dumas'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Alexandre Dumas'] WHERE m.title = 'The Count of Monte Cristo' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Alexandre Dumas'] WHERE m.title = 'The Count of Monte Cristo' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Decreation: Poetry, Essays, Opera
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Decreation: Poetry, Essays, Opera', 2005, ARRAY['Experimental','Hybrid']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Anne Carson'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Anne Carson'] WHERE m.title = 'Decreation: Poetry, Essays, Opera' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Anne Carson'] WHERE m.title = 'Decreation: Poetry, Essays, Opera' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Complete Poems
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Complete Poems', 1981, ARRAY['Poetry','Confessional']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Anne Sexton'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Anne Sexton'] WHERE m.title = 'The Complete Poems' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Anne Sexton'] WHERE m.title = 'The Complete Poems' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Butter
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Butter', 2017, ARRAY['Contemporary Fiction','Crime']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Asako Yuzuki'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Asako Yuzuki'] WHERE m.title = 'Butter' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Asako Yuzuki'] WHERE m.title = 'Butter' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- All About Love: New Visions
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'All About Love: New Visions', 1999, ARRAY['Non-fiction','Social Theory']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['bell hooks'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['bell hooks'] WHERE m.title = 'All About Love: New Visions' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['bell hooks'] WHERE m.title = 'All About Love: New Visions' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Communion: The Female Search for Love
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Communion: The Female Search for Love', 2002, ARRAY['Non-fiction','Social Theory']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['bell hooks'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['bell hooks'] WHERE m.title = 'Communion: The Female Search for Love' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['bell hooks'] WHERE m.title = 'Communion: The Female Search for Love' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Will to Change
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Will to Change', 2004, ARRAY['Non-fiction','Sociology']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['bell hooks'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['bell hooks'] WHERE m.title = 'The Will to Change' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['bell hooks'] WHERE m.title = 'The Will to Change' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Lair of the White Worm
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Lair of the White Worm', 1911, ARRAY['Horror','Gothic']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Bram Stoker'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Bram Stoker'] WHERE m.title = 'Lair of the White Worm' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Bram Stoker'] WHERE m.title = 'Lair of the White Worm' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Dracula
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Dracula', 1897, ARRAY['Gothic Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Bram Stoker'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Bram Stoker'] WHERE m.title = 'Dracula' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Bram Stoker'] WHERE m.title = 'Dracula' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Real Life
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Real Life', 2020, ARRAY['Contemporary Fiction','Academic']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Brandon Taylor'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Brandon Taylor'] WHERE m.title = 'Real Life' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Brandon Taylor'] WHERE m.title = 'Real Life' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Biography of X
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Biography of X', 2023, ARRAY['Alternate History','Fictional Biography']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Catherine Lacey'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Catherine Lacey'] WHERE m.title = 'Biography of X' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Catherine Lacey'] WHERE m.title = 'Biography of X' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Jane Eyre
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Jane Eyre', 1847, ARRAY['Gothic Romance']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Charlotte Brontë'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Charlotte Brontë'] WHERE m.title = 'Jane Eyre' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Charlotte Brontë'] WHERE m.title = 'Jane Eyre' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Ghosts
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Ghosts', 2020, ARRAY['Contemporary Fiction','Romance']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Dolly Alderton'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Dolly Alderton'] WHERE m.title = 'Ghosts' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Dolly Alderton'] WHERE m.title = 'Ghosts' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Good Material
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Good Material', 2023, ARRAY['Contemporary Fiction','Comedy']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Dolly Alderton'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Dolly Alderton'] WHERE m.title = 'Good Material' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Dolly Alderton'] WHERE m.title = 'Good Material' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Complete Poems 1904-1962
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Complete Poems 1904-1962', 1991, ARRAY['Poetry']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['E.E. Cummings'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['E.E. Cummings'] WHERE m.title = 'Complete Poems 1904-1962' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['E.E. Cummings'] WHERE m.title = 'Complete Poems 1904-1962' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Days of Abandonment
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Days of Abandonment', 2002, ARRAY['Contemporary Fiction','Psychological']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Elena Ferrante'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Elena Ferrante'] WHERE m.title = 'The Days of Abandonment' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Elena Ferrante'] WHERE m.title = 'The Days of Abandonment' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Idiot
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Idiot', 2017, ARRAY['Contemporary Fiction','Bildungsroman']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Elif Batuman'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Elif Batuman'] WHERE m.title = 'The Idiot' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Elif Batuman'] WHERE m.title = 'The Idiot' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Dune (Dune, #1)
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Dune (Dune, #1)', 1965, ARRAY['Science Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Frank Herbert'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Frank Herbert'] WHERE m.title = 'Dune (Dune, #1)' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Frank Herbert'] WHERE m.title = 'Dune (Dune, #1)' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Brothers Karamazov
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Brothers Karamazov', 1880, ARRAY['Philosophical Fiction','Classic']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Fyodor Dostoevsky'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Fyodor Dostoevsky'] WHERE m.title = 'The Brothers Karamazov' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Fyodor Dostoevsky'] WHERE m.title = 'The Brothers Karamazov' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Tender Buttons
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Tender Buttons', 1914, ARRAY['Avant-garde Poetry']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Gertrude Stein'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Gertrude Stein'] WHERE m.title = 'Tender Buttons' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Gertrude Stein'] WHERE m.title = 'Tender Buttons' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The War of the Worlds
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The War of the Worlds', 1898, ARRAY['Science Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['H.G. Wells'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['H.G. Wells'] WHERE m.title = 'The War of the Worlds' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['H.G. Wells'] WHERE m.title = 'The War of the Worlds' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The New Me
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The New Me', 2019, ARRAY['Satire','Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Halle Butler'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Halle Butler'] WHERE m.title = 'The New Me' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Halle Butler'] WHERE m.title = 'The New Me' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Kafka on the Shore
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Kafka on the Shore', 2002, ARRAY['Magical Realism']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Haruki Murakami'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Haruki Murakami'] WHERE m.title = 'Kafka on the Shore' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Haruki Murakami'] WHERE m.title = 'Kafka on the Shore' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Terminal Boredom: Stories
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Terminal Boredom: Stories', 2021, ARRAY['Science Fiction','Cyberpunk']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Izumi Suzuki'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Izumi Suzuki'] WHERE m.title = 'Terminal Boredom: Stories' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Izumi Suzuki'] WHERE m.title = 'Terminal Boredom: Stories' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- I Who Have Never Known Men
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'I Who Have Never Known Men', 1995, ARRAY['Dystopian','Feminist Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Jacqueline Harpman'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Jacqueline Harpman'] WHERE m.title = 'I Who Have Never Known Men' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Jacqueline Harpman'] WHERE m.title = 'I Who Have Never Known Men' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Persuasion
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Persuasion', 1817, ARRAY['Classic Literature','Romance']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Jane Austen'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Jane Austen'] WHERE m.title = 'Persuasion' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Jane Austen'] WHERE m.title = 'Persuasion' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Pride and Prejudice
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Pride and Prejudice', 1813, ARRAY['Classic Literature','Romance']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Jane Austen'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Jane Austen'] WHERE m.title = 'Pride and Prejudice' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Jane Austen'] WHERE m.title = 'Pride and Prejudice' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Existentialism is a Humanism
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Existentialism is a Humanism', 1946, ARRAY['Philosophical Essay']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Jean-Paul Sartre'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Jean-Paul Sartre'] WHERE m.title = 'Existentialism is a Humanism' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Jean-Paul Sartre'] WHERE m.title = 'Existentialism is a Humanism' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Nausea
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Nausea', 1938, ARRAY['Existential Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Jean-Paul Sartre'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Jean-Paul Sartre'] WHERE m.title = 'Nausea' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Jean-Paul Sartre'] WHERE m.title = 'Nausea' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Slouching Towards Bethlehem
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Slouching Towards Bethlehem', 1968, ARRAY['Essays','Non-fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Joan Didion'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Joan Didion'] WHERE m.title = 'Slouching Towards Bethlehem' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Joan Didion'] WHERE m.title = 'Slouching Towards Bethlehem' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Year of Magical Thinking
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Year of Magical Thinking', 2005, ARRAY['Memoir','Non-fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Joan Didion'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Joan Didion'] WHERE m.title = 'The Year of Magical Thinking' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Joan Didion'] WHERE m.title = 'The Year of Magical Thinking' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Your Love is Not Good
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Your Love is Not Good', 2023, ARRAY['Psychological Fiction','Satire']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Johanna Hedva'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Johanna Hedva'] WHERE m.title = 'Your Love is Not Good' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Johanna Hedva'] WHERE m.title = 'Your Love is Not Good' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Paradise Lost
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Paradise Lost', 1667, ARRAY['Epic Poetry']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['John Milton'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['John Milton'] WHERE m.title = 'Paradise Lost' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['John Milton'] WHERE m.title = 'Paradise Lost' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- East of Eden
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'East of Eden', 1952, ARRAY['Classic Literature','Family Saga']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['John Steinbeck'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['John Steinbeck'] WHERE m.title = 'East of Eden' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['John Steinbeck'] WHERE m.title = 'East of Eden' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- One Flew Over the Cuckoo's Nest
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'One Flew Over the Cuckoo''s Nest', 1962, ARRAY['Psychological Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Ken Kesey'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ken Kesey'] WHERE m.title = 'One Flew Over the Cuckoo''s Nest' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ken Kesey'] WHERE m.title = 'One Flew Over the Cuckoo''s Nest' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Cat's Cradle
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Cat''s Cradle', 1963, ARRAY['Sci-Fi','Satire']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Kurt Vonnegut'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Kurt Vonnegut'] WHERE m.title = 'Cat''s Cradle' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Kurt Vonnegut'] WHERE m.title = 'Cat''s Cradle' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Slaughterhouse-Five
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Slaughterhouse-Five', 1969, ARRAY['Sci-Fi','Satire']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Kurt Vonnegut'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Kurt Vonnegut'] WHERE m.title = 'Slaughterhouse-Five' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Kurt Vonnegut'] WHERE m.title = 'Slaughterhouse-Five' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Satantango
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Satantango', 1985, ARRAY['Postmodern','Experimental']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['László Krasznahorkai'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['László Krasznahorkai'] WHERE m.title = 'Satantango' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['László Krasznahorkai'] WHERE m.title = 'Satantango' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Anna Karenina
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Anna Karenina', 1878, ARRAY['Realist Fiction','Romance']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Leo Tolstoy'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Leo Tolstoy'] WHERE m.title = 'Anna Karenina' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Leo Tolstoy'] WHERE m.title = 'Anna Karenina' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Flame
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Flame', 2018, ARRAY['Poetry','Lyrics']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Leonard Cohen'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Leonard Cohen'] WHERE m.title = 'The Flame' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Leonard Cohen'] WHERE m.title = 'The Flame' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Bluets
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Bluets', 2009, ARRAY['Lyric Essay','Non-fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Maggie Nelson'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Maggie Nelson'] WHERE m.title = 'Bluets' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Maggie Nelson'] WHERE m.title = 'Bluets' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- House of Leaves
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'House of Leaves', 2000, ARRAY['Ergodic Literature','Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Mark Z. Danielewski'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mark Z. Danielewski'] WHERE m.title = 'House of Leaves' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mark Z. Danielewski'] WHERE m.title = 'House of Leaves' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Monk
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Monk', 1796, ARRAY['Gothic Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Matthew Gregory Lewis'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Matthew Gregory Lewis'] WHERE m.title = 'The Monk' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Matthew Gregory Lewis'] WHERE m.title = 'The Monk' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Crying in H Mart
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Crying in H Mart', 2021, ARRAY['Memoir','Non-fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Michelle Zauner'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Michelle Zauner'] WHERE m.title = 'Crying in H Mart' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Michelle Zauner'] WHERE m.title = 'Crying in H Mart' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- 13 Ways of Looking at a Fat Girl
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', '13 Ways of Looking at a Fat Girl', 2016, ARRAY['Contemporary Fiction','Satire']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Mona Awad'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mona Awad'] WHERE m.title = '13 Ways of Looking at a Fat Girl' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mona Awad'] WHERE m.title = '13 Ways of Looking at a Fat Girl' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Rouge
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Rouge', 2023, ARRAY['Gothic','Psychological Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Mona Awad'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mona Awad'] WHERE m.title = 'Rouge' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mona Awad'] WHERE m.title = 'Rouge' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Time is a Mother
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Time is a Mother', 2022, ARRAY['Poetry']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Ocean Vuong'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ocean Vuong'] WHERE m.title = 'Time is a Mother' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ocean Vuong'] WHERE m.title = 'Time is a Mother' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Drive Your Plow Over the Bones of the Dead
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Drive Your Plow Over the Bones of the Dead', 2009, ARRAY['Existential Mystery','Noir']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Olga Tokarczuk'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Olga Tokarczuk'] WHERE m.title = 'Drive Your Plow Over the Bones of the Dead' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Olga Tokarczuk'] WHERE m.title = 'Drive Your Plow Over the Bones of the Dead' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Picture of Dorian Gray
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Picture of Dorian Gray', 1890, ARRAY['Philosophical Horror','Classic']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Oscar Wilde'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Oscar Wilde'] WHERE m.title = 'The Picture of Dorian Gray' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Oscar Wilde'] WHERE m.title = 'The Picture of Dorian Gray' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Death in Her Hands
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Death in Her Hands', 2020, ARRAY['Psychological Thriller']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Ottessa Moshfegh'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ottessa Moshfegh'] WHERE m.title = 'Death in Her Hands' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ottessa Moshfegh'] WHERE m.title = 'Death in Her Hands' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Eileen
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Eileen', 2015, ARRAY['Noir','Psychological Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Ottessa Moshfegh'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ottessa Moshfegh'] WHERE m.title = 'Eileen' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ottessa Moshfegh'] WHERE m.title = 'Eileen' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Just Kids
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Just Kids', 2010, ARRAY['Memoir','Non-fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Patti Smith'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Patti Smith'] WHERE m.title = 'Just Kids' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Patti Smith'] WHERE m.title = 'Just Kids' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Do Androids Dream of Electric Sheep?
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Do Androids Dream of Electric Sheep?', 1968, ARRAY['Science Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Philip K. Dick'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Philip K. Dick'] WHERE m.title = 'Do Androids Dream of Electric Sheep?' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Philip K. Dick'] WHERE m.title = 'Do Androids Dream of Electric Sheep?' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- I, Rigoberta Menchú
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'I, Rigoberta Menchú', 1983, ARRAY['Testimonial','Autobiography']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Rigoberta Menchú'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Rigoberta Menchú'] WHERE m.title = 'I, Rigoberta Menchú' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Rigoberta Menchú'] WHERE m.title = 'I, Rigoberta Menchú' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Vampire Literature: An Anthology
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Vampire Literature: An Anthology', 2024, ARRAY['Gothic','Academic Anthology']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Robin A. Werner & Elizabeth M. Lewis'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Robin A. Werner & Elizabeth M. Lewis'] WHERE m.title = 'Vampire Literature: An Anthology' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Robin A. Werner & Elizabeth M. Lewis'] WHERE m.title = 'Vampire Literature: An Anthology' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Madonna in a Fur Coat
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Madonna in a Fur Coat', 1943, ARRAY['Romantic Tragedy']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Sabahattin Ali'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sabahattin Ali'] WHERE m.title = 'Madonna in a Fur Coat' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sabahattin Ali'] WHERE m.title = 'Madonna in a Fur Coat' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Intermezzo
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Intermezzo', 2024, ARRAY['Contemporary Fiction','Romance']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Sally Rooney'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sally Rooney'] WHERE m.title = 'Intermezzo' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sally Rooney'] WHERE m.title = 'Intermezzo' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Beautiful World, Where Are You
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Beautiful World, Where Are You', 2021, ARRAY['Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Sally Rooney'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sally Rooney'] WHERE m.title = 'Beautiful World, Where Are You' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sally Rooney'] WHERE m.title = 'Beautiful World, Where Are You' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Ripe
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Ripe', 2023, ARRAY['Dystopian','Psychological Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Sarah Rose Etter'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sarah Rose Etter'] WHERE m.title = 'Ripe' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sarah Rose Etter'] WHERE m.title = 'Ripe' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Haunting of Hill House
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Haunting of Hill House', 1959, ARRAY['Gothic Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Shirley Jackson'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Shirley Jackson'] WHERE m.title = 'The Haunting of Hill House' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Shirley Jackson'] WHERE m.title = 'The Haunting of Hill House' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Either/Or
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Either/Or', 1843, ARRAY['Philosophical Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Søren Kierkegaard'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Søren Kierkegaard'] WHERE m.title = 'Either/Or' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Søren Kierkegaard'] WHERE m.title = 'Either/Or' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- On Photography
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'On Photography', 1977, ARRAY['Non-fiction','Art Criticism']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Susan Sontag'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Susan Sontag'] WHERE m.title = 'On Photography' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Susan Sontag'] WHERE m.title = 'On Photography' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Beloved
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Beloved', 1987, ARRAY['Gothic','Historical Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Toni Morrison'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Toni Morrison'] WHERE m.title = 'Beloved' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Toni Morrison'] WHERE m.title = 'Beloved' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Before the Coffee Gets Cold
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Before the Coffee Gets Cold', 2015, ARRAY['Fantasy','Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Toshikazu Kawaguchi'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Toshikazu Kawaguchi'] WHERE m.title = 'Before the Coffee Gets Cold' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Toshikazu Kawaguchi'] WHERE m.title = 'Before the Coffee Gets Cold' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Lost on Me
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Lost on Me', 2022, ARRAY['Bildungsroman','Autofiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Veronica Raimo'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Veronica Raimo'] WHERE m.title = 'Lost on Me' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Veronica Raimo'] WHERE m.title = 'Lost on Me' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Orlando
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Orlando', 1928, ARRAY['Modernist','Speculative Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Virginia Woolf'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Virginia Woolf'] WHERE m.title = 'Orlando' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Virginia Woolf'] WHERE m.title = 'Orlando' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- To the Lighthouse
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'To the Lighthouse', 1927, ARRAY['Modernist']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Virginia Woolf'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Virginia Woolf'] WHERE m.title = 'To the Lighthouse' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Virginia Woolf'] WHERE m.title = 'To the Lighthouse' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Lolita
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Lolita', 1955, ARRAY['Classic Literature','Psychological']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Vladimir Nabokov'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Vladimir Nabokov'] WHERE m.title = 'Lolita' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Vladimir Nabokov'] WHERE m.title = 'Lolita' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Heart and Science
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Heart and Science', 1883, ARRAY['Gothic','Sensation Novel']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Wilkie Collins'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Wilkie Collins'] WHERE m.title = 'Heart and Science' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Wilkie Collins'] WHERE m.title = 'Heart and Science' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Woman in White
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Woman in White', 1859, ARRAY['Sensation Novel','Mystery']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Wilkie Collins'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Wilkie Collins'] WHERE m.title = 'The Woman in White' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Wilkie Collins'] WHERE m.title = 'The Woman in White' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Sound and the Fury
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Sound and the Fury', 1929, ARRAY['Modernist','Southern Gothic']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['William Faulkner'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['William Faulkner'] WHERE m.title = 'The Sound and the Fury' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['William Faulkner'] WHERE m.title = 'The Sound and the Fury' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- As I Lay Dying
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'As I Lay Dying', 1930, ARRAY['Modernist','Southern Gothic']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['William Faulkner'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['William Faulkner'] WHERE m.title = 'As I Lay Dying' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['William Faulkner'] WHERE m.title = 'As I Lay Dying' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Essential Wordsworth
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Essential Wordsworth', 2011, ARRAY['Poetry']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['William Wordsworth'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['William Wordsworth'] WHERE m.title = 'Essential Wordsworth' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['William Wordsworth'] WHERE m.title = 'Essential Wordsworth' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Taiwan Travelogue
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Taiwan Travelogue', 2024, ARRAY['Historical Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Yang Shuang-zi'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Yang Shuang-zi'] WHERE m.title = 'Taiwan Travelogue' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Yang Shuang-zi'] WHERE m.title = 'Taiwan Travelogue' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- We
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'We', 1924, ARRAY['Dystopian','Sci-Fi']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Yevgeny Zamyatin'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Yevgeny Zamyatin'] WHERE m.title = 'We' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Yevgeny Zamyatin'] WHERE m.title = 'We' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Memory Police
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Memory Police', 1994, ARRAY['Dystopian','Sci-Fi']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Yoko Ogawa'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Yoko Ogawa'] WHERE m.title = 'The Memory Police' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Yoko Ogawa'] WHERE m.title = 'The Memory Police' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Tokyo Ueno Station
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Tokyo Ueno Station', 2014, ARRAY['Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Yu Miri'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'physical', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Yu Miri'] WHERE m.title = 'Tokyo Ueno Station' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Yu Miri'] WHERE m.title = 'Tokyo Ueno Station' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Love Hypothesis
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Love Hypothesis', 2021, ARRAY['Contemporary Romance']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Ali Hazelwood'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 0.5, '2021-09-28' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ali Hazelwood'] WHERE m.title = 'The Love Hypothesis' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-09-26' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ali Hazelwood'] WHERE m.title = 'The Love Hypothesis' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Rebecca
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Rebecca', 1938, ARRAY['Gothic Fiction','Mystery']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Daphne du Maurier'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2025-02-12' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Daphne du Maurier'] WHERE m.title = 'Rebecca' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-10-10' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Daphne du Maurier'] WHERE m.title = 'Rebecca' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Secret History
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Secret History', 1992, ARRAY['Dark Academia']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Donna Tartt'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2.5, '2021-07-12' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Donna Tartt'] WHERE m.title = 'The Secret History' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-06-20' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Donna Tartt'] WHERE m.title = 'The Secret History' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Wuthering Heights
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Wuthering Heights', 1847, ARRAY['Gothic Fiction','Tragedy']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Emily Bronte'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2.5, '2021-11-15' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Emily Bronte'] WHERE m.title = 'Wuthering Heights' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-10-25' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Emily Bronte'] WHERE m.title = 'Wuthering Heights' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Guest
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Guest', 2023, ARRAY['Psychological Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Emma Cline'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1.5, '2025-08-22' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Emma Cline'] WHERE m.title = 'The Guest' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-08-05' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Emma Cline'] WHERE m.title = 'The Guest' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Metamorphesis
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Metamorphesis', 1915, ARRAY['Absurdist Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Franz Kafka'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2021-07-13' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Franz Kafka'] WHERE m.title = 'The Metamorphesis' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-07-13' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Franz Kafka'] WHERE m.title = 'The Metamorphesis' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Notes from the Underground
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Notes from the Underground', 1864, ARRAY['Existential Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Fyodor Dostoevsky'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2025-12-23' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Fyodor Dostoevsky'] WHERE m.title = 'Notes from the Underground' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-09-04' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Fyodor Dostoevsky'] WHERE m.title = 'Notes from the Underground' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- White Nights
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'White Nights', 1848, ARRAY['Sentimental Fiction','Short Story']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Fyodor Dostoevsky'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2025-06-04' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Fyodor Dostoevsky'] WHERE m.title = 'White Nights' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-06-04' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Fyodor Dostoevsky'] WHERE m.title = 'White Nights' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Crime and Punishment
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Crime and Punishment', 1866, ARRAY['Psychological Fiction','Classic']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Fyodor Dostoevsky'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2021-12-06' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Fyodor Dostoevsky'] WHERE m.title = 'Crime and Punishment' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-10-29' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Fyodor Dostoevsky'] WHERE m.title = 'Crime and Punishment' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Norwegian Wood
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Norwegian Wood', 1987, ARRAY['Literary Fiction','Coming-of-age']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Haruki Murakami'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2021-08-31' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Haruki Murakami'] WHERE m.title = 'Norwegian Wood' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-07-14' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Haruki Murakami'] WHERE m.title = 'Norwegian Wood' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Giovanni's Room
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Giovanni''s Room', 1956, ARRAY['LGBTQ+ Fiction','Literary']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['James Baldwin'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2025-11-26' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['James Baldwin'] WHERE m.title = 'Giovanni''s Room' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-09-09' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['James Baldwin'] WHERE m.title = 'Giovanni''s Room' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Wall
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Wall', 1963, ARRAY['Dystopian','Survival']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Marlen Haushofer'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2025-01-13' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Marlen Haushofer'] WHERE m.title = 'The Wall' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2024-07-02' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Marlen Haushofer'] WHERE m.title = 'The Wall' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Master and Margarita
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Master and Margarita', 1967, ARRAY['Magical Realism','Satire']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Mikhail Bulgakov'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2025-06-12' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mikhail Bulgakov'] WHERE m.title = 'The Master and Margarita' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-03-02' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mikhail Bulgakov'] WHERE m.title = 'The Master and Margarita' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- We Love You, Bunny (#2)
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'We Love You, Bunny (#2)', 2025, ARRAY['Gothic','Satire']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Mona Awad'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1, '2025-12-12' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mona Awad'] WHERE m.title = 'We Love You, Bunny (#2)' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-12-01' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mona Awad'] WHERE m.title = 'We Love You, Bunny (#2)' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- All's Well
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'All''s Well', 2021, ARRAY['Dark Comedy','Surrealism']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Mona Awad'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2024-02-07' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mona Awad'] WHERE m.title = 'All''s Well' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2023-08-13' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mona Awad'] WHERE m.title = 'All''s Well' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Bunny (#1)
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Bunny (#1)', 2019, ARRAY['Dark Academia','Satire']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Mona Awad'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2.5, '2021-09-16' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mona Awad'] WHERE m.title = 'Bunny (#1)' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-09-01' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mona Awad'] WHERE m.title = 'Bunny (#1)' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Exciting Times
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Exciting Times', 2020, ARRAY['Contemporary Fiction','Romance']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Naoise Dolan'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1, '2024-03-31' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Naoise Dolan'] WHERE m.title = 'Exciting Times' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2023-06-29' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Naoise Dolan'] WHERE m.title = 'Exciting Times' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Model Home
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Model Home', 2024, ARRAY['Horror','Speculative Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Rivers Solomon'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1.5, '2025-02-24' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Rivers Solomon'] WHERE m.title = 'Model Home' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-02-12' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Rivers Solomon'] WHERE m.title = 'Model Home' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Conversations with Friends
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Conversations with Friends', 2017, ARRAY['Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Sally Rooney'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1.5, '2021-10-04' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sally Rooney'] WHERE m.title = 'Conversations with Friends' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-09-16' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sally Rooney'] WHERE m.title = 'Conversations with Friends' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Days at the Morisaki Bookshop (#1)
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Days at the Morisaki Bookshop (#1)', 2009, ARRAY['Contemporary Fiction','Comfort']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Satoshi Yagisawa'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1.5, '2025-01-15' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Satoshi Yagisawa'] WHERE m.title = 'Days at the Morisaki Bookshop (#1)' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-01-14' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Satoshi Yagisawa'] WHERE m.title = 'Days at the Morisaki Bookshop (#1)' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Convenience Store Woman
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Convenience Store Woman', 2016, ARRAY['Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Sayaka Murata'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2021-10-20' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sayaka Murata'] WHERE m.title = 'Convenience Store Woman' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-10-12' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sayaka Murata'] WHERE m.title = 'Convenience Store Woman' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Woman Destroyed
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Woman Destroyed', 1967, ARRAY['Existential Fiction','Short Stories']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Simone de Beauvoir'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2.5, '2026-01-09' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Simone de Beauvoir'] WHERE m.title = 'The Woman Destroyed' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-12-18' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Simone de Beauvoir'] WHERE m.title = 'The Woman Destroyed' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Pet Sematary
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Pet Sematary', 1983, ARRAY['Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Stephen King'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2, '2025-06-23' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Stephen King'] WHERE m.title = 'Pet Sematary' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-06-13' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Stephen King'] WHERE m.title = 'Pet Sematary' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Illness as Metaphor and AIDS and Its Metaphors
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Illness as Metaphor and AIDS and Its Metaphors', 1978, ARRAY['Non-fiction','Essays']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Susan Sontag'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 2.5, '2025-09-03' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Susan Sontag'] WHERE m.title = 'Illness as Metaphor and AIDS and Its Metaphors' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-08-11' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Susan Sontag'] WHERE m.title = 'Illness as Metaphor and AIDS and Its Metaphors' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- The Seven Husbands of Evelyn Hugo
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Seven Husbands of Evelyn Hugo', 2017, ARRAY['Historical Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Taylor Jenkins Reid'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1.5, '2021-09-07' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Taylor Jenkins Reid'] WHERE m.title = 'The Seven Husbands of Evelyn Hugo' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-08-19' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Taylor Jenkins Reid'] WHERE m.title = 'The Seven Husbands of Evelyn Hugo' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Perfection
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Perfection', 2023, ARRAY['Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Vincenzo Latronico'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', 'none', 1.5, '2025-11-28' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Vincenzo Latronico'] WHERE m.title = 'Perfection' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-11-27' FROM entries e WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Vincenzo Latronico'] WHERE m.title = 'Perfection' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- Motherthing
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Motherthing', 2022, ARRAY['Black Comedy','Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Ainslie Hogarth'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ainslie Hogarth'] WHERE m.title = 'Motherthing' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Hounding
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Hounding', 2024, ARRAY['Folk Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Aliya Whiteley'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Aliya Whiteley'] WHERE m.title = 'The Hounding' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Indelicacy
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Indelicacy', 2020, ARRAY['Literary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Amina Cain'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Amina Cain'] WHERE m.title = 'Indelicacy' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Autobiography of Red
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Autobiography of Red', 1998, ARRAY['Verse Novel']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Anne Carson'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Anne Carson'] WHERE m.title = 'Autobiography of Red' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Typhoid Mary
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Typhoid Mary', 2001, ARRAY['Non-fiction','History']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Anthony Bourdain'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Anthony Bourdain'] WHERE m.title = 'Typhoid Mary' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hooked
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Hooked', 2024, ARRAY['Contemporary Fiction','Culinary']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Asako Yuzuki'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Asako Yuzuki'] WHERE m.title = 'Hooked' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Girl, Woman, Other
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Girl, Woman, Other', 2019, ARRAY['Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Bernardine Evaristo'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Bernardine Evaristo'] WHERE m.title = 'Girl, Woman, Other' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- My Policeman
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'My Policeman', 2012, ARRAY['Historical Romance']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Bethan Roberts'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Bethan Roberts'] WHERE m.title = 'My Policeman' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Her Body and Other Parties
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Her Body and Other Parties', 2017, ARRAY['Magical Realism']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Carmen Maria Machado'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Carmen Maria Machado'] WHERE m.title = 'Her Body and Other Parties' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- In the Dream House
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'In the Dream House', 2019, ARRAY['Memoir','Non-fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Carmen Maria Machado'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Carmen Maria Machado'] WHERE m.title = 'In the Dream House' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Möbius Book
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Möbius Book', 2025, ARRAY['Hybrid Memoir','Novella']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Catherine Lacey'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Catherine Lacey'] WHERE m.title = 'The Möbius Book' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Normal Woman
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Normal Woman', 2024, ARRAY['Psychological Thriller']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Catriona Ward'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Catriona Ward'] WHERE m.title = 'Normal Woman' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nobody Asked for This
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Nobody Asked for This', 2024, ARRAY['Essays','Humor']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Cazzie David'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Cazzie David'] WHERE m.title = 'Nobody Asked for This' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A Tale of Two Cities
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'A Tale of Two Cities', 1859, ARRAY['Historical Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Charles Dickens'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Charles Dickens'] WHERE m.title = 'A Tale of Two Cities' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Kim Jiyoung, Born 1982
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Kim Jiyoung, Born 1982', 2016, ARRAY['Feminist Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Cho Nam-joo'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Cho Nam-joo'] WHERE m.title = 'Kim Jiyoung, Born 1982' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Brutes
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Brutes', 2023, ARRAY['Coming-of-age','Surrealism']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Dizz Tate'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Dizz Tate'] WHERE m.title = 'Brutes' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Either/Or
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Either/Or', 2022, ARRAY['Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Elif Batuman'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Elif Batuman'] WHERE m.title = 'Either/Or' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bad Fruit
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Bad Fruit', 2022, ARRAY['Psychological Thriller']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Ella King'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ella King'] WHERE m.title = 'Bad Fruit' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Grey Dog
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Grey Dog', 2024, ARRAY['Gothic Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Elliott Gish'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Elliott Gish'] WHERE m.title = 'Grey Dog' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Creep
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Creep', 2024, ARRAY['Psychological Thriller']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Emma van Straaten'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Emma van Straaten'] WHERE m.title = 'Creep' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Things Have Gotten Worse Since We Last Spoke
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Things Have Gotten Worse Since We Last Spoke', 2021, ARRAY['Epistolary Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Eric LaRocca'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Eric LaRocca'] WHERE m.title = 'Things Have Gotten Worse Since We Last Spoke' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Loved One
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Loved One', 1948, ARRAY['Satire']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Evelyn Waugh'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Evelyn Waugh'] WHERE m.title = 'The Loved One' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Paradais
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Paradais', 2021, ARRAY['Noir','Literary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Fernanda Melchor'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Fernanda Melchor'] WHERE m.title = 'Paradais' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- If I Had Your Face
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'If I Had Your Face', 2020, ARRAY['Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Frances Cha'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Frances Cha'] WHERE m.title = 'If I Had Your Face' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Small Rain
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Small Rain', 2024, ARRAY['Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Garth Greenwell'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Garth Greenwell'] WHERE m.title = 'Small Rain' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- My Phantoms
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'My Phantoms', 2021, ARRAY['Literary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Gwendoline Riley'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Gwendoline Riley'] WHERE m.title = 'My Phantoms' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Banal Nightmare
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Banal Nightmare', 2024, ARRAY['Contemporary Fiction','Satire']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Halle Butler'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Halle Butler'] WHERE m.title = 'Banal Nightmare' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Vegetarian
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Vegetarian', 2007, ARRAY['Psychological Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Han Kang'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Han Kang'] WHERE m.title = 'The Vegetarian' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Last Sane Woman
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Last Sane Woman', 2024, ARRAY['Literary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Hannah Regel'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Hannah Regel'] WHERE m.title = 'The Last Sane Woman' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- They
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'They', 2023, ARRAY['Minimalist Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Helle Helle'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Helle Helle'] WHERE m.title = 'They' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Deep Cuts
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Deep Cuts', 2024, ARRAY['Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Holly Gramazio'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Holly Gramazio'] WHERE m.title = 'Deep Cuts' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A People's History of the United States: 1492-Present
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'A People''s History of the United States: 1492-Present', 1980, ARRAY['Non-fiction','History']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Howard Zinn'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Howard Zinn'] WHERE m.title = 'A People''s History of the United States: 1492-Present' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Another Country
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Another Country', 1962, ARRAY['Literary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['James Baldwin'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['James Baldwin'] WHERE m.title = 'Another Country' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- If Beale Street Could Talk
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'If Beale Street Could Talk', 1974, ARRAY['Literary Fiction','Romance']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['James Baldwin'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['James Baldwin'] WHERE m.title = 'If Beale Street Could Talk' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sense and Sensibility
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Sense and Sensibility', 1811, ARRAY['Classic Literature','Romance']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Jane Austen'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Jane Austen'] WHERE m.title = 'Sense and Sensibility' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Emma
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Emma', 1815, ARRAY['Classic Literature','Romance']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Jane Austen'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Jane Austen'] WHERE m.title = 'Emma' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Blue Nights
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Blue Nights', 2011, ARRAY['Memoir','Non-fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Joan Didion'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Joan Didion'] WHERE m.title = 'Blue Nights' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Clouds
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Clouds', 1985, ARRAY['Philosophical Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Juan José Saer'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Juan José Saer'] WHERE m.title = 'The Clouds' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Road in is Not the Same Road Out
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Road in is Not the Same Road Out', 2015, ARRAY['Poetry']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Karen Solie'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Karen Solie'] WHERE m.title = 'The Road in is Not the Same Road Out' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Dilemmas of Working Women
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Dilemmas of Working Women', 2023, ARRAY['Non-fiction','Sociology']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Katja Iversen'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Katja Iversen'] WHERE m.title = 'The Dilemmas of Working Women' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Come rain or come shine
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Come rain or come shine', 2015, ARRAY['Short Stories']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Kazuo Ishiguro'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Kazuo Ishiguro'] WHERE m.title = 'Come rain or come shine' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Emperor of Gladness
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Emperor of Gladness', 2024, ARRAY['Literary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Kevin Brockmeier'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Kevin Brockmeier'] WHERE m.title = 'The Emperor of Gladness' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Lamb
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Lamb', 2024, ARRAY['Folk Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Lucy Rose'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Lucy Rose'] WHERE m.title = 'The Lamb' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- One, None and a Hundred Thousand
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'One, None and a Hundred Thousand', 1926, ARRAY['Metafiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Luigi Pirandello'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Luigi Pirandello'] WHERE m.title = 'One, None and a Hundred Thousand' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Argonauts
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Argonauts', 2015, ARRAY['Memoir','Lyric Essay']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Maggie Nelson'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Maggie Nelson'] WHERE m.title = 'The Argonauts' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Thirst
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Thirst', 2023, ARRAY['Gothic','Vampire Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Marina Yuszczuk'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Marina Yuszczuk'] WHERE m.title = 'Thirst' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Black Buck
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Black Buck', 2021, ARRAY['Satire']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Mateo Askaripour'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mateo Askaripour'] WHERE m.title = 'Black Buck' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Verdigris
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Verdigris', 2024, ARRAY['Literary Fiction','Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Michele Mari'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Michele Mari'] WHERE m.title = 'Verdigris' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mild Vertigo
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Mild Vertigo', 2023, ARRAY['Surrealist Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Mieko Kanai'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mieko Kanai'] WHERE m.title = 'Mild Vertigo' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Breasts and Eggs
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Breasts and Eggs', 2019, ARRAY['Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Mieko Kawakami'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Mieko Kawakami'] WHERE m.title = 'Breasts and Eggs' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Out
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Out', 1997, ARRAY['Crime','Noir']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Natsuo Kirino'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Natsuo Kirino'] WHERE m.title = 'Out' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- On Earth We're Briefly Gorgeous
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'On Earth We''re Briefly Gorgeous', 2019, ARRAY['Autofiction','Poetry']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Ocean Vuong'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ocean Vuong'] WHERE m.title = 'On Earth We''re Briefly Gorgeous' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Alone With You in Ether
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Alone With You in Ether', 2020, ARRAY['Contemporary Romance']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Olivie Blake'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Olivie Blake'] WHERE m.title = 'Alone With You in Ether' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Orlam
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Orlam', 2022, ARRAY['Poetry']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['PJ Harvey'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['PJ Harvey'] WHERE m.title = 'Orlam' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Notes of a Crocodile
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Notes of a Crocodile', 1994, ARRAY['LGBTQ+ Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Qiu Miaojin'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Qiu Miaojin'] WHERE m.title = 'Notes of a Crocodile' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Luster
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Luster', 2020, ARRAY['Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Raven Leilani'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Raven Leilani'] WHERE m.title = 'Luster' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Something Wicked This Way Comes
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Something Wicked This Way Comes', 1962, ARRAY['Dark Fantasy','Horror']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Ray Bradbury'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Ray Bradbury'] WHERE m.title = 'Something Wicked This Way Comes' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- In Watermelon Sugar
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'In Watermelon Sugar', 1968, ARRAY['Surrealism']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Richard Brautigan'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Richard Brautigan'] WHERE m.title = 'In Watermelon Sugar' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Earthlings
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Earthlings', 2018, ARRAY['Surrealist Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Sayaka Murata'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sayaka Murata'] WHERE m.title = 'Earthlings' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- La chimera
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'La chimera', 1990, ARRAY['Historical Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Sebastiano Vassalli'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Sebastiano Vassalli'] WHERE m.title = 'La chimera' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hangsaman
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Hangsaman', 1951, ARRAY['Psychological Gothic']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Shirley Jackson'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Shirley Jackson'] WHERE m.title = 'Hangsaman' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rouge Street
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Rouge Street', 2022, ARRAY['Neo-noir Novellas']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Shuang Xuetao'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Shuang Xuetao'] WHERE m.title = 'Rouge Street' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Kitten
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Kitten', 2024, ARRAY['Contemporary Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Stacey Yu'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Stacey Yu'] WHERE m.title = 'Kitten' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wish Her Safe At Home
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Wish Her Safe At Home', 1970, ARRAY['Psychological Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Stephen Benatar'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Stephen Benatar'] WHERE m.title = 'Wish Her Safe At Home' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Against Interpretation
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Against Interpretation', 1966, ARRAY['Non-fiction','Criticism']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Susan Sontag'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Susan Sontag'] WHERE m.title = 'Against Interpretation' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- On Women
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'On Women', 2023, ARRAY['Non-fiction','Essays']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Susan Sontag'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Susan Sontag'] WHERE m.title = 'On Women' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Notes on 'Camp'
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Notes on ''Camp''', 1964, ARRAY['Cultural Criticism']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Susan Sontag'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Susan Sontag'] WHERE m.title = 'Notes on ''Camp''' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Regarding the Pain of Others
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Regarding the Pain of Others', 2003, ARRAY['Non-fiction','Essays']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Susan Sontag'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Susan Sontag'] WHERE m.title = 'Regarding the Pain of Others' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Season of Migration to the North
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Season of Migration to the North', 1966, ARRAY['Post-colonial Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Tayeb Salih'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Tayeb Salih'] WHERE m.title = 'Season of Migration to the North' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rejection
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Rejection', 2024, ARRAY['Satire','Contemporary']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Tony Tulathimutte'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Tony Tulathimutte'] WHERE m.title = 'Rejection' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mrs. Dalloway
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Mrs. Dalloway', 1925, ARRAY['Modernist']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Virginia Woolf'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Virginia Woolf'] WHERE m.title = 'Mrs. Dalloway' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Moonstone
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'The Moonstone', 1868, ARRAY['Detective Fiction']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Wilkie Collins'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Wilkie Collins'] WHERE m.title = 'The Moonstone' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Almond
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Almond', 2017, ARRAY['Literary','YA']) RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Won-pyung Sohn'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Won-pyung Sohn'] WHERE m.title = 'Almond' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;


-- ========== DM BOOKS ==========
-- Antkind
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Antkind', NULL, '{}') RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Charlie Kaufman'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'consuming', 'physical', NULL, '2026-03-01' FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Charlie Kaufman'] WHERE m.title = 'Antkind' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', '2026-03-01' FROM entries e WHERE e.user_id = '3caf032e-8303-4cc4-a4e9-5e624afb2266' AND e.media_id = (SELECT m.id FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Charlie Kaufman'] WHERE m.title = 'Antkind' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1) ON CONFLICT (entry_id) DO NOTHING;

-- What I Talk About When I Talk About Running
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'What I Talk About When I Talk About Running', NULL, '{}') RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['Haruki Murakami'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['Haruki Murakami'] WHERE m.title = 'What I Talk About When I Talk About Running' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Life: a Users Manual
WITH m AS (INSERT INTO media (media_type, title, year, genres) VALUES ('book', 'Life: a Users Manual', NULL, '{}') RETURNING id) INSERT INTO books (media_id, authors) SELECT id, ARRAY['George Perec'] FROM m;
INSERT INTO entries (media_id, user_id, status, ownership, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', 'none', NULL, NULL FROM media m JOIN books s ON s.media_id = m.id AND s.authors = ARRAY['George Perec'] WHERE m.title = 'Life: a Users Manual' AND m.media_type = 'book' ORDER BY m.created_at DESC LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;


COMMIT;