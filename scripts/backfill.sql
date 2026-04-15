-- Ourchive backfill generated 2026-04-15T02:21:27.681Z
BEGIN;

-- Ensure profiles exist for both users
INSERT INTO profiles (id, display_name) VALUES
  ('3caf032e-8303-4cc4-a4e9-5e624afb2266', 'DM'),
  ('74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'AB')
ON CONFLICT (id) DO NOTHING;

-- ========== MOVIES ==========
-- Tampopo
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Tampopo', 1985, ARRAY['Comedy','Ramen Western'], '{"director":"Jūzō Itami"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2026-04-07' FROM media m WHERE m.title = 'Tampopo' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-04-07' FROM media m WHERE m.title = 'Tampopo' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Oddity
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Oddity', 2024, ARRAY['Horror','Thriller'], '{"director":"Damian McCarthy"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2026-03-28' FROM media m WHERE m.title = 'Oddity' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-03-28' FROM media m WHERE m.title = 'Oddity' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Watermelon Woman
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Watermelon Woman', 1996, ARRAY['Comedy','Romance','Drama','LGBT+'], '{"director":"Cheryl Dunye"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2026-03-21' FROM media m WHERE m.title = 'The Watermelon Woman' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-03-21' FROM media m WHERE m.title = 'The Watermelon Woman' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Undertone
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Undertone', 2025, ARRAY['Horror'], '{"director":"Ian Tuason"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2026-03-20' FROM media m WHERE m.title = 'Undertone' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-03-20' FROM media m WHERE m.title = 'Undertone' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Videodrome
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Videodrome', 1983, ARRAY['Body Horror','Sci-Fi'], '{"director":"David Cronenberg"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2026-03-18' FROM media m WHERE m.title = 'Videodrome' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-03-18' FROM media m WHERE m.title = 'Videodrome' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wuthering Heights
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Wuthering Heights', 2026, ARRAY['Romance','Drama','Period'], '{"director":"Emerald Fennell"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2026-03-18' FROM media m WHERE m.title = 'Wuthering Heights' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-03-18' FROM media m WHERE m.title = 'Wuthering Heights' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Master
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Master', 2012, ARRAY['Drama','Psychological','Period'], '{"director":"Paul Thomas Anderson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2026-03-16' FROM media m WHERE m.title = 'The Master' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-03-16' FROM media m WHERE m.title = 'The Master' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- One Battle After Another
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'One Battle After Another', 2025, ARRAY['Thriller','Comedy','Action'], '{"director":"Paul Thomas Anderson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2026-03-03' FROM media m WHERE m.title = 'One Battle After Another' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-03-03' FROM media m WHERE m.title = 'One Battle After Another' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Thing
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Thing', 1982, ARRAY['Sci-Fi','Horror'], '{"director":"John Carpenter"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2026-02-27' FROM media m WHERE m.title = 'The Thing' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-02-27' FROM media m WHERE m.title = 'The Thing' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 28 Years Later: The Bone Temple
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', '28 Years Later: The Bone Temple', 2026, ARRAY['Horror','Apocalypse/Post-apocalyptic'], '{"director":"Nia DaCosta"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2026-02-27' FROM media m WHERE m.title = '28 Years Later: The Bone Temple' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-02-27' FROM media m WHERE m.title = '28 Years Later: The Bone Temple' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Marty Supreme
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Marty Supreme', 2025, ARRAY['Comedy','Drama'], '{"director":"Josh Safdie"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2026-02-14' FROM media m WHERE m.title = 'Marty Supreme' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-02-14' FROM media m WHERE m.title = 'Marty Supreme' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Happiness
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Happiness', 1998, ARRAY['Black Comedy','Drama'], '{"director":"Todd Solondz"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1.5, '2026-02-10' FROM media m WHERE m.title = 'Happiness' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-02-10' FROM media m WHERE m.title = 'Happiness' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Long Walk
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Long Walk', 2025, ARRAY['Thriller','Dystopian','Survival'], '{"director":"Francis Lawrence"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2026-01-29' FROM media m WHERE m.title = 'The Long Walk' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-01-29' FROM media m WHERE m.title = 'The Long Walk' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Mastermind
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Mastermind', 2025, ARRAY['Drama','Heist'], '{"director":"Kelly Reichardt"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-12-31' FROM media m WHERE m.title = 'The Mastermind' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-12-31' FROM media m WHERE m.title = 'The Mastermind' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Saint Maud
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Saint Maud', 2019, ARRAY['Psychological','Horror'], '{"director":"Rose Glass"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3, '2025-12-30' FROM media m WHERE m.title = 'Saint Maud' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-12-30' FROM media m WHERE m.title = 'Saint Maud' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- No Other Choice
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'No Other Choice', 2025, ARRAY['Black Comedy','Thriller'], '{"director":"Park Chan-wook"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-12-20' FROM media m WHERE m.title = 'No Other Choice' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-12-20' FROM media m WHERE m.title = 'No Other Choice' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wake Up Dead Man
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Wake Up Dead Man', 2025, ARRAY['Whodunnit','Mystery'], '{"director":"Rian Johnson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3, '2025-12-18' FROM media m WHERE m.title = 'Wake Up Dead Man' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-12-18' FROM media m WHERE m.title = 'Wake Up Dead Man' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- In the Mood for Love
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'In the Mood for Love', 2000, ARRAY['Romance','Drama'], '{"director":"Wong Kar-wai"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-12-08' FROM media m WHERE m.title = 'In the Mood for Love' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-12-08' FROM media m WHERE m.title = 'In the Mood for Love' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- How to Shoot a Ghost
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'How to Shoot a Ghost', 2025, ARRAY['Romance','Fantasy','Surrealist'], '{"director":"Charlie Kaufman"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2.5, '2025-12-04' FROM media m WHERE m.title = 'How to Shoot a Ghost' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-12-04' FROM media m WHERE m.title = 'How to Shoot a Ghost' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bugonia
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Bugonia', 2025, ARRAY['Black Comedy','Thriller'], '{"director":"Yorgos Lanthimos"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-11-30' FROM media m WHERE m.title = 'Bugonia' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-11-30' FROM media m WHERE m.title = 'Bugonia' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hard Eight
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Hard Eight', 1996, ARRAY['Crime','Neo-noir'], '{"director":"Paul Thomas Anderson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-11-24' FROM media m WHERE m.title = 'Hard Eight' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-11-24' FROM media m WHERE m.title = 'Hard Eight' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Secretary
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Secretary', 2002, ARRAY['Erotic','Comedy','Drama'], '{"director":"Steven Shainberg"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2025-11-12' FROM media m WHERE m.title = 'Secretary' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-11-12' FROM media m WHERE m.title = 'Secretary' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- M3GAN 2.0
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'M3GAN 2.0', 2025, ARRAY['Comedy','Sci-Fi','Slasher'], '{"director":"Gerard Johnstone"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1.5, '2025-11-11' FROM media m WHERE m.title = 'M3GAN 2.0' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-11-11' FROM media m WHERE m.title = 'M3GAN 2.0' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pulse
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Pulse', 2001, ARRAY['Horror','Supernatural','Techno-horror'], '{"director":"Kiyoshi Kurosawa"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-10-30' FROM media m WHERE m.title = 'Pulse' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-10-30' FROM media m WHERE m.title = 'Pulse' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cemetery Man
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Cemetery Man', 1994, ARRAY['Black Comedy','Romance','Gothic','Surrealist'], '{"director":"Michele Soavi"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-10-29' FROM media m WHERE m.title = 'Cemetery Man' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-10-29' FROM media m WHERE m.title = 'Cemetery Man' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cloud
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Cloud', 2024, ARRAY['Thriller'], '{"director":"Kiyoshi Kurosawa"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-10-15' FROM media m WHERE m.title = 'Cloud' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-10-15' FROM media m WHERE m.title = 'Cloud' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Together
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Together', 2025, ARRAY['Body Horror','Supernatural'], '{"director":"Benoît Delépine, Gustave Kervern"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-09-21' FROM media m WHERE m.title = 'Together' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-09-21' FROM media m WHERE m.title = 'Together' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Celebration
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Celebration', 1998, ARRAY['Drama'], '{"director":"Thomas Vinterberg"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2025-09-16' FROM media m WHERE m.title = 'The Celebration' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-09-16' FROM media m WHERE m.title = 'The Celebration' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mile End Kicks
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Mile End Kicks', 2025, ARRAY['Comedy','Drama'], '{"director":"Chandler Levack"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-09-13' FROM media m WHERE m.title = 'Mile End Kicks' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-09-13' FROM media m WHERE m.title = 'Mile End Kicks' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Crimson Peak
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Crimson Peak', 2015, ARRAY['Gothic','Horror'], '{"director":"Guillermo del Toro"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-09-12' FROM media m WHERE m.title = 'Crimson Peak' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-09-12' FROM media m WHERE m.title = 'Crimson Peak' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Frankenstein
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Frankenstein', 2025, ARRAY['Gothic','Horror'], '{"director":"Guillermo del Toro"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2025-09-10' FROM media m WHERE m.title = 'Frankenstein' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-09-10' FROM media m WHERE m.title = 'Frankenstein' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Harold and Maud
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Harold and Maud', 1971, ARRAY['Black Comedy','Romance'], '{"director":"Hal Ashby"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-09-07' FROM media m WHERE m.title = 'Harold and Maud' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Harold and Maud' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sentimental Value
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Sentimental Value', 2025, ARRAY['Comedy','Drama'], '{"director":"Joachim Trier"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2025-09-05' FROM media m WHERE m.title = 'Sentimental Value' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-09-05' FROM media m WHERE m.title = 'Sentimental Value' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sick of Myself
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Sick of Myself', 2022, ARRAY['Black Comedy'], '{"director":"Kristoffer Borgli"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-09-03' FROM media m WHERE m.title = 'Sick of Myself' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-09-03' FROM media m WHERE m.title = 'Sick of Myself' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Monkey
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Monkey', 2025, ARRAY['Supernatural','Horror'], '{"director":"Osgood Perkins"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3, '2025-09-02' FROM media m WHERE m.title = 'The Monkey' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-09-02' FROM media m WHERE m.title = 'The Monkey' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wepons
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Wepons', 2025, ARRAY['Horror','Supernatural','Thriller'], '{"director":"Zach Cregger"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-09-01' FROM media m WHERE m.title = 'Wepons' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-09-01' FROM media m WHERE m.title = 'Wepons' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Thursday Murder Club
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Thursday Murder Club', 2025, ARRAY['Crime','Comedy'], '{"director":"Chris Columbus"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1.5, '2025-08-31' FROM media m WHERE m.title = 'The Thursday Murder Club' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-08-31' FROM media m WHERE m.title = 'The Thursday Murder Club' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mysterious Skin
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Mysterious Skin', 2004, ARRAY['LGBT+','Drama','Coming-of-age'], '{"director":"Gregg Araki"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2025-08-28' FROM media m WHERE m.title = 'Mysterious Skin' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Mysterious Skin' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 28 Years Later
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', '28 Years Later', 2025, ARRAY['Horror','Apocalypse/Post-apocalyptic'], '{"director":"Danny Boyle"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-08-16' FROM media m WHERE m.title = '28 Years Later' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-08-16' FROM media m WHERE m.title = '28 Years Later' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Eddington
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Eddington', 2025, ARRAY['Western','Satire'], '{"director":"Ari Aster"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1.5, '2025-07-31' FROM media m WHERE m.title = 'Eddington' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-07-31' FROM media m WHERE m.title = 'Eddington' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Badlands
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Badlands', 1973, ARRAY['Road Movie','Crime'], '{"director":"Terrence Malick"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-07-26' FROM media m WHERE m.title = 'Badlands' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-07-26' FROM media m WHERE m.title = 'Badlands' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- We're All Going to the World's Fair
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'We''re All Going to the World''s Fair', 2021, ARRAY['Coming-of-age','Horror'], '{"director":"Jane Schoenbrun"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-07-23' FROM media m WHERE m.title = 'We''re All Going to the World''s Fair' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-07-23' FROM media m WHERE m.title = 'We''re All Going to the World''s Fair' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- When Evil Lurks
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'When Evil Lurks', 2023, ARRAY['Supernatural','Horror'], '{"director":"Demián Rugna"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-07-19' FROM media m WHERE m.title = 'When Evil Lurks' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-07-19' FROM media m WHERE m.title = 'When Evil Lurks' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bring Her Back
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Bring Her Back', 2025, ARRAY['Horror','Supernatural'], '{"director":"Danny & Michael Philippou"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-07-19' FROM media m WHERE m.title = 'Bring Her Back' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-07-19' FROM media m WHERE m.title = 'Bring Her Back' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Memento
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Memento', 2000, ARRAY['Neo-noir','Mystery'], '{"director":"Christopher Nolan"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2025-07-18' FROM media m WHERE m.title = 'Memento' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Memento' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pet Sematary
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Pet Sematary', 1989, ARRAY['Horror','Supernatural'], '{"director":"Mary Lambert"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-07-05' FROM media m WHERE m.title = 'Pet Sematary' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Pet Sematary' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Erin Brockovich
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Erin Brockovich', 2000, ARRAY['Drama'], '{"director":"Steven Soderbergh"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-06-29' FROM media m WHERE m.title = 'Erin Brockovich' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-06-29' FROM media m WHERE m.title = 'Erin Brockovich' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 28 Days Later
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', '28 Days Later', 2002, ARRAY['Horror','Apocalypse/Post-apocalyptic'], '{"director":"Danny Boyle"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-06-29' FROM media m WHERE m.title = '28 Days Later' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-06-29' FROM media m WHERE m.title = '28 Days Later' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dogma
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Dogma', 1999, ARRAY['Satire','Comedy','Fantasy'], '{"director":"Kevin Smith"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-06-09' FROM media m WHERE m.title = 'Dogma' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-06-09' FROM media m WHERE m.title = 'Dogma' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Hunger
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Hunger', 1993, ARRAY['Horror','Gothic','Erotic'], '{"director":"Tony Scott"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-06-06' FROM media m WHERE m.title = 'The Hunger' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-06-06' FROM media m WHERE m.title = 'The Hunger' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Party Girl
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Party Girl', 1995, ARRAY['Comedy'], '{"director":"Daisy von Scherler Mayer"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-06-05' FROM media m WHERE m.title = 'Party Girl' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-06-05' FROM media m WHERE m.title = 'Party Girl' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Paddington in Peru
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Paddington in Peru', 2024, ARRAY['Adventure'], '{"director":"Dougal Wilson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-06-05' FROM media m WHERE m.title = 'Paddington in Peru' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-06-05' FROM media m WHERE m.title = 'Paddington in Peru' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mickey 17
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Mickey 17', 2025, ARRAY['Comedy','Sci-Fi'], '{"director":"Bong Joon-ho"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-05-31' FROM media m WHERE m.title = 'Mickey 17' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-05-31' FROM media m WHERE m.title = 'Mickey 17' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Friendship
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Friendship', 2024, ARRAY['Comedy','Satire'], '{"director":"Andrew DeYoung"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-05-29' FROM media m WHERE m.title = 'Friendship' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-05-29' FROM media m WHERE m.title = 'Friendship' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Blink Twice
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Blink Twice', 2024, ARRAY['Psychological','Thriller'], '{"director":"Zoë Kravitz"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-05-27' FROM media m WHERE m.title = 'Blink Twice' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-05-27' FROM media m WHERE m.title = 'Blink Twice' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Shepherds
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Shepherds', 2024, ARRAY['Drama'], '{"director":"Sophie Deraspe"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-05-09' FROM media m WHERE m.title = 'Shepherds' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-05-09' FROM media m WHERE m.title = 'Shepherds' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Saturday Night
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Saturday Night', 2024, ARRAY['Comedy','Biopic'], '{"director":"Jason Reitman"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-04-19' FROM media m WHERE m.title = 'Saturday Night' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Saturday Night' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Heretic
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Heretic', 2024, ARRAY['Psychological','Horror'], '{"director":"Scott Beck, Bryan Woods"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-04-04' FROM media m WHERE m.title = 'Heretic' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-04-04' FROM media m WHERE m.title = 'Heretic' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Sweet East
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Sweet East', 2023, ARRAY['Satire','Drama'], '{"director":"Sean Price Williams"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-04-03' FROM media m WHERE m.title = 'The Sweet East' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-04-03' FROM media m WHERE m.title = 'The Sweet East' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A Real Pain
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'A Real Pain', 2024, ARRAY['Comedy','Drama'], '{"director":"Jesse Eisenberg"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2025-02-28' FROM media m WHERE m.title = 'A Real Pain' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-02-28' FROM media m WHERE m.title = 'A Real Pain' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Companion
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Companion', 2025, ARRAY['Sci-Fi','Thriller'], '{"director":"Drew Hancock"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3, '2025-02-20' FROM media m WHERE m.title = 'Companion' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-02-20' FROM media m WHERE m.title = 'Companion' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Days of Heaven
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Days of Heaven', 1978, ARRAY['Romance','Drama'], '{"director":"Terrence Malick"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3, '2025-02-12' FROM media m WHERE m.title = 'Days of Heaven' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-02-12' FROM media m WHERE m.title = 'Days of Heaven' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sometimes I Think About Dying
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Sometimes I Think About Dying', 2023, ARRAY['Comedy','Drama','Surrealist'], '{"director":"Rachel Lambert"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-02-12' FROM media m WHERE m.title = 'Sometimes I Think About Dying' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-02-12' FROM media m WHERE m.title = 'Sometimes I Think About Dying' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Presence
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Presence', 2024, ARRAY['Psychological','Thriller'], '{"director":"Steven Soderbergh"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-02-03' FROM media m WHERE m.title = 'Presence' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-02-03' FROM media m WHERE m.title = 'Presence' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cube
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Cube', 1997, ARRAY['Sci-Fi','Horror'], '{"director":"Vincenzo Natali"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2025-02-01' FROM media m WHERE m.title = 'Cube' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-02-01' FROM media m WHERE m.title = 'Cube' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Adaptation
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Adaptation', 2002, ARRAY['Comedy','Meta'], '{"director":"Spike Jonze"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2025-01-28' FROM media m WHERE m.title = 'Adaptation' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-01-28' FROM media m WHERE m.title = 'Adaptation' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- My Bloody Valentine
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'My Bloody Valentine', 1981, ARRAY['Horror','Slasher'], '{"director":"George Mihalka"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-01-24' FROM media m WHERE m.title = 'My Bloody Valentine' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-01-24' FROM media m WHERE m.title = 'My Bloody Valentine' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Radio Rebel
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Radio Rebel', 2012, ARRAY['Comedy'], '{"director":"Peter Howitt"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 0.5, '2025-01-24' FROM media m WHERE m.title = 'Radio Rebel' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Radio Rebel' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Evil Does Not Exist
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Evil Does Not Exist', 2023, ARRAY['Drama'], '{"director":"Ryusuke Hamaguchi"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2025-01-23' FROM media m WHERE m.title = 'Evil Does Not Exist' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-01-23' FROM media m WHERE m.title = 'Evil Does Not Exist' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nosferatu
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Nosferatu', 2024, ARRAY['Gothic','Horror','Supernatural'], '{"director":"Robert Eggers"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2025-01-08' FROM media m WHERE m.title = 'Nosferatu' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-01-08' FROM media m WHERE m.title = 'Nosferatu' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Climax
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Climax', 2018, ARRAY['Music','Horror','Psychological'], '{"director":"Gaspar Noé"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-12-29' FROM media m WHERE m.title = 'Climax' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-12-29' FROM media m WHERE m.title = 'Climax' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Queer
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Queer', 2024, ARRAY['Drama','LGBT+','Period'], '{"director":"Luca Guadagnino"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-12-21' FROM media m WHERE m.title = 'Queer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-12-21' FROM media m WHERE m.title = 'Queer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Beetlejuice
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Beetlejuice', 1988, ARRAY['Horror','Comedy','Gothic'], '{"director":"Tim Burton"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-12-18' FROM media m WHERE m.title = 'Beetlejuice' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-12-18' FROM media m WHERE m.title = 'Beetlejuice' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Anora
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Anora', 2024, ARRAY['Comedy','Drama'], '{"director":"Sean Baker"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-12-17' FROM media m WHERE m.title = 'Anora' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-12-17' FROM media m WHERE m.title = 'Anora' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cyberbully
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Cyberbully', 2011, ARRAY['Drama','Coming-of-age'], '{"director":"Charles Binamé"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2024-12-11' FROM media m WHERE m.title = 'Cyberbully' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Cyberbully' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Love, Actually
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Love, Actually', 2003, ARRAY['Romance','Comedy'], '{"director":"Richard Curtis"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1, '2024-12-08' FROM media m WHERE m.title = 'Love, Actually' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-12-08' FROM media m WHERE m.title = 'Love, Actually' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ju-on: The Grudge
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Ju-on: The Grudge', 2002, ARRAY['Horror','Supernatural'], '{"director":"Takashi Shimizu"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-12-05' FROM media m WHERE m.title = 'Ju-on: The Grudge' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-12-05' FROM media m WHERE m.title = 'Ju-on: The Grudge' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Wild Robot
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Wild Robot', 2024, ARRAY['Animated','Sci-Fi'], '{"director":"Chris Sanders"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-12-02' FROM media m WHERE m.title = 'The Wild Robot' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-12-02' FROM media m WHERE m.title = 'The Wild Robot' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Time Cut
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Time Cut', 2024, ARRAY['Sci-Fi','Slasher'], '{"director":"Hannah Macpherson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1, '2024-11-06' FROM media m WHERE m.title = 'Time Cut' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Time Cut' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Terrifier 3
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Terrifier 3', 2024, ARRAY['Slasher'], '{"director":"Damien Leone"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-10-30' FROM media m WHERE m.title = 'Terrifier 3' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-10-30' FROM media m WHERE m.title = 'Terrifier 3' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Fog
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Fog', 1980, ARRAY['Horror','Supernatural'], '{"director":"John Carpenter"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-10-25' FROM media m WHERE m.title = 'The Fog' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-10-25' FROM media m WHERE m.title = 'The Fog' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- House
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'House', 1977, ARRAY['Horror','Comedy','Experimental'], '{"director":"Nobuhiko Obayashi"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2024-10-24' FROM media m WHERE m.title = 'House' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-10-24' FROM media m WHERE m.title = 'House' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dark Water
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Dark Water', 2002, ARRAY['Supernatural','Horror'], '{"director":"Hideo Nakata"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-10-23' FROM media m WHERE m.title = 'Dark Water' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-10-23' FROM media m WHERE m.title = 'Dark Water' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Woman of the Hour
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Woman of the Hour', 2023, ARRAY['Psychological','Crime','Thriller'], '{"director":"Anna Kendrick"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2.5, '2024-10-21' FROM media m WHERE m.title = 'Woman of the Hour' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-10-21' FROM media m WHERE m.title = 'Woman of the Hour' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cuckoo
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Cuckoo', 2024, ARRAY['Horror','Thriller'], '{"director":"Tilman Singer"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2024-10-21' FROM media m WHERE m.title = 'Cuckoo' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-10-21' FROM media m WHERE m.title = 'Cuckoo' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Texas Chainsaw Massacre
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Texas Chainsaw Massacre', 1974, ARRAY['Horror','Slasher'], '{"director":"Tobe Hooper"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-10-09' FROM media m WHERE m.title = 'The Texas Chainsaw Massacre' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-10-09' FROM media m WHERE m.title = 'The Texas Chainsaw Massacre' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Megalopolis
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Megalopolis', 2024, ARRAY['Sci-Fi','Epic'], '{"director":"Francis Ford Coppola"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1, '2024-10-09' FROM media m WHERE m.title = 'Megalopolis' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-10-09' FROM media m WHERE m.title = 'Megalopolis' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Creepy
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Creepy', 2016, ARRAY['Mystery','Thriller'], '{"director":"Kiyoshi Kurosawa"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-10-03' FROM media m WHERE m.title = 'Creepy' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-10-03' FROM media m WHERE m.title = 'Creepy' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- It Ends with Us
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'It Ends with Us', 2024, ARRAY['Romance','Drama'], '{"director":"Justin Baldoni"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1.5, '2024-10-01' FROM media m WHERE m.title = 'It Ends with Us' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'It Ends with Us' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Only the River Flows
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Only the River Flows', 2023, ARRAY['Neo-noir'], '{"director":"Wei Shujun"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-09-29' FROM media m WHERE m.title = 'Only the River Flows' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-09-29' FROM media m WHERE m.title = 'Only the River Flows' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Substance
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Substance', 2024, ARRAY['Body Horror'], '{"director":"Coralie Fargeat"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-09-28' FROM media m WHERE m.title = 'The Substance' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-09-28' FROM media m WHERE m.title = 'The Substance' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Uglies
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Uglies', 2024, ARRAY['Dystopian','Sci-Fi'], '{"director":"McG"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1, '2024-09-15' FROM media m WHERE m.title = 'Uglies' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Uglies' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Life of Chuck
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Life of Chuck', 2024, ARRAY['Drama'], '{"director":"Mike Flanagan"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2024-09-13' FROM media m WHERE m.title = 'The Life of Chuck' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-09-13' FROM media m WHERE m.title = 'The Life of Chuck' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Good Time
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Good Time', 2017, ARRAY['Crime','Thriller'], '{"director":"Josh & Benny Safdie"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-09-05' FROM media m WHERE m.title = 'Good Time' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-09-05' FROM media m WHERE m.title = 'Good Time' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wild at Heart
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Wild at Heart', 1990, ARRAY['Neo-noir','Road Movie'], '{"director":"David Lynch"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-08-28' FROM media m WHERE m.title = 'Wild at Heart' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-28' FROM media m WHERE m.title = 'Wild at Heart' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Challenger
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Challenger', 2024, ARRAY['Drama'], '{"director":"Luca Guadagnino"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-08-27' FROM media m WHERE m.title = 'Challenger' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-27' FROM media m WHERE m.title = 'Challenger' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Immaculate
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Immaculate', 2024, ARRAY['Psychological','Horror','Supernatural'], '{"director":"Michael Mohan"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3, '2024-08-21' FROM media m WHERE m.title = 'Immaculate' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-21' FROM media m WHERE m.title = 'Immaculate' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Alien: Romulus
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Alien: Romulus', 2024, ARRAY['Sci-Fi','Horror'], '{"director":"Fede Álvarez"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-08-21' FROM media m WHERE m.title = 'Alien: Romulus' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-21' FROM media m WHERE m.title = 'Alien: Romulus' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Perfect Days
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Perfect Days', 2023, ARRAY['Drama'], '{"director":"Wim Wenders"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-08-19' FROM media m WHERE m.title = 'Perfect Days' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-19' FROM media m WHERE m.title = 'Perfect Days' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bottle Rocket
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Bottle Rocket', 1996, ARRAY['Comedy','Crime'], '{"director":"Wes Anderson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2.5, '2024-08-15' FROM media m WHERE m.title = 'Bottle Rocket' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-15' FROM media m WHERE m.title = 'Bottle Rocket' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Aliens
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Aliens', 1986, ARRAY['Sci-Fi','Action'], '{"director":"James Cameron"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-08-14' FROM media m WHERE m.title = 'Aliens' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-14' FROM media m WHERE m.title = 'Aliens' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pecker
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Pecker', 1998, ARRAY['Comedy','LGBT+'], '{"director":"John Waters"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3, '2024-08-12' FROM media m WHERE m.title = 'Pecker' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-12' FROM media m WHERE m.title = 'Pecker' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Alien
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Alien', 1979, ARRAY['Horror','Sci-Fi'], '{"director":"Ridley Scott"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-08-10' FROM media m WHERE m.title = 'Alien' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-10' FROM media m WHERE m.title = 'Alien' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- An American Werewolf in London
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'An American Werewolf in London', 1981, ARRAY['Horror','Comedy'], '{"director":"John Landis"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-08-10' FROM media m WHERE m.title = 'An American Werewolf in London' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-10' FROM media m WHERE m.title = 'An American Werewolf in London' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Beau Travail
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Beau Travail', 1999, ARRAY['Drama'], '{"director":"Claire Denis"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-08-10' FROM media m WHERE m.title = 'Beau Travail' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-10' FROM media m WHERE m.title = 'Beau Travail' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- MaXXXine
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'MaXXXine', 2024, ARRAY['Slasher'], '{"director":"Ti West"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-08-09' FROM media m WHERE m.title = 'MaXXXine' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-09' FROM media m WHERE m.title = 'MaXXXine' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Paris, Texas
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Paris, Texas', 1984, ARRAY['Road Movie','Drama','Indie'], '{"director":"Wim Wenders"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2024-08-05' FROM media m WHERE m.title = 'Paris, Texas' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-05' FROM media m WHERE m.title = 'Paris, Texas' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I Still Know What You Did Last Summer
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'I Still Know What You Did Last Summer', 1998, ARRAY['Slasher'], '{"director":"Danny Cannon"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2024-08-05' FROM media m WHERE m.title = 'I Still Know What You Did Last Summer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-05' FROM media m WHERE m.title = 'I Still Know What You Did Last Summer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I Know What You Did Last Summer
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'I Know What You Did Last Summer', 1997, ARRAY['Slasher'], '{"director":"Jim Gillespie"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-08-04' FROM media m WHERE m.title = 'I Know What You Did Last Summer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-04' FROM media m WHERE m.title = 'I Know What You Did Last Summer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Airplane!
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Airplane!', 1980, ARRAY['Comedy','Drama'], '{"director":"David Zucker, Jim Abrahams, Jerry Zucker"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-07-29' FROM media m WHERE m.title = 'Airplane!' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-07-29' FROM media m WHERE m.title = 'Airplane!' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ginger Snaps
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Ginger Snaps', 2000, ARRAY['Horror','Supernatural','Fantasy'], '{"director":"John Fawcett"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-07-28' FROM media m WHERE m.title = 'Ginger Snaps' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-07-28' FROM media m WHERE m.title = 'Ginger Snaps' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Fargo
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Fargo', 1996, ARRAY['Black Comedy','Crime'], '{"director":"Joel & Ethan Coen"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2024-07-24' FROM media m WHERE m.title = 'Fargo' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-07-24' FROM media m WHERE m.title = 'Fargo' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Longlegs
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Longlegs', 2024, ARRAY['Supernatural','Horror','Thriller'], '{"director":"Osgood Perkins"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-07-19' FROM media m WHERE m.title = 'Longlegs' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-07-19' FROM media m WHERE m.title = 'Longlegs' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Vanishing
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Vanishing', 1988, ARRAY['Thriller','Psychological'], '{"director":"George Sluizer"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-07-18' FROM media m WHERE m.title = 'The Vanishing' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-07-18' FROM media m WHERE m.title = 'The Vanishing' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Skinamarink
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Skinamarink', 2022, ARRAY['Horror','Suspence'], '{"director":"Kyle Edward Ball"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 0.5, '2024-07-18' FROM media m WHERE m.title = 'Skinamarink' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-07-18' FROM media m WHERE m.title = 'Skinamarink' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Jaws
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Jaws', 1975, ARRAY['Thriller'], '{"director":"Steven Spielberg"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-07-13' FROM media m WHERE m.title = 'Jaws' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Jaws' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dealth Becomes Her
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Dealth Becomes Her', 1992, ARRAY['Black Comedy','Fantasy','Surrealist'], '{"director":"Robert Zemeckis"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-07-12' FROM media m WHERE m.title = 'Dealth Becomes Her' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Dealth Becomes Her' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nowhere
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Nowhere', 1997, ARRAY['Black Comedy','LGBT+'], '{"director":"Gregg Araki"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-07-12' FROM media m WHERE m.title = 'Nowhere' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Nowhere' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Posession
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Posession', 1981, ARRAY['Horror','Psychological'], '{"director":"Andrzej Żuławski"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-07-06' FROM media m WHERE m.title = 'Posession' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-07-06' FROM media m WHERE m.title = 'Posession' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pearl
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Pearl', 2022, ARRAY['Horror','Slasher','Psychological'], '{"director":"Ti West"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-07-05' FROM media m WHERE m.title = 'Pearl' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-07-05' FROM media m WHERE m.title = 'Pearl' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- X
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'X', 2022, ARRAY['Slasher'], '{"director":"Ti West"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-07-05' FROM media m WHERE m.title = 'X' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-07-05' FROM media m WHERE m.title = 'X' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Exhuma
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Exhuma', 2024, ARRAY['Supernatural','Horror'], '{"director":"Jang Jae-hyun"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-06-30' FROM media m WHERE m.title = 'Exhuma' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-06-30' FROM media m WHERE m.title = 'Exhuma' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- But I'm a Cheerleader
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'But I''m a Cheerleader', 1999, ARRAY['Comedy','LGBT+','Satire'], '{"director":"Jamie Babbit"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-06-29' FROM media m WHERE m.title = 'But I''m a Cheerleader' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'But I''m a Cheerleader' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Kinds of Kindness
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Kinds of Kindness', 2024, ARRAY['Black Comedy'], '{"director":"Yorgos Lanthimos"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-06-27' FROM media m WHERE m.title = 'Kinds of Kindness' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-06-27' FROM media m WHERE m.title = 'Kinds of Kindness' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I Use to Be Funny
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'I Use to Be Funny', 2023, ARRAY['Comedy'], '{"director":"Ally Pankiw"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-06-25' FROM media m WHERE m.title = 'I Use to Be Funny' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-06-25' FROM media m WHERE m.title = 'I Use to Be Funny' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- After Hours
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'After Hours', 1985, ARRAY['Surrealist','Neo-noir','Black Comedy'], '{"director":"Martin Scorsese"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2024-06-19' FROM media m WHERE m.title = 'After Hours' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'After Hours' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Late Night with the Devil
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Late Night with the Devil', 2023, ARRAY['Horror','Supernatural'], '{"director":"Cameron & Colin Cairnes"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3, '2024-06-15' FROM media m WHERE m.title = 'Late Night with the Devil' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-06-15' FROM media m WHERE m.title = 'Late Night with the Devil' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I Saw the TV Glow
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'I Saw the TV Glow', 2024, ARRAY['Horror','Drama','LGBT+'], '{"director":"Jane Schoenbrun"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-06-08' FROM media m WHERE m.title = 'I Saw the TV Glow' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-06-08' FROM media m WHERE m.title = 'I Saw the TV Glow' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mean Girls
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Mean Girls', 2024, ARRAY['Music','Comedy'], '{"director":"Samantha Jayne, Arturo Perez Jr."}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2.5, '2024-06-04' FROM media m WHERE m.title = 'Mean Girls' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Mean Girls' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lisa Frankenstein
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Lisa Frankenstein', 2024, ARRAY['Comedy','Horror'], '{"director":"Zelda Williams"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3, '2024-06-03' FROM media m WHERE m.title = 'Lisa Frankenstein' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Lisa Frankenstein' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Decision to Leave
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Decision to Leave', 2022, ARRAY['Mystery','Romance','Thriller'], '{"director":"Park Chan-wook"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-05-31' FROM media m WHERE m.title = 'Decision to Leave' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-05-31' FROM media m WHERE m.title = 'Decision to Leave' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Past Lives
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Past Lives', 2023, ARRAY['Drama','Romance'], '{"director":"Celine Song"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-05-31' FROM media m WHERE m.title = 'Past Lives' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-05-31' FROM media m WHERE m.title = 'Past Lives' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Battle Royal
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Battle Royal', 2000, ARRAY['Action','Thriller'], '{"director":"Kinji Fukasaku"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-05-30' FROM media m WHERE m.title = 'Battle Royal' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-05-30' FROM media m WHERE m.title = 'Battle Royal' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Godzilla Minus One
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Godzilla Minus One', 2023, ARRAY['Kaiju','Sci-Fi','Action'], '{"director":"Takashi Yamazaki"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-05-29' FROM media m WHERE m.title = 'Godzilla Minus One' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-05-29' FROM media m WHERE m.title = 'Godzilla Minus One' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Idea of You
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Idea of You', 2024, ARRAY['Romance','Comedy'], '{"director":"Michael Showalter"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-05-01' FROM media m WHERE m.title = 'The Idea of You' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Idea of You' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Anyone But You
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Anyone But You', 2023, ARRAY['Romance','Comedy'], '{"director":"Will Gluck"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 0.5, '2024-04-28' FROM media m WHERE m.title = 'Anyone But You' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-04-28' FROM media m WHERE m.title = 'Anyone But You' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Love Lies Bleeding
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Love Lies Bleeding', 2024, ARRAY['Romance','Thriller'], '{"director":"Rose Glass"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-04-18' FROM media m WHERE m.title = 'Love Lies Bleeding' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-04-18' FROM media m WHERE m.title = 'Love Lies Bleeding' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Madame Web
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Madame Web', 2024, ARRAY['Action','Comedy'], '{"director":"S.J. Clarkson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2024-04-14' FROM media m WHERE m.title = 'Madame Web' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-04-14' FROM media m WHERE m.title = 'Madame Web' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Turtles All the Way Down
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Turtles All the Way Down', 2024, ARRAY['Drama','Romance'], '{"director":"Hannah Marks"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-04-09' FROM media m WHERE m.title = 'Turtles All the Way Down' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-04-09' FROM media m WHERE m.title = 'Turtles All the Way Down' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Drive My Car
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Drive My Car', 2021, ARRAY['Drama'], '{"director":"Ryusuke Hamaguchi"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-03-12' FROM media m WHERE m.title = 'Drive My Car' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-03-12' FROM media m WHERE m.title = 'Drive My Car' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dune: Part 2
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Dune: Part 2', 2024, ARRAY['Sci-Fi','Adventure','Space Opera'], '{"director":"Denis Villeneuve"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-03-08' FROM media m WHERE m.title = 'Dune: Part 2' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-03-08' FROM media m WHERE m.title = 'Dune: Part 2' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Worst Person in the World
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Worst Person in the World', 2021, ARRAY['Romance','Comedy','Drama'], '{"director":"Joachim Trier"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-03-08' FROM media m WHERE m.title = 'Worst Person in the World' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-03-08' FROM media m WHERE m.title = 'Worst Person in the World' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Poor Things
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Poor Things', 2023, ARRAY['Black Comedy','Steampunk'], '{"director":"Yorgos Lanthimos"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-03-03' FROM media m WHERE m.title = 'Poor Things' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-03-03' FROM media m WHERE m.title = 'Poor Things' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Synecdoche, New York
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Synecdoche, New York', 2008, ARRAY['Psychological','Drama','Meta'], '{"director":"Charlie Kaufman"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-02-27' FROM media m WHERE m.title = 'Synecdoche, New York' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-02-27' FROM media m WHERE m.title = 'Synecdoche, New York' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Fallen Angels
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Fallen Angels', 1995, ARRAY['Crime','Romance','Drama'], '{"director":"Wong Kar-wai"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-02-20' FROM media m WHERE m.title = 'Fallen Angels' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-02-20' FROM media m WHERE m.title = 'Fallen Angels' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dreams
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Dreams', 1990, ARRAY['Fantasy','Anthology'], '{"director":"Akira Kurosawa"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-02-16' FROM media m WHERE m.title = 'Dreams' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, 4.5, '2024-02-16' FROM media m WHERE m.title = 'Dreams' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Twilight Saga: New Moon
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Twilight Saga: New Moon', 2009, ARRAY['Fantasy','Romance'], '{"director":"Chris Weitz"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2024-02-09' FROM media m WHERE m.title = 'Twilight Saga: New Moon' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-02-09' FROM media m WHERE m.title = 'Twilight Saga: New Moon' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- American Fiction
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'American Fiction', 2023, ARRAY['Satire','Comedy','Drama'], '{"director":"Cord Jefferson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-02-08' FROM media m WHERE m.title = 'American Fiction' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-02-08' FROM media m WHERE m.title = 'American Fiction' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Fallen Leaves
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Fallen Leaves', 2023, ARRAY['Romance','Comedy'], '{"director":"Aki Kaurismäki"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2024-02-06' FROM media m WHERE m.title = 'Fallen Leaves' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-02-06' FROM media m WHERE m.title = 'Fallen Leaves' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Society of the Snow
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Society of the Snow', 2023, ARRAY['Drama','Survival'], '{"director":"J.A. Bayona"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-01-29' FROM media m WHERE m.title = 'Society of the Snow' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-01-29' FROM media m WHERE m.title = 'Society of the Snow' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A Charlie Brown Christmas
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'A Charlie Brown Christmas', 1965, ARRAY['Animated'], '{"director":"Bill Melendez"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2024-01-27' FROM media m WHERE m.title = 'A Charlie Brown Christmas' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-01-27' FROM media m WHERE m.title = 'A Charlie Brown Christmas' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Barbie
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Barbie', 2023, ARRAY['Fantasy','Comedy'], '{"director":"Greta Gerwig"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-01-24' FROM media m WHERE m.title = 'Barbie' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-01-24' FROM media m WHERE m.title = 'Barbie' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dumb Money
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Dumb Money', 2023, ARRAY['Comedy','Biopic'], '{"director":"Craig Gillespie"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-01-24' FROM media m WHERE m.title = 'Dumb Money' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-01-24' FROM media m WHERE m.title = 'Dumb Money' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- May December
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'May December', 2023, ARRAY['Drama'], '{"director":"Todd Haynes"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-01-20' FROM media m WHERE m.title = 'May December' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-01-20' FROM media m WHERE m.title = 'May December' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Chungking Express
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Chungking Express', 1994, ARRAY['Romance','Comedy','Drama'], '{"director":"Wong Kar-wai"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-01-16' FROM media m WHERE m.title = 'Chungking Express' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-01-16' FROM media m WHERE m.title = 'Chungking Express' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Curse (TV)
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Curse (TV)', 2023, ARRAY['Drama','Black Comedy','Satire'], '{"director":"Nathan Fielder, Benny Safdie"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2024-01-14' FROM media m WHERE m.title = 'The Curse (TV)' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-01-14' FROM media m WHERE m.title = 'The Curse (TV)' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Aftersun
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Aftersun', 2022, ARRAY['Drama'], '{"director":"Charlotte Wells"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2024-01-08' FROM media m WHERE m.title = 'Aftersun' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-01-08' FROM media m WHERE m.title = 'Aftersun' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Killing of a Sacred Deer
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Killing of a Sacred Deer', 2017, ARRAY['Psychological','Thriller','Horror'], '{"director":"Yorgos Lanthimos"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2.5, '2024-01-07' FROM media m WHERE m.title = 'The Killing of a Sacred Deer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-01-07' FROM media m WHERE m.title = 'The Killing of a Sacred Deer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Boy and the Heron
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Boy and the Heron', 2023, ARRAY['Fantasy','Animated'], '{"director":"Hayao Miyazaki"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2024-01-03' FROM media m WHERE m.title = 'The Boy and the Heron' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-01-03' FROM media m WHERE m.title = 'The Boy and the Heron' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Holdovers
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Holdovers', 2023, ARRAY['Drama','Comedy'], '{"director":"Alexander Payne"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2023-12-26' FROM media m WHERE m.title = 'The Holdovers' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-12-26' FROM media m WHERE m.title = 'The Holdovers' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dream Scenario
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Dream Scenario', 2023, ARRAY['Black Comedy','Fantasy'], '{"director":"Kristoffer Borgli"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2023-12-15' FROM media m WHERE m.title = 'Dream Scenario' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-12-15' FROM media m WHERE m.title = 'Dream Scenario' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Call Me By Your Name
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Call Me By Your Name', 2017, ARRAY['Drama','Romance'], '{"director":"Luca Guadagnino"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2023-11-15' FROM media m WHERE m.title = 'Call Me By Your Name' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, 3.5, '2023-11-15' FROM media m WHERE m.title = 'Call Me By Your Name' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Minari
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Minari', 2020, ARRAY['Drama'], '{"director":"Lee Isaac Chung"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2023-11-15' FROM media m WHERE m.title = 'Minari' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-11-15' FROM media m WHERE m.title = 'Minari' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Anatomy of a Fall
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Anatomy of a Fall', 2023, ARRAY['Thriller','Drama','Legal'], '{"director":"Justine Triet"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2023-11-04' FROM media m WHERE m.title = 'Anatomy of a Fall' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-11-04' FROM media m WHERE m.title = 'Anatomy of a Fall' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Oldboy
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Oldboy', 2003, ARRAY['Action','Thriller'], '{"director":"Park Chan-wook"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2023-10-30' FROM media m WHERE m.title = 'Oldboy' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-10-30' FROM media m WHERE m.title = 'Oldboy' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Goodnight Mommy
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Goodnight Mommy', 2014, ARRAY['Psychological','Horror'], '{"director":"Severin Fiala, Veronika Franz"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2023-10-23' FROM media m WHERE m.title = 'Goodnight Mommy' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-10-23' FROM media m WHERE m.title = 'Goodnight Mommy' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- All Hallows' Eve
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'All Hallows'' Eve', 2013, ARRAY['Horror','Anthology'], '{"director":"Damien Leone"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3, '2023-10-21' FROM media m WHERE m.title = 'All Hallows'' Eve' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-10-21' FROM media m WHERE m.title = 'All Hallows'' Eve' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Humanist Vampire Seeking Consenting Suicidal Person
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Humanist Vampire Seeking Consenting Suicidal Person', 2023, ARRAY['Horror','Comedy'], '{"director":"Emma Seligman"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2023-10-17' FROM media m WHERE m.title = 'Humanist Vampire Seeking Consenting Suicidal Person' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-10-17' FROM media m WHERE m.title = 'Humanist Vampire Seeking Consenting Suicidal Person' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Eileen
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Eileen', 2023, ARRAY['Thriller','Psychological'], '{"director":"William Oldroyd"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3, '2023-10-14' FROM media m WHERE m.title = 'Eileen' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-10-14' FROM media m WHERE m.title = 'Eileen' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Akira
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Akira', 1988, ARRAY['Cyberpunk','Anime'], '{"director":"Katsuhiro Otomo"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2023-10-07' FROM media m WHERE m.title = 'Akira' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, 3.5, '2023-10-07' FROM media m WHERE m.title = 'Akira' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Handmaiden
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Handmaiden', 2016, ARRAY['Thriller','Romance'], '{"director":"Park Chan-wook"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2023-10-07' FROM media m WHERE m.title = 'The Handmaiden' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-10-07' FROM media m WHERE m.title = 'The Handmaiden' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bottoms
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Bottoms', 2023, ARRAY['Comedy'], '{"director":"Emma Seligman"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2023-10-05' FROM media m WHERE m.title = 'Bottoms' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-10-05' FROM media m WHERE m.title = 'Bottoms' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Terrifier 2
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Terrifier 2', 2022, ARRAY['Slasher'], '{"director":"Damien Leone"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2023-09-30' FROM media m WHERE m.title = 'Terrifier 2' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-09-30' FROM media m WHERE m.title = 'Terrifier 2' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Blackberry
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Blackberry', 2023, ARRAY['Comedy','Biopic'], '{"director":"Matthew Johnson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4.5, '2023-09-21' FROM media m WHERE m.title = 'Blackberry' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-09-21' FROM media m WHERE m.title = 'Blackberry' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Starship Trooper
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Starship Trooper', 1997, ARRAY['Sci-Fi','Action','Satire'], '{"director":"Paul Verhoeven"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2023-09-20' FROM media m WHERE m.title = 'Starship Trooper' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-09-20' FROM media m WHERE m.title = 'Starship Trooper' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Malignant
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Malignant', 2021, ARRAY['Horror','Thriller','Supernatural'], '{"director":"James Wan"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2023-09-16' FROM media m WHERE m.title = 'Malignant' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-09-16' FROM media m WHERE m.title = 'Malignant' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mimang
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Mimang', 2023, ARRAY['Drama'], '{"director":"Kim Tae-yang"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3, '2023-09-15' FROM media m WHERE m.title = 'Mimang' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-09-15' FROM media m WHERE m.title = 'Mimang' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Boy Kills World
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Boy Kills World', 2023, ARRAY['Action','Thriller','Comedy'], '{"director":"Moritz Mohr"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2023-09-11' FROM media m WHERE m.title = 'Boy Kills World' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-09-11' FROM media m WHERE m.title = 'Boy Kills World' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hell of a Summer
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Hell of a Summer', 2023, ARRAY['Horror','Comedy','Slasher'], '{"director":"Finn Wolfhard, Billy Bryk"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2023-09-11' FROM media m WHERE m.title = 'Hell of a Summer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-09-11' FROM media m WHERE m.title = 'Hell of a Summer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Saltburn
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Saltburn', 2023, ARRAY['Thriller','Comedy'], '{"director":"Emerald Fennell"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 3.5, '2023-08-11' FROM media m WHERE m.title = 'Saltburn' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-08-11' FROM media m WHERE m.title = 'Saltburn' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sorry to Bother You
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Sorry to Bother You', 2018, ARRAY['Black Comedy','Sci-Fi'], '{"director":"Boots Riley"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 4, '2023-07-03' FROM media m WHERE m.title = 'Sorry to Bother You' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-07-03' FROM media m WHERE m.title = 'Sorry to Bother You' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Fantastic Mr. Fox
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Fantastic Mr. Fox', 2009, ARRAY['Comedy','Animated'], '{"director":"Wes Anderson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2023-06-29' FROM media m WHERE m.title = 'Fantastic Mr. Fox' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-06-29' FROM media m WHERE m.title = 'Fantastic Mr. Fox' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Banshees of Inisherin
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Banshees of Inisherin', 2022, ARRAY['Comedy','Drama'], '{"director":"Martin McDonagh"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2023-01-18' FROM media m WHERE m.title = 'Banshees of Inisherin' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-01-18' FROM media m WHERE m.title = 'Banshees of Inisherin' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Twin Peaks: Fire Walk With Me
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Twin Peaks: Fire Walk With Me', 1992, ARRAY['Horror','Crime'], '{"director":"David Lynch"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 5, '2022-07-29' FROM media m WHERE m.title = 'Twin Peaks: Fire Walk With Me' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2022-07-29' FROM media m WHERE m.title = 'Twin Peaks: Fire Walk With Me' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Inside Llewyn Davis
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Inside Llewyn Davis', 2013, ARRAY['Drama','Music'], '{"director":"Joel & Ethan Coen"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Inside Llewyn Davis' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2026-08-29' FROM media m WHERE m.title = 'Inside Llewyn Davis' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Being John Malkovich
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Being John Malkovich', 1999, ARRAY['Fantasy','Comedy'], '{"director":"Spike Jonze"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Being John Malkovich' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, 4, '2026-08-10' FROM media m WHERE m.title = 'Being John Malkovich' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Universal Language
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Universal Language', 2024, ARRAY['Comedy','Drama'], '{"director":"Matthew Rankin"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Universal Language' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, 4.5, '2026-07-19' FROM media m WHERE m.title = 'Universal Language' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Spongebob Squarepants Movie: Search for SquarePants
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Spongebob Squarepants Movie: Search for SquarePants', 2025, ARRAY['Comedy','Animated'], '{"director":"Derek Drymon"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Spongebob Squarepants Movie: Search for SquarePants' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, 0.5, '2026-02-22' FROM media m WHERE m.title = 'The Spongebob Squarepants Movie: Search for SquarePants' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hard Boiled
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Hard Boiled', 1992, ARRAY['Action','Crime'], '{"director":"John Woo"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Hard Boiled' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-10-26' FROM media m WHERE m.title = 'Hard Boiled' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nickel Boys
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Nickel Boys', 2024, ARRAY['Drama','Historical'], '{"director":"RaMell Ross"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Nickel Boys' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, 4.5, '2025-04-25' FROM media m WHERE m.title = 'Nickel Boys' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lost in Translation
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Lost in Translation', 2003, ARRAY['Drama','Romance','Comedy'], '{"director":"Sofia Coppola"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Lost in Translation' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, 3, '2025-04-05' FROM media m WHERE m.title = 'Lost in Translation' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Garden State
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Garden State', 2004, ARRAY['Comedy','Drama'], '{"director":"Zach Braff"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Garden State' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, 1.5, '2025-04-05' FROM media m WHERE m.title = 'Garden State' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A Complete Unknown
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'A Complete Unknown', 2025, ARRAY['Drama','Biopic'], '{"director":"James Mangold"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'A Complete Unknown' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, 3, '2025-04-05' FROM media m WHERE m.title = 'A Complete Unknown' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rap World
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Rap World', 2024, ARRAY['Comedy'], '{"director":"Connor O''Malley"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Rap World' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2025-01-21' FROM media m WHERE m.title = 'Rap World' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Blind Beast
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Blind Beast', 1969, ARRAY['Horror','Erotic','Drama'], '{"director":"Yasuzō Masumura"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Blind Beast' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-10-22' FROM media m WHERE m.title = 'Blind Beast' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Tokyo Story
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Tokyo Story', 1953, ARRAY['Drama'], '{"director":"Yasujirō Ozu"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Tokyo Story' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-08-01' FROM media m WHERE m.title = 'Tokyo Story' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Punch Drunk Love
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Punch Drunk Love', 2002, ARRAY['Romance','Drama','Comedy'], '{"director":"Paul Thomas Anderson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Punch Drunk Love' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-07-07' FROM media m WHERE m.title = 'Punch Drunk Love' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Anomalisa
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Anomalisa', 2015, ARRAY['Romance','Comedy','Drama','Psychological','Animated'], '{"director":"Charlie Kaufman"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Anomalisa' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-03-26' FROM media m WHERE m.title = 'Anomalisa' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Neon Genesis Evangelion: The End of Evangelion
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Neon Genesis Evangelion: The End of Evangelion', 1997, ARRAY['Anime','Sci-Fi'], '{"director":"Hideaki Anno, Kazuya Tsurumaki"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Neon Genesis Evangelion: The End of Evangelion' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-03-08' FROM media m WHERE m.title = 'Neon Genesis Evangelion: The End of Evangelion' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hard to be a God
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Hard to be a God', 2013, ARRAY['Sci-Fi','Drama'], '{"director":"Aleksei German"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Hard to be a God' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-01-14' FROM media m WHERE m.title = 'Hard to be a God' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pride & Prejudice
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Pride & Prejudice', 2005, ARRAY['Romance','Period','Drama'], '{"director":"Joe Wright"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Pride & Prejudice' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2024-01-13' FROM media m WHERE m.title = 'Pride & Prejudice' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Oppenheimer
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Oppenheimer', 2023, ARRAY['Drama','Biopic'], '{"director":"Christopher Nolan"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Oppenheimer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', false, NULL, '2023-06-19' FROM media m WHERE m.title = 'Oppenheimer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rosemary's Baby
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Rosemary''s Baby', 1968, ARRAY['Psychological','Horror'], '{"director":"Roman Polanski"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Rosemary''s Baby' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Rosemary''s Baby' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Front Room
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Front Room', 2024, ARRAY['Psychological','Horror','Thriller'], '{"director":"Max Eggers & Sam Eggers"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Front Room' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Front Room' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Exit 8
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Exit 8', 2025, ARRAY['Psychological','Horror'], '{"director":"Genki Kawamura"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Exit 8' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Exit 8' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cramps! A Period Piece
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Cramps! A Period Piece', 2025, ARRAY['Fantasy','Horror','Comedy'], '{"director":"Brooke H. Cellars"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Cramps! A Period Piece' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Cramps! A Period Piece' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Bride!
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Bride!', 2026, ARRAY['Sci-Fi','Romance','Gothic'], '{"director":"Maggie Gyllenhaal"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Bride!' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Bride!' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Meshes of the Afternoon
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Meshes of the Afternoon', 1943, ARRAY['Mystery','Fantasy'], '{"director":"Maya Deren, Alexander Hammid"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Meshes of the Afternoon' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Meshes of the Afternoon' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rear Window
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Rear Window', 1954, ARRAY['Mystery','Thriller'], '{"director":"Alfred Hitchcokc"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Rear Window' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Rear Window' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Le Bonheur
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Le Bonheur', 1965, ARRAY['Drama','Romance'], '{"director":"Agnes Varda"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Le Bonheur' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Le Bonheur' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- PlayTime
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'PlayTime', 1967, ARRAY['Comedy'], '{"director":"Jacques Tati"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'PlayTime' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'PlayTime' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lady Snowblood
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Lady Snowblood', 1973, ARRAY['Crime','Drama','Action'], '{"director":"Toshiya Fujita"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Lady Snowblood' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Lady Snowblood' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nashville
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Nashville', 1975, ARRAY['Drama','Comedy','Music'], '{"director":"Robert Altman"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Nashville' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Nashville' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Appointment
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Appointment', 1981, ARRAY['Horror'], '{"director":"Lindsey C. Vickers"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Appointment' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Appointment' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Taipei Story
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Taipei Story', 1985, ARRAY['Drama'], '{"director":"Edward Yang"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Taipei Story' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Taipei Story' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Cat
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Cat', 1992, ARRAY['Sci-Fi','Horror','Action'], '{"director":"Lam Nai-Choi"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Cat' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Cat' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Totally F**ed Up
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Totally F**ed Up', 1993, ARRAY['Romance','Drama','Comedy','LGBT+'], '{"director":"Gregg Araki"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Totally F**ed Up' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Totally F**ed Up' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Welcome to the Dollhouse
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Welcome to the Dollhouse', 1995, ARRAY['Comedy','Drama'], '{"director":"Todd Solondz"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Welcome to the Dollhouse' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Welcome to the Dollhouse' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Audition
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Audition', 1999, ARRAY['Horror','Mystery'], '{"director":"Takashi Miike"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Audition' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Audition' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ichi the Killer
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Ichi the Killer', 2001, ARRAY['Horror','Crime','Action'], '{"director":"Takashi Miike"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Ichi the Killer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Ichi the Killer' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- One Missed Call
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'One Missed Call', 2003, ARRAY['Supernatural','Horror','Mystery'], '{"director":"Takashi Miike"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'One Missed Call' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'One Missed Call' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Smiley Face
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Smiley Face', 2007, ARRAY['Comedy'], '{"director":"Gregg Araki"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Smiley Face' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Smiley Face' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lake Mungo
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Lake Mungo', 2008, ARRAY['Thriller','Horror','Supernatural'], '{"director":"Joel Anderson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Lake Mungo' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Lake Mungo' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Let the Right One In
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Let the Right One In', 2008, ARRAY['Horror','Romance'], '{"director":"Tomas Alfredson"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Let the Right One In' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Let the Right One In' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Thirst
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Thirst', 2009, ARRAY['Horror','Drama','Vampire'], '{"director":"Park Chan-wook"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Thirst' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Thirst' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nebraska
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Nebraska', 2013, ARRAY['Adventure','Drama'], '{"director":"Alexander Payne"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Nebraska' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Nebraska' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Wailing
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Wailing', 2016, ARRAY['Horror','Mystery'], '{"director":"Na Hong-jin"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Wailing' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Wailing' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Love Witch
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Love Witch', 2016, ARRAY['Romance','Horror','Comedy'], '{"director":"Anna Biller"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Love Witch' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Love Witch' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Roma
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Roma', 2018, ARRAY['Drama'], '{"director":"Alfonso Cuaron"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Roma' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Roma' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Under the Silver Lake
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Under the Silver Lake', 2018, ARRAY['Mystery','Crime','Drama'], '{"director":"David Robert Mitchell"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Under the Silver Lake' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Under the Silver Lake' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Only the Animals
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Only the Animals', 2019, ARRAY['Drama','Crime'], '{"director":"Dominik Moll"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Only the Animals' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Only the Animals' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nightmare Alley
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Nightmare Alley', 2021, ARRAY['Drama','Crime','Thriller'], '{"director":"Guillermo del Toro"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Nightmare Alley' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Nightmare Alley' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Leave the World Behind
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Leave the World Behind', 2023, ARRAY['Thriller','Apocalypse/Post-apocalyptic'], '{"director":"Sam Esmail"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Leave the World Behind' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Leave the World Behind' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Never Let Go
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Never Let Go', 2024, ARRAY['Survival','Horror','Suspence'], '{"director":"Alexandre Aja"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Never Let Go' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Never Let Go' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Chime
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Chime', 2024, ARRAY['Thriller','Horror'], '{"director":"Kiyoshi Kurosawa"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Chime' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Chime' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Frewaka
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Frewaka', 2024, ARRAY['Drama','Horror','Fantasy','Supernatural'], '{"director":"Aislinn Clarke"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Frewaka' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Frewaka' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Angela
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Angela', 1995, ARRAY['Drama','Indie'], '{"director":"Rebecca Miller"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Angela' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Angela' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rabbit Trap
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Rabbit Trap', 2025, ARRAY['Fantasy','Horror','Thriller','Mystery','Folk'], '{"director":"Bryn Chainey"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Rabbit Trap' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Rabbit Trap' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ikiru
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Ikiru', 1952, ARRAY['Drama'], '{"director":"Akira Kurosawa"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Ikiru' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Ikiru' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cure
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Cure', 1997, ARRAY['Mystery','Crime','Thriller','Horror'], '{"director":"Kiyoshi Kurosawa"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Cure' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Cure' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lucky
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Lucky', 2017, ARRAY['Comedy','Drama'], '{"director":"John Carroll Lynch"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Lucky' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Lucky' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Straight Story
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Straight Story', 1999, ARRAY['Drama','Road Movie'], '{"director":"David Lynch"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Straight Story' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Straight Story' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ms. 45
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Ms. 45', 1981, ARRAY['Crime','Thriller','Action','Revenge'], '{"director":"Abel Ferrara"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Ms. 45' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Ms. 45' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Vertigo
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Vertigo', 1958, ARRAY['Psychological','Thriller','Mystery','Noir'], '{"director":"Alfred Hitchcock"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Vertigo' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Vertigo' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Basketball Diaries
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Basketball Diaries', 1995, ARRAY['Crime','Drama','Noir'], '{"director":"Scott Kalvert"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Basketball Diaries' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Basketball Diaries' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Crimes of the Future
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Crimes of the Future', 2022, ARRAY['Sci-Fi','Body Horror','Drama'], '{"director":"David Cronenberg"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Crimes of the Future' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Crimes of the Future' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- High and Low
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'High and Low', 1963, ARRAY['Crime','Noir'], '{"director":"Akira Kurosawa"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'High and Low' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'High and Low' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Lair of the White Worm
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Lair of the White Worm', 1988, ARRAY['Comedy','Horror','Supernatural'], '{"director":"Ken Russell"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Lair of the White Worm' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Lair of the White Worm' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Janet Planet
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Janet Planet', 2023, ARRAY['Coming-of-age','Drama'], '{"director":"Annie Baker"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Janet Planet' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Janet Planet' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Perfect Blue
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Perfect Blue', 1997, ARRAY['Anime','Horror','Psychological','Thriller'], '{"director":"Satoshi Kon"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Perfect Blue' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Perfect Blue' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Paprika
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Paprika', 2006, ARRAY['Sci-Fi','Psychological','Thriller','Anime'], '{"director":"Satoshi Kon"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Paprika' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Paprika' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Oslo, August 31st
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Oslo, August 31st', 2011, ARRAY['Drama'], '{"director":"Joachim Trier"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Oslo, August 31st' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Oslo, August 31st' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Wicker Man
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Wicker Man', 1973, ARRAY['Mystery','Music','Folk','Horror'], '{"director":"Robin Hardy"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Wicker Man' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Wicker Man' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sideways
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Sideways', 2004, ARRAY['Comedy','Romance','Drama'], '{"director":"Alexander Payne"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Sideways' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Sideways' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Being Natural
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Being Natural', 2017, ARRAY['Drama','Comedy'], '{"director":"Tadashi Nagayama"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Being Natural' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Being Natural' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mystery Train
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Mystery Train', 1989, ARRAY['Anthology','Comedy','Crime'], '{"director":"Jim Jarmusch"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Mystery Train' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Mystery Train' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Landscape in the Mist
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Landscape in the Mist', 1988, ARRAY['Drama','Road Movie'], '{"director":"Theo Angelopoulos"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Landscape in the Mist' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Landscape in the Mist' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Columbus
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Columbus', 2017, ARRAY['Drama'], '{"director":"Kogonada"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Columbus' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Columbus' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ritual
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Ritual', 2000, ARRAY['Drama'], '{"director":"Hideaki Anno"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Ritual' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Ritual' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 11 x 14
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', '11 x 14', 1977, ARRAY['Experimental'], '{"director":"James Benning"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = '11 x 14' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = '11 x 14' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Yi Yi
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Yi Yi', 2000, ARRAY['Drama'], '{"director":"Edward Yang"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Yi Yi' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Yi Yi' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Close Encounters of the Third Kind
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Close Encounters of the Third Kind', 1977, ARRAY['Sci-Fi','Adventure'], '{"director":"Steven Spielberg"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Close Encounters of the Third Kind' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Close Encounters of the Third Kind' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Drama
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Drama', 2026, ARRAY['Romance','Drama'], '{"director":"Kristoffer Borgli"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Drama' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Drama' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Jeanne Dielman, 23, quai du Commerce, 1080 Bruxelles
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Jeanne Dielman, 23, quai du Commerce, 1080 Bruxelles', 1975, ARRAY['Drama'], '{"director":"Chantal Akerman"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Jeanne Dielman, 23, quai du Commerce, 1080 Bruxelles' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Jeanne Dielman, 23, quai du Commerce, 1080 Bruxelles' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Invasion of the Body Snatchers
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Invasion of the Body Snatchers', 1978, ARRAY['Sci-Fi'], '{"director":"Philip Kaufman"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Invasion of the Body Snatchers' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Invasion of the Body Snatchers' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Saccharine
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Saccharine', 2026, ARRAY['Horror'], '{"director":"Natalie Erika James"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Saccharine' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Saccharine' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Apartment 7A
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Apartment 7A', 2024, ARRAY['Horror','Thriller'], '{"director":"Natalie Erika James"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Apartment 7A' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Apartment 7A' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Fly
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Fly', 1986, ARRAY['Sci-Fi','Horror'], '{"director":"David Cronenberg"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Fly' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Fly' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Crash
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Crash', 1996, ARRAY['Thriller','Erotic','Drama'], '{"director":"David Cronenberg"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Crash' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Crash' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Scanners
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Scanners', 1981, ARRAY['Sci-Fi','Thriller','Body Horror'], '{"director":"David Cronenberg"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Scanners' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Scanners' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Terrified
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Terrified', 2017, ARRAY['Supernatural','Horror'], '{"director":"Demián Rugna"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Terrified' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Terrified' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- MadS
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'MadS', 2024, ARRAY['Horror','Psychadelic','Infection'], '{"director":"David Moreau"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'MadS' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'MadS' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Shelby Oaks
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Shelby Oaks', 2024, ARRAY['Horror','Supernatural'], '{"director":"Chris Stuckmann"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Shelby Oaks' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Shelby Oaks' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Obsession
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Obsession', 2025, ARRAY['Horror'], '{"director":"Curry Barker"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Obsession' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Obsession' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Gummo
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Gummo', 1997, ARRAY['Comedy','Drama'], '{"director":"Harmony Korine"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Gummo' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Gummo' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Naked
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Naked', 1993, ARRAY['Comedy','Drama'], '{"director":"Mike Leigh"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Naked' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Naked' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Werewulf
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Werewulf', 2026, ARRAY['Horror','Gothic'], '{"director":"Robert Eggers"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Werewulf' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Werewulf' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Teenage Sex and Death at Camp Miasma
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Teenage Sex and Death at Camp Miasma', 2026, ARRAY['Slasher','LGBT+'], '{"director":"Jane Schoenbrun"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Teenage Sex and Death at Camp Miasma' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Teenage Sex and Death at Camp Miasma' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Backrooms
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Backrooms', 2026, ARRAY['Sci-Fi','Horror'], '{"director":"Kane Parsons"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Backrooms' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Backrooms' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Wolf Will Tear Your Immaculate Hands
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Wolf Will Tear Your Immaculate Hands', 2026, ARRAY['Horror','Gothic'], '{"director":"Nathalie Álvarez Mesén"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Wolf Will Tear Your Immaculate Hands' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Wolf Will Tear Your Immaculate Hands' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Godzilla Minus Zero
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Godzilla Minus Zero', 2026, ARRAY['Sci-Fi','Kaiju'], '{"director":"Takashi Yamazaki"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Godzilla Minus Zero' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Godzilla Minus Zero' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bucking Fastard
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Bucking Fastard', 2026, ARRAY['Drama'], '{"director":"Werner Herzog"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Bucking Fastard' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Bucking Fastard' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Evil Dead Burn
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Evil Dead Burn', 2026, ARRAY['Supernatural'], '{"director":"Sébastien Vaniček"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Evil Dead Burn' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Evil Dead Burn' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Flowervale Street
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Flowervale Street', 2026, ARRAY['Sci-Fi'], '{"director":"David Robert Mitchell"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Flowervale Street' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Flowervale Street' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lee Cronin's The Mummy
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Lee Cronin''s The Mummy', 2026, ARRAY['Horror','Mystery'], '{"director":"Lee Cronin"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Lee Cronin''s The Mummy' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Lee Cronin''s The Mummy' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Faces of Death
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Faces of Death', 2026, ARRAY['Thriller','Horror'], '{"director":"Daniel Goldhaber"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Faces of Death' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Faces of Death' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Young People
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Young People', 2026, ARRAY['Horror'], '{"director":"Osgood Perkins"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Young People' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Young People' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hokum
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Hokum', 2026, ARRAY['Horror','Mystery'], '{"director":"Damian McCarthy"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Hokum' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Hokum' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The End of Oak Street
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The End of Oak Street', 2026, ARRAY['Mystery','Thriller','Sci-Fi'], '{"director":"David Robert Mitchell"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The End of Oak Street' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The End of Oak Street' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I Want Your Sex
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'I Want Your Sex', 2026, ARRAY['Drama','Comedy'], '{"director":"Gregg Araki"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'I Want Your Sex' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'I Want Your Sex' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Brides
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Brides', NULL, ARRAY['Gothic'], '{"director":"Chloe Okuno"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Brides' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Brides' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Claire
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Claire', NULL, ARRAY['Horror','Thriller'], '{"director":"Tracy Kleeman"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Claire' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Claire' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Epilogue
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Epilogue', NULL, ARRAY['Zombie'], '{"director":"Michael Fimognari"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Epilogue' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Epilogue' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hope
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Hope', NULL, ARRAY['Sci-Fi','Thriller'], '{"director":"Na Hong-jin"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Hope' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Hope' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- October
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'October', NULL, ARRAY['Action','Thriller'], '{"director":"Jeremy Saulnier"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'October' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'October' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Onslaught
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Onslaught', NULL, ARRAY['Action','Thriller'], '{"director":"Adam Wingard"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Onslaught' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Onslaught' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pendulum
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Pendulum', NULL, ARRAY['Psychological','Thriller'], '{"director":"Darren Aronofsky"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Pendulum' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Pendulum' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Bell Jar
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Bell Jar', NULL, ARRAY['Drama'], '{"director":"Sarah Polley"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Bell Jar' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Bell Jar' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Mist
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'The Mist', NULL, ARRAY['Sci-Fi','Horror'], '{"director":"Mike Flanagan"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Mist' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Mist' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Deep Cuts
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Deep Cuts', NULL, ARRAY['Drama','Music'], '{"director":"Sean Durkin"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Deep Cuts' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Deep Cuts' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Klara and the Sun
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Klara and the Sun', NULL, ARRAY['Sci-Fi','Drama'], '{"director":"Taika Waititi"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Klara and the Sun' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Klara and the Sun' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A Christmas Carol
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'A Christmas Carol', NULL, ARRAY['Gothic','Drama','Fantasy'], '{"director":"Robert Eggers"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'A Christmas Carol' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'A Christmas Carol' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Artificial
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Artificial', NULL, ARRAY['Comedy','Drama'], '{"director":"Luca Guadagnino"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Artificial' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Artificial' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Good Sex
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Good Sex', NULL, ARRAY['Comedy','Romance'], '{"director":"Lena Dunham"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Good Sex' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Good Sex' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- They Follow
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'They Follow', NULL, ARRAY['Horror','Supernatural','Mystery'], '{"director":"David Robert Mitchell"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'They Follow' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'They Follow' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Primetime
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Primetime', NULL, ARRAY['Thriller','Crime','Drama'], '{"director":"Lance Oppenheim"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Primetime' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Primetime' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Checkmate
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Checkmate', NULL, ARRAY['Drama','Biopic'], '{"director":"Nathan Fielder"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Checkmate' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Checkmate' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Untitled The Exorcist Film
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Untitled The Exorcist Film', NULL, ARRAY['Horror','Supernatural'], '{"director":"Mike Flanagan"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Untitled The Exorcist Film' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Untitled The Exorcist Film' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Strange Darling
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('movie', 'Strange Darling', 2023, ARRAY['Thriller'], '{"director":"JT Mollner"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, NULL, '2025-07-12' FROM media m WHERE m.title = 'Strange Darling' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Strange Darling' AND m.media_type = 'movie' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;


-- ========== RECORDS ==========
-- Abba
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Abba', 1975, ARRAY['Disco','Pop'], '{"artist":"Abba"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Abba' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- As the Eternal Cowboy
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'As the Eternal Cowboy', 2003, ARRAY['Punk'], '{"artist":"Against Me"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'As the Eternal Cowboy' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I'm Still In Love With You
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'I''m Still In Love With You', 1972, ARRAY['Funk','Soul'], '{"artist":"Al Green"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'I''m Still In Love With You' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- House of Sugar
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'House of Sugar', 2019, ARRAY['Folk','Indie'], '{"artist":"Alex G"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'House of Sugar' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rocket
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Rocket', 2017, ARRAY['Indie','Folk'], '{"artist":"Alex G"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Rocket' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Headlights
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Headlights', 2025, ARRAY['Indie','Rock'], '{"artist":"Alex G"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Headlights' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Parrot Flies
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Parrot Flies', 2011, ARRAY['Emo'], '{"artist":"Algernon Cadwallader"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Parrot Flies' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- American Football
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'American Football', 1999, ARRAY['Emo','Indie'], '{"artist":"American Football"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'American Football' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Blue Velvet OST
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Blue Velvet OST', 1986, ARRAY['Jazz','Funk'], '{"artist":"Angelo Badalamenti"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Blue Velvet OST' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Twin Peaks OST
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Twin Peaks OST', 1990, ARRAY['Electronic','Jazz'], '{"artist":"Angelo Badalamenti"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Twin Peaks OST' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Only Boundaries
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Only Boundaries', 2012, ARRAY['Emo','Punk'], '{"artist":"Balance and Composure"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Only Boundaries' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Split
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Split', 2010, ARRAY['Emo','Indie'], '{"artist":"Balance and Composure / Tigers Jaw"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Split' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Depression Cherry
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Depression Cherry', 2015, ARRAY['Indie','Pop'], '{"artist":"Beach House"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Depression Cherry' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Teen Dream
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Teen Dream', 2010, ARRAY['Indie','Pop'], '{"artist":"Beach House"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Teen Dream' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- S/T 7"
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'S/T 7"', 2009, ARRAY['Lo-fi','Rock','Pop'], '{"artist":"Best Coast"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'S/T 7"' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Crazy For You
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Crazy For You', 2010, ARRAY['Surf','Garage Rock','Indie'], '{"artist":"Best Coast"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Crazy For You' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Crazy For You' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sittin By the Road
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Sittin By the Road', 2010, ARRAY['Folk','Country'], '{"artist":"Blaze Foley"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Sittin By the Road' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Sittin By the Road' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 1000 Arms
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', '1000 Arms', 2016, ARRAY['Country','Folk Rock'], '{"artist":"Blue Rodeo"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = '1000 Arms' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Five Days in July
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Five Days in July', 1993, ARRAY['Country','Rock'], '{"artist":"Blue Rodeo"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Five Days in July' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- John Wesley Harding
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'John Wesley Harding', 1968, ARRAY['Folk','Rock'], '{"artist":"Bob Dylan"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'John Wesley Harding' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Before the Flood
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Before the Flood', 1974, ARRAY['Rock','Folk'], '{"artist":"Bob Dylan & The Band"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Before the Flood' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- For Emma, Forever Ago
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'For Emma, Forever Ago', 2007, ARRAY['Folk','Indie'], '{"artist":"Bon Iver"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'For Emma, Forever Ago' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Tender Buttons
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Tender Buttons', 2005, ARRAY['Synth Pop','Indie'], '{"artist":"Broadcast"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Tender Buttons' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Minecraft Beta OST
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Minecraft Beta OST', 2013, ARRAY['Synth'], '{"artist":"C418"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Minecraft Beta OST' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Heavy Metal
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Heavy Metal', 2024, ARRAY['Indie'], '{"artist":"Cameron Winter"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Heavy Metal' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Analphabetapolothology
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Analphabetapolothology', 1998, ARRAY['Emo','Rock'], '{"artist":"Cap''n Jazz"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Analphabetapolothology' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Teaser and the Firecat
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Teaser and the Firecat', 1971, ARRAY['Folk','Rock'], '{"artist":"Cat Stevens"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Teaser and the Firecat' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Zoo
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Zoo', 2012, ARRAY['Punk'], '{"artist":"Ceremony"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Zoo' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mingus Ah Um
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Mingus Ah Um', 1959, ARRAY['Jazz'], '{"artist":"Charles Mingus"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Mingus Ah Um' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Young States
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Young States', 2011, ARRAY['Punk','Emo'], '{"artist":"Citizen"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Young States' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Split
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Split', 2012, ARRAY['Punk','Emo'], '{"artist":"Citizen / Turnover"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Split' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Little Hell
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Little Hell', 2011, ARRAY['Indie','Acoustic'], '{"artist":"City and Color"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Little Hell' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Heaven or Las Vegas
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Heaven or Las Vegas', 1990, ARRAY['Synth Pop'], '{"artist":"Cocteau Twins"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Heaven or Las Vegas' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Chronicle
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Chronicle', 1976, ARRAY['Folk','Rock'], '{"artist":"Creedance Clearwater Revival"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Chronicle' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Shade of Poison Trees
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'The Shade of Poison Trees', 2007, ARRAY['Acoustic'], '{"artist":"Dashboard Congessional"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'The Shade of Poison Trees' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Around the Fur
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Around the Fur', 1997, ARRAY['Post Hardcore'], '{"artist":"Deftones"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Around the Fur' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Milo Gets Bootlegged
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Milo Gets Bootlegged', 2005, ARRAY['Punk'], '{"artist":"Descendents"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Milo Gets Bootlegged' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Milo Goes to College
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Milo Goes to College', 1982, ARRAY['Punk','Hardcore'], '{"artist":"Descendents"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Milo Goes to College' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Everything Sucks
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Everything Sucks', 1996, ARRAY['Hardcore','Punk'], '{"artist":"Descendents"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Everything Sucks' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Chilling, Thrilling Sounds Of The Haunted House
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Chilling, Thrilling Sounds Of The Haunted House', 1979, ARRAY['Scary','Ambient'], '{"artist":"Disneyland"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Chilling, Thrilling Sounds Of The Haunted House' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I Don't Even Care Anymore
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'I Don''t Even Care Anymore', 2013, ARRAY['Emo','Pop Punk'], '{"artist":"Dowsing"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'I Don''t Even Care Anymore' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Take Care
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Take Care', 2011, ARRAY['Rap','R&B'], '{"artist":"Drake"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Take Care' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- What a Time To Be Alive
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'What a Time To Be Alive', 2015, ARRAY['Rap'], '{"artist":"Drake & Future"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'What a Time To Be Alive' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Stratosphere
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Stratosphere', 1998, ARRAY['Indie','Rock'], '{"artist":"Duster"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Stratosphere' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Songs to Learn & Sing
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Songs to Learn & Sing', 1985, ARRAY['Indie','Rock'], '{"artist":"Echo & The Bunnymen"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Songs to Learn & Sing' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Earth is Not a Cold Dead Place
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'The Earth is Not a Cold Dead Place', 2003, ARRAY['Post Rock','Instrumental'], '{"artist":"Explosions in the Sky"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'The Earth is Not a Cold Dead Place' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Gospel
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Gospel', 2011, ARRAY['Pop Punk'], '{"artist":"Fireworks"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Gospel' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Painting of a Panic Attack
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Painting of a Panic Attack', 2016, ARRAY['Indie','Rock'], '{"artist":"Frightened Rabbit"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Painting of a Panic Attack' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Fugazi
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Fugazi', 1988, ARRAY['Hardcore','Punk'], '{"artist":"Fugazi"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Fugazi' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Getting Killed
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Getting Killed', 2025, ARRAY['Indie','Rock'], '{"artist":"Geese"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Getting Killed' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rationale
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Rationale', 2024, ARRAY['Punk','Indie'], '{"artist":"Glitterer"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Rationale' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lift your Skinny Fists Like Antennas to Heaven
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Lift your Skinny Fists Like Antennas to Heaven', 2000, ARRAY['Post Rock'], '{"artist":"Godspeed You Black Emperor!"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Lift your Skinny Fists Like Antennas to Heaven' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cold on the Shoulder
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Cold on the Shoulder', 1975, ARRAY['Folk','Country'], '{"artist":"Gordon Lightfoot"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Cold on the Shoulder' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Visions
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Visions', 2012, ARRAY['Electronic','Pop'], '{"artist":"Grimes"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Visions' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Don't Bite Your Tongue
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Don''t Bite Your Tongue', 2011, ARRAY['Pop Punk'], '{"artist":"Handguns"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Don''t Bite Your Tongue' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 10.17.09
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', '10.17.09', 2010, ARRAY['Hardcore','Punk'], '{"artist":"Have Heart"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = '10.17.09' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Horse Jumper of Love
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Horse Jumper of Love', 2016, ARRAY['Indie','Rock'], '{"artist":"Horse Jumper of Love"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Horse Jumper of Love' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Turn On The Bright Lights
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Turn On The Bright Lights', 2002, ARRAY['Indie','Rock'], '{"artist":"Interpol"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Turn On The Bright Lights' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 2014 Forest Hills Drive
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', '2014 Forest Hills Drive', 2014, ARRAY['Rap'], '{"artist":"J Cole"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = '2014 Forest Hills Drive' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Donuts
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Donuts', 2006, ARRAY['Electronic'], '{"artist":"J Dilla"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Donuts' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- You Had to Be There
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'You Had to Be There', 1978, ARRAY['Boat Rock'], '{"artist":"Jimmy Buffett"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'You Had to Be There' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Back Home Again
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Back Home Again', 1974, ARRAY['Country','Folk'], '{"artist":"John Denver"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Back Home Again' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- At Folsom Prison
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'At Folsom Prison', 1968, ARRAY['Country','Folk'], '{"artist":"Johnny Cash"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'At Folsom Prison' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Christmas
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Christmas', 1971, ARRAY['Christmas'], '{"artist":"Johnny Cash"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Christmas' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Unknown Pleasures
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Unknown Pleasures', 1979, ARRAY['Post-Punk','New Wave'], '{"artist":"Joy Division"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Unknown Pleasures' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Joyce Manor
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Joyce Manor', 2011, ARRAY['Punk','Emo'], '{"artist":"Joyce Manor"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Joyce Manor' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- My Beautiful Dark Twisted Fantasy
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'My Beautiful Dark Twisted Fantasy', 2010, ARRAY['Rap'], '{"artist":"Kanye West"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'My Beautiful Dark Twisted Fantasy' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Louie
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Louie', 2022, ARRAY['Electronic','Instrumental'], '{"artist":"Kenneth Blume"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Louie' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Brothers Blood
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Brothers Blood', 2009, ARRAY['Folk','Indie'], '{"artist":"Kevin Devine"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Brothers Blood' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Instigator
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Instigator', 2016, ARRAY['Indie','Folk'], '{"artist":"Kevin Devine"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Instigator' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wildlife
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Wildlife', 2011, ARRAY['Skramz'], '{"artist":"La Dispute"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Wildlife' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Never Come Undone
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Never Come Undone', 2011, ARRAY['Emo','Folk'], '{"artist":"La Dispute & Koji"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Never Come Undone' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- New Skin for the Old Ceremony
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'New Skin for the Old Ceremony', 1974, ARRAY['Folk','Rock'], '{"artist":"Leonard Cohen"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'New Skin for the Old Ceremony' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hey Dolly
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Hey Dolly', 1964, ARRAY['Jazz'], '{"artist":"Louis Armstrong"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Hey Dolly' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hurry Up, We're Dreaming
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Hurry Up, We''re Dreaming', 2011, ARRAY['Electronic'], '{"artist":"M83"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Hurry Up, We''re Dreaming' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Part and Parcel
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Part and Parcel', 2011, ARRAY['Punk'], '{"artist":"Make Do and Mend"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Part and Parcel' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- End Measured Mile
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'End Measured Mile', 2010, ARRAY['Punk'], '{"artist":"Make Do and Mend"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'End Measured Mile' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Everything You Ever Loved
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Everything You Ever Loved', 2012, ARRAY['Hardcore','Punk'], '{"artist":"Make Do and Mend"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Everything You Ever Loved' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Real Talk
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Real Talk', 2010, ARRAY['Pop Punk'], '{"artist":"Man Overboard"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Real Talk' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Man Overboard
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Man Overboard', 2011, ARRAY['Pop Punk'], '{"artist":"Man Overboard"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Man Overboard' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Christmas Songs
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Christmas Songs', 2020, ARRAY['Christmas'], '{"artist":"Manchester Orchestra"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Christmas Songs' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Land is Inhospitable And So Are We
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'The Land is Inhospitable And So Are We', 2023, ARRAY['Indie','Pop'], '{"artist":"Mitski"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'The Land is Inhospitable And So Are We' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Manning Fireworks
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Manning Fireworks', 2024, ARRAY['Alt Country','Folk'], '{"artist":"MJ Lenderman"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Manning Fireworks' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Manning Fireworks' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- You're Gonna Miss it All
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'You''re Gonna Miss it All', 2014, ARRAY['Emo','Pop-punk'], '{"artist":"Modern Baseball"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'You''re Gonna Miss it All' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Good News for People Who Love Bad News
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Good News for People Who Love Bad News', 2004, ARRAY['Indie'], '{"artist":"Modest Mouse"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Good News for People Who Love Bad News' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- We Were Dead Before the Ship Even Sank
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'We Were Dead Before the Ship Even Sank', 2007, ARRAY['Indie'], '{"artist":"Modest Mouse"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'We Were Dead Before the Ship Even Sank' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Love at the Greek
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Love at the Greek', 1977, ARRAY['Rock'], '{"artist":"Neil Diamond"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Love at the Greek' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hawks & Doves
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Hawks & Doves', 1980, ARRAY['Country','Rock'], '{"artist":"Neil Young"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Hawks & Doves' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sings the Blues
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Sings the Blues', 1967, ARRAY['Soul','Jazz'], '{"artist":"Nina Simone"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Sings the Blues' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pastel Blues
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Pastel Blues', 1965, ARRAY['Soul','Blues'], '{"artist":"Nina Simone"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Pastel Blues' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Xanadu 7" (Japanese)
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Xanadu 7" (Japanese)', 1980, ARRAY['Pop'], '{"artist":"Olivia Newton John"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Xanadu 7" (Japanese)' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Otis Redding Sings Soul
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Otis Redding Sings Soul', 1973, ARRAY['Soul'], '{"artist":"Otis Redding"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Otis Redding Sings Soul' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Am
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Am', 2013, ARRAY['Indie','Rock'], '{"artist":"Ovlov"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Am' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Tru
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Tru', 2018, ARRAY['Indie','Rock'], '{"artist":"Ovlov"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Tru' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ghost Town
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Ghost Town', 2011, ARRAY['Folk','Rock'], '{"artist":"Owen"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Ghost Town' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Punisher
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Punisher', 2020, ARRAY['Folk','Indie'], '{"artist":"Pheobe Bridgers"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Punisher' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Old Pride
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Old Pride', 2009, ARRAY['Emo','Hardcore'], '{"artist":"Pianos Become the Teeth"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Old Pride' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Magic Isn't Real
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Magic Isn''t Real', 2010, ARRAY['Rock','Post-punk'], '{"artist":"Pile"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Magic Isn''t Real' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Magic Isn''t Real' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Amperland, NY
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Amperland, NY', 2021, ARRAY['Indie','Folk'], '{"artist":"Pinegrove"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Amperland, NY' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cardinal
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Cardinal', 2016, ARRAY['Indie','Folk'], '{"artist":"Pinegrove"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Cardinal' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Atom Heart Mother
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Atom Heart Mother', 1970, ARRAY['Pysch Rock'], '{"artist":"Pink Floyd"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Atom Heart Mother' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Feast of Love
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Feast of Love', 2013, ARRAY['Shoegaze','Emo'], '{"artist":"Pity Sex"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Feast of Love' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Doolittle
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Doolittle', 1989, ARRAY['Indie','Rock'], '{"artist":"Pixies"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Doolittle' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dummy
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Dummy', 1994, ARRAY['Pysch Rock'], '{"artist":"Portishead"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Dummy' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Evil Empire
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Evil Empire', 1996, ARRAY['Alternative','Rock'], '{"artist":"Rage Against the Machine"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Evil Empire' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Black Radio 3
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Black Radio 3', 2022, ARRAY['Soul','Jazz'], '{"artist":"Robert Glasper"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Black Radio 3' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Double Booked
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Double Booked', 2009, ARRAY['Jazz'], '{"artist":"Robert Glasper"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Double Booked' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Live at the Harlem Square Club
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Live at the Harlem Square Club', 1963, ARRAY['Soul','Jazz'], '{"artist":"Sam Cooke"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Live at the Harlem Square Club' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Winter Forever
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Winter Forever', 2011, ARRAY['Punk','Emo'], '{"artist":"Seahaven"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Winter Forever' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Reverie Lagoon
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Reverie Lagoon', 2014, ARRAY['Indie','Emo'], '{"artist":"Seahaven"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Reverie Lagoon' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ghost
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Ghost', 2011, ARRAY['Emo','Punk'], '{"artist":"Seahaven"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Ghost' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- ()
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', '()', 2002, ARRAY['Post Rock'], '{"artist":"Sigur Ros"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = '()' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Safe and Also No Fear
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Safe and Also No Fear', 2019, ARRAY['Folk'], '{"artist":"Slaughter Beach, Dog"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Safe and Also No Fear' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Safe and Also No Fear' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Souvlaki
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Souvlaki', 1963, ARRAY['Shoegaze','Indie'], '{"artist":"Slowdive"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Souvlaki' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Goo
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Goo', 1990, ARRAY['Rock'], '{"artist":"Sonic Youth"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Goo' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Little Creatures
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Little Creatures', 1985, ARRAY['Alternative','Rock'], '{"artist":"Talking Heads"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Little Creatures' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Folklore
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Folklore', 2020, ARRAY['Folk','Pop'], '{"artist":"Taylor Swift"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Folklore' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Songs from the Big Chair
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Songs from the Big Chair', 1985, ARRAY['Synth Pop','New Wave'], '{"artist":"Tears For Fears"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Songs from the Big Chair' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hospice
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Hospice', 2009, ARRAY['Shoegaze','Emo'], '{"artist":"The Antlers"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Hospice' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Greatest Hits
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Greatest Hits', 1966, ARRAY['Pop'], '{"artist":"The Beegees"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Greatest Hits' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Soft Parade
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'The Soft Parade', 1969, ARRAY['Psychadelic','Blues Rock'], '{"artist":"The Doors"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'The Soft Parade' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Strange Days
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Strange Days', 1967, ARRAY['Psych Rock'], '{"artist":"The Doors"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Strange Days' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Front Bottoms
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'The Front Bottoms', 2011, ARRAY['Indie','Rock'], '{"artist":"The Front Bottoms"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'The Front Bottoms' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Talon of the Hawk
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Talon of the Hawk', 2013, ARRAY['Emo','Indie'], '{"artist":"The Front Bottoms"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Talon of the Hawk' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Emily's Song 7" (Japanese)
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Emily''s Song 7" (Japanese)', 1974, ARRAY['Folk','Rock'], '{"artist":"The Moody Blues"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Emily''s Song 7" (Japanese)' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A Light for Attracting Attention
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'A Light for Attracting Attention', 2022, ARRAY['Alternative','Rock'], '{"artist":"The Smile"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'A Light for Attracting Attention' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Queen is Dead
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'The Queen is Dead', 1986, ARRAY['Indie','Pop'], '{"artist":"The Smiths"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'The Queen is Dead' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Strangeways, Here we Come
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Strangeways, Here we Come', 1987, ARRAY['Indie','Pop'], '{"artist":"The Smiths"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Strangeways, Here we Come' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Smiths
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'The Smiths', 1984, ARRAY['Indie','Rock'], '{"artist":"The Smiths"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'The Smiths' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Meat is Murder
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Meat is Murder', 1985, ARRAY['Indie','Rock'], '{"artist":"The Smiths"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Meat is Murder' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Meat is Murder' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Under Soil & Dirt
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Under Soil & Dirt', 2011, ARRAY['Incel Punk','Pop Punk'], '{"artist":"The Story So Far"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Under Soil & Dirt' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- S/T
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'S/T', 1980, ARRAY['Alternative','Indie Rock'], '{"artist":"The Violent Femmes"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'S/T' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Upsides
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'The Upsides', 2013, ARRAY['Pop Punk','Emo'], '{"artist":"The Wonder Years"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'The Upsides' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wont Be Pathetic Forever 7"
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Wont Be Pathetic Forever 7"', 2008, ARRAY['Pop Punk'], '{"artist":"The Wonder Years"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Wont Be Pathetic Forever 7"' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Whenever, If Ever
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Whenever, If Ever', 2013, ARRAY['Emo','Hardcore'], '{"artist":"The World Is A Beautiful Place & I Am No Longer Afraid To Die"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Whenever, If Ever' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Floral Green
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Floral Green', 2012, ARRAY['Punk','Emo'], '{"artist":"Title Fight"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Floral Green' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Shed (Destroyed)
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Shed (Destroyed)', 2011, ARRAY['Punk','Hardcore'], '{"artist":"Title Fight"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Shed (Destroyed)' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Shed
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Shed', 2011, ARRAY['Punk','Emo'], '{"artist":"Title Fight"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Shed' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Flood of 72
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Flood of 72', 2011, ARRAY['Punk','Emo'], '{"artist":"Title Fight"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Flood of 72' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Parting The Sea Between Brightness And Me
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Parting The Sea Between Brightness And Me', 2011, ARRAY['Skramz'], '{"artist":"Touche Amore"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Parting The Sea Between Brightness And Me' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- For the Sake of the Song
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'For the Sake of the Song', 1968, ARRAY['Folk','Country'], '{"artist":"Townes Van Zandt"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'For the Sake of the Song' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Listen & Forgive
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Listen & Forgive', 2011, ARRAY['Pop Punk'], '{"artist":"Transit"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Listen & Forgive' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Turnover
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Turnover', 2011, ARRAY['Pop Punk'], '{"artist":"Turnover"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Turnover' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Goodbye Bread
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Goodbye Bread', 2011, ARRAY['Pysch Rock'], '{"artist":"Ty Segall"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Goodbye Bread' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Goblin
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Goblin', 2011, ARRAY['Hip-Hop'], '{"artist":"Tyler, the Creator"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Goblin' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Purgatory
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Purgatory', 2017, ARRAY['Folk','Country'], '{"artist":"Tyler Childers"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Purgatory' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Saturday Night Fever OST
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Saturday Night Fever OST', 1977, ARRAY['Disco','Pop'], '{"artist":"Various"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Saturday Night Fever OST' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Glamour Kills Tour
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'The Glamour Kills Tour', 2012, ARRAY['Pop Punk'], '{"artist":"Various"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'The Glamour Kills Tour' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Golden Archive Compilation
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Golden Archive Compilation', 1970, ARRAY['Rock'], '{"artist":"Velvet Underground"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Golden Archive Compilation' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Charlie Brown Christmas
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Charlie Brown Christmas', 1965, ARRAY['Christmas'], '{"artist":"Vince Guaraldi Trio"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Charlie Brown Christmas' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Vince Staples
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Vince Staples', 2021, ARRAY['Rap'], '{"artist":"Vince Staples"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Vince Staples' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Violent Femmes
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Violent Femmes', 1983, ARRAY['Alternative','Rock'], '{"artist":"Violent Femmes"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Violent Femmes' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Just Another Diamond Day
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Just Another Diamond Day', 1970, ARRAY['Folk'], '{"artist":"Washti Bunyon"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Just Another Diamond Day' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wavvves
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Wavvves', 2009, ARRAY['Indie','Rock'], '{"artist":"Wavves"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Wavvves' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- King of the Beach
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'King of the Beach', 2010, ARRAY['Psychedelic Rock','Lo-Fi','Pop'], '{"artist":"Wavves"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'King of the Beach' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'King of the Beach' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- S/T
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'S/T', 2008, ARRAY['Garage Rock','Lo-Fi'], '{"artist":"Wavves"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'S/T' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'S/T' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pinkerton
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Pinkerton', 1996, ARRAY['Alternative','Rock'], '{"artist":"Weezer"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Pinkerton' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Being There
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Being There', 1996, ARRAY['Folk','Rock'], '{"artist":"Wilco"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Being There' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Music of Twin Peaks
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'The Music of Twin Peaks', 2016, ARRAY['Ambient','Electronic'], '{"artist":"Xiu Xiu"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'The Music of Twin Peaks' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- American Heartbreak
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'American Heartbreak', 2022, ARRAY['Folk','Country'], '{"artist":"Zach Bryan"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'American Heartbreak' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Deann
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Deann', 2019, ARRAY['Folk','Country'], '{"artist":"Zach Bryan"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Deann' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Summertime Blues
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('record', 'Summertime Blues', 2022, ARRAY['Folk','Country'], '{"artist":"Zach Bryan"}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'completed', true, NULL, NULL FROM media m WHERE m.title = 'Summertime Blues' AND m.media_type = 'record' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;


-- ========== AB BOOKS ==========
-- The Idiot
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Idiot', 1868, ARRAY['Classic Literature','Philosophical Fiction'], '{"authors":["Fyodor Dostoevsky"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'consuming', false, 1.5, '2024-04-18' FROM media m WHERE m.title = 'The Idiot' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Tender is the Flesh
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Tender is the Flesh', 2017, ARRAY['Dystopian','Horror'], '{"authors":["Agustina Bazterrica"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Tender is the Flesh' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Fall
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Fall', 1956, ARRAY['Philosophical Fiction','Existentialism'], '{"authors":["Albert Camus"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Fall' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Stranger
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Stranger', 1942, ARRAY['Existential Fiction'], '{"authors":["Albert Camus"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Stranger' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Rebel
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Rebel', 1951, ARRAY['Philosophical Essay'], '{"authors":["Albert Camus"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Rebel' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Count of Monte Cristo
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Count of Monte Cristo', 1844, ARRAY['Adventure','Historical Fiction'], '{"authors":["Alexandre Dumas"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Count of Monte Cristo' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Decreation: Poetry, Essays, Opera
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Decreation: Poetry, Essays, Opera', 2005, ARRAY['Experimental','Hybrid'], '{"authors":["Anne Carson"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Decreation: Poetry, Essays, Opera' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Complete Poems
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Complete Poems', 1981, ARRAY['Poetry','Confessional'], '{"authors":["Anne Sexton"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Complete Poems' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Butter
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Butter', 2017, ARRAY['Contemporary Fiction','Crime'], '{"authors":["Asako Yuzuki"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Butter' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- All About Love: New Visions
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'All About Love: New Visions', 1999, ARRAY['Non-fiction','Social Theory'], '{"authors":["bell hooks"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'All About Love: New Visions' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Communion: The Female Search for Love
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Communion: The Female Search for Love', 2002, ARRAY['Non-fiction','Social Theory'], '{"authors":["bell hooks"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Communion: The Female Search for Love' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Will to Change
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Will to Change', 2004, ARRAY['Non-fiction','Sociology'], '{"authors":["bell hooks"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Will to Change' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lair of the White Worm
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Lair of the White Worm', 1911, ARRAY['Horror','Gothic'], '{"authors":["Bram Stoker"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Lair of the White Worm' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dracula
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Dracula', 1897, ARRAY['Gothic Horror'], '{"authors":["Bram Stoker"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Dracula' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Real Life
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Real Life', 2020, ARRAY['Contemporary Fiction','Academic'], '{"authors":["Brandon Taylor"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Real Life' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Biography of X
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Biography of X', 2023, ARRAY['Alternate History','Fictional Biography'], '{"authors":["Catherine Lacey"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Biography of X' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Jane Eyre
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Jane Eyre', 1847, ARRAY['Gothic Romance'], '{"authors":["Charlotte Brontë"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Jane Eyre' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ghosts
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Ghosts', 2020, ARRAY['Contemporary Fiction','Romance'], '{"authors":["Dolly Alderton"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Ghosts' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Good Material
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Good Material', 2023, ARRAY['Contemporary Fiction','Comedy'], '{"authors":["Dolly Alderton"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Good Material' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Complete Poems 1904-1962
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Complete Poems 1904-1962', 1991, ARRAY['Poetry'], '{"authors":["E.E. Cummings"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Complete Poems 1904-1962' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Days of Abandonment
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Days of Abandonment', 2002, ARRAY['Contemporary Fiction','Psychological'], '{"authors":["Elena Ferrante"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Days of Abandonment' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Idiot
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Idiot', 2017, ARRAY['Contemporary Fiction','Bildungsroman'], '{"authors":["Elif Batuman"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Idiot' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Dune (Dune, #1)
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Dune (Dune, #1)', 1965, ARRAY['Science Fiction'], '{"authors":["Frank Herbert"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Dune (Dune, #1)' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Brothers Karamazov
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Brothers Karamazov', 1880, ARRAY['Philosophical Fiction','Classic'], '{"authors":["Fyodor Dostoevsky"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Brothers Karamazov' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Tender Buttons
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Tender Buttons', 1914, ARRAY['Avant-garde Poetry'], '{"authors":["Gertrude Stein"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Tender Buttons' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The War of the Worlds
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The War of the Worlds', 1898, ARRAY['Science Fiction'], '{"authors":["H.G. Wells"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The War of the Worlds' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The New Me
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The New Me', 2019, ARRAY['Satire','Contemporary Fiction'], '{"authors":["Halle Butler"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The New Me' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Kafka on the Shore
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Kafka on the Shore', 2002, ARRAY['Magical Realism'], '{"authors":["Haruki Murakami"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Kafka on the Shore' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Terminal Boredom: Stories
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Terminal Boredom: Stories', 2021, ARRAY['Science Fiction','Cyberpunk'], '{"authors":["Izumi Suzuki"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Terminal Boredom: Stories' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I Who Have Never Known Men
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'I Who Have Never Known Men', 1995, ARRAY['Dystopian','Feminist Fiction'], '{"authors":["Jacqueline Harpman"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'I Who Have Never Known Men' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Persuasion
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Persuasion', 1817, ARRAY['Classic Literature','Romance'], '{"authors":["Jane Austen"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Persuasion' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pride and Prejudice
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Pride and Prejudice', 1813, ARRAY['Classic Literature','Romance'], '{"authors":["Jane Austen"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Pride and Prejudice' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Existentialism is a Humanism
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Existentialism is a Humanism', 1946, ARRAY['Philosophical Essay'], '{"authors":["Jean-Paul Sartre"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Existentialism is a Humanism' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nausea
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Nausea', 1938, ARRAY['Existential Fiction'], '{"authors":["Jean-Paul Sartre"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Nausea' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Slouching Towards Bethlehem
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Slouching Towards Bethlehem', 1968, ARRAY['Essays','Non-fiction'], '{"authors":["Joan Didion"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Slouching Towards Bethlehem' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Year of Magical Thinking
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Year of Magical Thinking', 2005, ARRAY['Memoir','Non-fiction'], '{"authors":["Joan Didion"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Year of Magical Thinking' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Your Love is Not Good
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Your Love is Not Good', 2023, ARRAY['Psychological Fiction','Satire'], '{"authors":["Johanna Hedva"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Your Love is Not Good' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Paradise Lost
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Paradise Lost', 1667, ARRAY['Epic Poetry'], '{"authors":["John Milton"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Paradise Lost' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- East of Eden
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'East of Eden', 1952, ARRAY['Classic Literature','Family Saga'], '{"authors":["John Steinbeck"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'East of Eden' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- One Flew Over the Cuckoo's Nest
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'One Flew Over the Cuckoo''s Nest', 1962, ARRAY['Psychological Fiction'], '{"authors":["Ken Kesey"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'One Flew Over the Cuckoo''s Nest' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Cat's Cradle
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Cat''s Cradle', 1963, ARRAY['Sci-Fi','Satire'], '{"authors":["Kurt Vonnegut"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Cat''s Cradle' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Slaughterhouse-Five
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Slaughterhouse-Five', 1969, ARRAY['Sci-Fi','Satire'], '{"authors":["Kurt Vonnegut"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Slaughterhouse-Five' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Satantango
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Satantango', 1985, ARRAY['Postmodern','Experimental'], '{"authors":["László Krasznahorkai"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Satantango' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Anna Karenina
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Anna Karenina', 1878, ARRAY['Realist Fiction','Romance'], '{"authors":["Leo Tolstoy"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Anna Karenina' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Flame
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Flame', 2018, ARRAY['Poetry','Lyrics'], '{"authors":["Leonard Cohen"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Flame' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bluets
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Bluets', 2009, ARRAY['Lyric Essay','Non-fiction'], '{"authors":["Maggie Nelson"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Bluets' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- House of Leaves
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'House of Leaves', 2000, ARRAY['Ergodic Literature','Horror'], '{"authors":["Mark Z. Danielewski"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'House of Leaves' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Monk
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Monk', 1796, ARRAY['Gothic Horror'], '{"authors":["Matthew Gregory Lewis"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Monk' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Crying in H Mart
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Crying in H Mart', 2021, ARRAY['Memoir','Non-fiction'], '{"authors":["Michelle Zauner"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Crying in H Mart' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- 13 Ways of Looking at a Fat Girl
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', '13 Ways of Looking at a Fat Girl', 2016, ARRAY['Contemporary Fiction','Satire'], '{"authors":["Mona Awad"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = '13 Ways of Looking at a Fat Girl' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rouge
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Rouge', 2023, ARRAY['Gothic','Psychological Horror'], '{"authors":["Mona Awad"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Rouge' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Time is a Mother
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Time is a Mother', 2022, ARRAY['Poetry'], '{"authors":["Ocean Vuong"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Time is a Mother' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Drive Your Plow Over the Bones of the Dead
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Drive Your Plow Over the Bones of the Dead', 2009, ARRAY['Existential Mystery','Noir'], '{"authors":["Olga Tokarczuk"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Drive Your Plow Over the Bones of the Dead' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Picture of Dorian Gray
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Picture of Dorian Gray', 1890, ARRAY['Philosophical Horror','Classic'], '{"authors":["Oscar Wilde"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Picture of Dorian Gray' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Death in Her Hands
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Death in Her Hands', 2020, ARRAY['Psychological Thriller'], '{"authors":["Ottessa Moshfegh"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Death in Her Hands' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Eileen
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Eileen', 2015, ARRAY['Noir','Psychological Fiction'], '{"authors":["Ottessa Moshfegh"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Eileen' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Just Kids
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Just Kids', 2010, ARRAY['Memoir','Non-fiction'], '{"authors":["Patti Smith"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Just Kids' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Do Androids Dream of Electric Sheep?
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Do Androids Dream of Electric Sheep?', 1968, ARRAY['Science Fiction'], '{"authors":["Philip K. Dick"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Do Androids Dream of Electric Sheep?' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- I, Rigoberta Menchú
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'I, Rigoberta Menchú', 1983, ARRAY['Testimonial','Autobiography'], '{"authors":["Rigoberta Menchú"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'I, Rigoberta Menchú' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Vampire Literature: An Anthology
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Vampire Literature: An Anthology', 2024, ARRAY['Gothic','Academic Anthology'], '{"authors":["Robin A. Werner & Elizabeth M. Lewis"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Vampire Literature: An Anthology' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Madonna in a Fur Coat
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Madonna in a Fur Coat', 1943, ARRAY['Romantic Tragedy'], '{"authors":["Sabahattin Ali"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Madonna in a Fur Coat' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Intermezzo
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Intermezzo', 2024, ARRAY['Contemporary Fiction','Romance'], '{"authors":["Sally Rooney"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Intermezzo' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Beautiful World, Where Are You
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Beautiful World, Where Are You', 2021, ARRAY['Contemporary Fiction'], '{"authors":["Sally Rooney"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Beautiful World, Where Are You' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Ripe
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Ripe', 2023, ARRAY['Dystopian','Psychological Fiction'], '{"authors":["Sarah Rose Etter"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Ripe' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Haunting of Hill House
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Haunting of Hill House', 1959, ARRAY['Gothic Horror'], '{"authors":["Shirley Jackson"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Haunting of Hill House' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Either/Or
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Either/Or', 1843, ARRAY['Philosophical Fiction'], '{"authors":["Søren Kierkegaard"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Either/Or' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- On Photography
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'On Photography', 1977, ARRAY['Non-fiction','Art Criticism'], '{"authors":["Susan Sontag"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'On Photography' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Beloved
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Beloved', 1987, ARRAY['Gothic','Historical Fiction'], '{"authors":["Toni Morrison"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Beloved' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Before the Coffee Gets Cold
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Before the Coffee Gets Cold', 2015, ARRAY['Fantasy','Contemporary Fiction'], '{"authors":["Toshikazu Kawaguchi"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Before the Coffee Gets Cold' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lost on Me
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Lost on Me', 2022, ARRAY['Bildungsroman','Autofiction'], '{"authors":["Veronica Raimo"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Lost on Me' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Orlando
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Orlando', 1928, ARRAY['Modernist','Speculative Fiction'], '{"authors":["Virginia Woolf"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Orlando' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- To the Lighthouse
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'To the Lighthouse', 1927, ARRAY['Modernist'], '{"authors":["Virginia Woolf"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'To the Lighthouse' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Lolita
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Lolita', 1955, ARRAY['Classic Literature','Psychological'], '{"authors":["Vladimir Nabokov"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Lolita' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Heart and Science
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Heart and Science', 1883, ARRAY['Gothic','Sensation Novel'], '{"authors":["Wilkie Collins"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Heart and Science' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Woman in White
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Woman in White', 1859, ARRAY['Sensation Novel','Mystery'], '{"authors":["Wilkie Collins"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Woman in White' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Sound and the Fury
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Sound and the Fury', 1929, ARRAY['Modernist','Southern Gothic'], '{"authors":["William Faulkner"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Sound and the Fury' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- As I Lay Dying
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'As I Lay Dying', 1930, ARRAY['Modernist','Southern Gothic'], '{"authors":["William Faulkner"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'As I Lay Dying' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Essential Wordsworth
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Essential Wordsworth', 2011, ARRAY['Poetry'], '{"authors":["William Wordsworth"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Essential Wordsworth' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Taiwan Travelogue
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Taiwan Travelogue', 2024, ARRAY['Historical Fiction'], '{"authors":["Yang Shuang-zi"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Taiwan Travelogue' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- We
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'We', 1924, ARRAY['Dystopian','Sci-Fi'], '{"authors":["Yevgeny Zamyatin"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'We' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Memory Police
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Memory Police', 1994, ARRAY['Dystopian','Sci-Fi'], '{"authors":["Yoko Ogawa"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'The Memory Police' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Tokyo Ueno Station
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Tokyo Ueno Station', 2014, ARRAY['Contemporary Fiction'], '{"authors":["Yu Miri"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', true, NULL, NULL FROM media m WHERE m.title = 'Tokyo Ueno Station' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Love Hypothesis
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Love Hypothesis', 2021, ARRAY['Contemporary Romance'], '{"authors":["Ali Hazelwood"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 0.5, '2021-09-28' FROM media m WHERE m.title = 'The Love Hypothesis' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rebecca
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Rebecca', 1938, ARRAY['Gothic Fiction','Mystery'], '{"authors":["Daphne du Maurier"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2025-02-12' FROM media m WHERE m.title = 'Rebecca' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Secret History
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Secret History', 1992, ARRAY['Dark Academia'], '{"authors":["Donna Tartt"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2.5, '2021-07-12' FROM media m WHERE m.title = 'The Secret History' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wuthering Heights
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Wuthering Heights', 1847, ARRAY['Gothic Fiction','Tragedy'], '{"authors":["Emily Bronte"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2.5, '2021-11-15' FROM media m WHERE m.title = 'Wuthering Heights' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Guest
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Guest', 2023, ARRAY['Psychological Fiction'], '{"authors":["Emma Cline"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1.5, '2025-08-22' FROM media m WHERE m.title = 'The Guest' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Metamorphesis
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Metamorphesis', 1915, ARRAY['Absurdist Fiction'], '{"authors":["Franz Kafka"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2021-07-13' FROM media m WHERE m.title = 'The Metamorphesis' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Notes from the Underground
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Notes from the Underground', 1864, ARRAY['Existential Fiction'], '{"authors":["Fyodor Dostoevsky"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2025-12-23' FROM media m WHERE m.title = 'Notes from the Underground' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- White Nights
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'White Nights', 1848, ARRAY['Sentimental Fiction','Short Story'], '{"authors":["Fyodor Dostoevsky"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2025-06-04' FROM media m WHERE m.title = 'White Nights' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Crime and Punishment
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Crime and Punishment', 1866, ARRAY['Psychological Fiction','Classic'], '{"authors":["Fyodor Dostoevsky"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2021-12-06' FROM media m WHERE m.title = 'Crime and Punishment' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Norwegian Wood
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Norwegian Wood', 1987, ARRAY['Literary Fiction','Coming-of-age'], '{"authors":["Haruki Murakami"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2021-08-31' FROM media m WHERE m.title = 'Norwegian Wood' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Giovanni's Room
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Giovanni''s Room', 1956, ARRAY['LGBTQ+ Fiction','Literary'], '{"authors":["James Baldwin"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2025-11-26' FROM media m WHERE m.title = 'Giovanni''s Room' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Wall
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Wall', 1963, ARRAY['Dystopian','Survival'], '{"authors":["Marlen Haushofer"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2025-01-13' FROM media m WHERE m.title = 'The Wall' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Master and Margarita
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Master and Margarita', 1967, ARRAY['Magical Realism','Satire'], '{"authors":["Mikhail Bulgakov"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2025-06-12' FROM media m WHERE m.title = 'The Master and Margarita' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- We Love You, Bunny (#2)
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'We Love You, Bunny (#2)', 2025, ARRAY['Gothic','Satire'], '{"authors":["Mona Awad"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1, '2025-12-12' FROM media m WHERE m.title = 'We Love You, Bunny (#2)' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- All's Well
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'All''s Well', 2021, ARRAY['Dark Comedy','Surrealism'], '{"authors":["Mona Awad"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2024-02-07' FROM media m WHERE m.title = 'All''s Well' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bunny (#1)
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Bunny (#1)', 2019, ARRAY['Dark Academia','Satire'], '{"authors":["Mona Awad"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2.5, '2021-09-16' FROM media m WHERE m.title = 'Bunny (#1)' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Exciting Times
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Exciting Times', 2020, ARRAY['Contemporary Fiction','Romance'], '{"authors":["Naoise Dolan"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1, '2024-03-31' FROM media m WHERE m.title = 'Exciting Times' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Model Home
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Model Home', 2024, ARRAY['Horror','Speculative Fiction'], '{"authors":["Rivers Solomon"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1.5, '2025-02-24' FROM media m WHERE m.title = 'Model Home' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Conversations with Friends
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Conversations with Friends', 2017, ARRAY['Contemporary Fiction'], '{"authors":["Sally Rooney"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1.5, '2021-10-04' FROM media m WHERE m.title = 'Conversations with Friends' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Days at the Morisaki Bookshop (#1)
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Days at the Morisaki Bookshop (#1)', 2009, ARRAY['Contemporary Fiction','Comfort'], '{"authors":["Satoshi Yagisawa"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1.5, '2025-01-15' FROM media m WHERE m.title = 'Days at the Morisaki Bookshop (#1)' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Convenience Store Woman
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Convenience Store Woman', 2016, ARRAY['Contemporary Fiction'], '{"authors":["Sayaka Murata"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2021-10-20' FROM media m WHERE m.title = 'Convenience Store Woman' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Woman Destroyed
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Woman Destroyed', 1967, ARRAY['Existential Fiction','Short Stories'], '{"authors":["Simone de Beauvoir"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2.5, '2026-01-09' FROM media m WHERE m.title = 'The Woman Destroyed' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Pet Sematary
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Pet Sematary', 1983, ARRAY['Horror'], '{"authors":["Stephen King"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2, '2025-06-23' FROM media m WHERE m.title = 'Pet Sematary' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Illness as Metaphor and AIDS and Its Metaphors
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Illness as Metaphor and AIDS and Its Metaphors', 1978, ARRAY['Non-fiction','Essays'], '{"authors":["Susan Sontag"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 2.5, '2025-09-03' FROM media m WHERE m.title = 'Illness as Metaphor and AIDS and Its Metaphors' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Seven Husbands of Evelyn Hugo
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Seven Husbands of Evelyn Hugo', 2017, ARRAY['Historical Fiction'], '{"authors":["Taylor Jenkins Reid"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1.5, '2021-09-07' FROM media m WHERE m.title = 'The Seven Husbands of Evelyn Hugo' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Perfection
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Perfection', 2023, ARRAY['Contemporary Fiction'], '{"authors":["Vincenzo Latronico"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'completed', false, 1.5, '2025-11-28' FROM media m WHERE m.title = 'Perfection' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Motherthing
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Motherthing', 2022, ARRAY['Black Comedy','Horror'], '{"authors":["Ainslie Hogarth"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Motherthing' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Hounding
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Hounding', 2024, ARRAY['Folk Horror'], '{"authors":["Aliya Whiteley"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Hounding' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Indelicacy
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Indelicacy', 2020, ARRAY['Literary Fiction'], '{"authors":["Amina Cain"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Indelicacy' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Autobiography of Red
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Autobiography of Red', 1998, ARRAY['Verse Novel'], '{"authors":["Anne Carson"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Autobiography of Red' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Typhoid Mary
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Typhoid Mary', 2001, ARRAY['Non-fiction','History'], '{"authors":["Anthony Bourdain"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Typhoid Mary' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hooked
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Hooked', 2024, ARRAY['Contemporary Fiction','Culinary'], '{"authors":["Asako Yuzuki"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Hooked' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Girl, Woman, Other
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Girl, Woman, Other', 2019, ARRAY['Contemporary Fiction'], '{"authors":["Bernardine Evaristo"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Girl, Woman, Other' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- My Policeman
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'My Policeman', 2012, ARRAY['Historical Romance'], '{"authors":["Bethan Roberts"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'My Policeman' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Her Body and Other Parties
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Her Body and Other Parties', 2017, ARRAY['Magical Realism'], '{"authors":["Carmen Maria Machado"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Her Body and Other Parties' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- In the Dream House
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'In the Dream House', 2019, ARRAY['Memoir','Non-fiction'], '{"authors":["Carmen Maria Machado"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'In the Dream House' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Möbius Book
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Möbius Book', 2025, ARRAY['Hybrid Memoir','Novella'], '{"authors":["Catherine Lacey"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Möbius Book' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Normal Woman
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Normal Woman', 2024, ARRAY['Psychological Thriller'], '{"authors":["Catriona Ward"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Normal Woman' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Nobody Asked for This
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Nobody Asked for This', 2024, ARRAY['Essays','Humor'], '{"authors":["Cazzie David"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Nobody Asked for This' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A Tale of Two Cities
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'A Tale of Two Cities', 1859, ARRAY['Historical Fiction'], '{"authors":["Charles Dickens"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'A Tale of Two Cities' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Kim Jiyoung, Born 1982
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Kim Jiyoung, Born 1982', 2016, ARRAY['Feminist Fiction'], '{"authors":["Cho Nam-joo"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Kim Jiyoung, Born 1982' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Brutes
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Brutes', 2023, ARRAY['Coming-of-age','Surrealism'], '{"authors":["Dizz Tate"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Brutes' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Either/Or
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Either/Or', 2022, ARRAY['Contemporary Fiction'], '{"authors":["Elif Batuman"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Either/Or' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Bad Fruit
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Bad Fruit', 2022, ARRAY['Psychological Thriller'], '{"authors":["Ella King"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Bad Fruit' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Grey Dog
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Grey Dog', 2024, ARRAY['Gothic Horror'], '{"authors":["Elliott Gish"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Grey Dog' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Creep
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Creep', 2024, ARRAY['Psychological Thriller'], '{"authors":["Emma van Straaten"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Creep' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Things Have Gotten Worse Since We Last Spoke
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Things Have Gotten Worse Since We Last Spoke', 2021, ARRAY['Epistolary Horror'], '{"authors":["Eric LaRocca"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Things Have Gotten Worse Since We Last Spoke' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Loved One
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Loved One', 1948, ARRAY['Satire'], '{"authors":["Evelyn Waugh"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Loved One' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Paradais
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Paradais', 2021, ARRAY['Noir','Literary Fiction'], '{"authors":["Fernanda Melchor"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Paradais' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- If I Had Your Face
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'If I Had Your Face', 2020, ARRAY['Contemporary Fiction'], '{"authors":["Frances Cha"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'If I Had Your Face' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Small Rain
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Small Rain', 2024, ARRAY['Contemporary Fiction'], '{"authors":["Garth Greenwell"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Small Rain' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- My Phantoms
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'My Phantoms', 2021, ARRAY['Literary Fiction'], '{"authors":["Gwendoline Riley"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'My Phantoms' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Banal Nightmare
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Banal Nightmare', 2024, ARRAY['Contemporary Fiction','Satire'], '{"authors":["Halle Butler"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Banal Nightmare' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Vegetarian
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Vegetarian', 2007, ARRAY['Psychological Fiction'], '{"authors":["Han Kang"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Vegetarian' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Last Sane Woman
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Last Sane Woman', 2024, ARRAY['Literary Fiction'], '{"authors":["Hannah Regel"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Last Sane Woman' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- They
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'They', 2023, ARRAY['Minimalist Fiction'], '{"authors":["Helle Helle"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'They' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Deep Cuts
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Deep Cuts', 2024, ARRAY['Contemporary Fiction'], '{"authors":["Holly Gramazio"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Deep Cuts' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- A People's History of the United States: 1492-Present
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'A People''s History of the United States: 1492-Present', 1980, ARRAY['Non-fiction','History'], '{"authors":["Howard Zinn"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'A People''s History of the United States: 1492-Present' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Another Country
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Another Country', 1962, ARRAY['Literary Fiction'], '{"authors":["James Baldwin"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Another Country' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- If Beale Street Could Talk
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'If Beale Street Could Talk', 1974, ARRAY['Literary Fiction','Romance'], '{"authors":["James Baldwin"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'If Beale Street Could Talk' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Sense and Sensibility
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Sense and Sensibility', 1811, ARRAY['Classic Literature','Romance'], '{"authors":["Jane Austen"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Sense and Sensibility' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Emma
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Emma', 1815, ARRAY['Classic Literature','Romance'], '{"authors":["Jane Austen"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Emma' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Blue Nights
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Blue Nights', 2011, ARRAY['Memoir','Non-fiction'], '{"authors":["Joan Didion"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Blue Nights' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Clouds
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Clouds', 1985, ARRAY['Philosophical Fiction'], '{"authors":["Juan José Saer"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Clouds' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Road in is Not the Same Road Out
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Road in is Not the Same Road Out', 2015, ARRAY['Poetry'], '{"authors":["Karen Solie"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Road in is Not the Same Road Out' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Dilemmas of Working Women
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Dilemmas of Working Women', 2023, ARRAY['Non-fiction','Sociology'], '{"authors":["Katja Iversen"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Dilemmas of Working Women' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Come rain or come shine
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Come rain or come shine', 2015, ARRAY['Short Stories'], '{"authors":["Kazuo Ishiguro"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Come rain or come shine' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Emperor of Gladness
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Emperor of Gladness', 2024, ARRAY['Literary Fiction'], '{"authors":["Kevin Brockmeier"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Emperor of Gladness' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Lamb
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Lamb', 2024, ARRAY['Folk Horror'], '{"authors":["Lucy Rose"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Lamb' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- One, None and a Hundred Thousand
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'One, None and a Hundred Thousand', 1926, ARRAY['Metafiction'], '{"authors":["Luigi Pirandello"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'One, None and a Hundred Thousand' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Argonauts
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Argonauts', 2015, ARRAY['Memoir','Lyric Essay'], '{"authors":["Maggie Nelson"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Argonauts' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Thirst
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Thirst', 2023, ARRAY['Gothic','Vampire Fiction'], '{"authors":["Marina Yuszczuk"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Thirst' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Black Buck
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Black Buck', 2021, ARRAY['Satire'], '{"authors":["Mateo Askaripour"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Black Buck' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Verdigris
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Verdigris', 2024, ARRAY['Literary Fiction','Horror'], '{"authors":["Michele Mari"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Verdigris' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mild Vertigo
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Mild Vertigo', 2023, ARRAY['Surrealist Fiction'], '{"authors":["Mieko Kanai"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Mild Vertigo' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Breasts and Eggs
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Breasts and Eggs', 2019, ARRAY['Contemporary Fiction'], '{"authors":["Mieko Kawakami"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Breasts and Eggs' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Out
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Out', 1997, ARRAY['Crime','Noir'], '{"authors":["Natsuo Kirino"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Out' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- On Earth We're Briefly Gorgeous
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'On Earth We''re Briefly Gorgeous', 2019, ARRAY['Autofiction','Poetry'], '{"authors":["Ocean Vuong"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'On Earth We''re Briefly Gorgeous' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Alone With You in Ether
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Alone With You in Ether', 2020, ARRAY['Contemporary Romance'], '{"authors":["Olivie Blake"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Alone With You in Ether' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Orlam
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Orlam', 2022, ARRAY['Poetry'], '{"authors":["PJ Harvey"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Orlam' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Notes of a Crocodile
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Notes of a Crocodile', 1994, ARRAY['LGBTQ+ Fiction'], '{"authors":["Qiu Miaojin"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Notes of a Crocodile' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Luster
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Luster', 2020, ARRAY['Contemporary Fiction'], '{"authors":["Raven Leilani"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Luster' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Something Wicked This Way Comes
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Something Wicked This Way Comes', 1962, ARRAY['Dark Fantasy','Horror'], '{"authors":["Ray Bradbury"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Something Wicked This Way Comes' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- In Watermelon Sugar
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'In Watermelon Sugar', 1968, ARRAY['Surrealism'], '{"authors":["Richard Brautigan"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'In Watermelon Sugar' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Earthlings
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Earthlings', 2018, ARRAY['Surrealist Fiction'], '{"authors":["Sayaka Murata"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Earthlings' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- La chimera
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'La chimera', 1990, ARRAY['Historical Fiction'], '{"authors":["Sebastiano Vassalli"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'La chimera' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Hangsaman
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Hangsaman', 1951, ARRAY['Psychological Gothic'], '{"authors":["Shirley Jackson"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Hangsaman' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rouge Street
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Rouge Street', 2022, ARRAY['Neo-noir Novellas'], '{"authors":["Shuang Xuetao"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Rouge Street' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Kitten
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Kitten', 2024, ARRAY['Contemporary Fiction'], '{"authors":["Stacey Yu"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Kitten' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Wish Her Safe At Home
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Wish Her Safe At Home', 1970, ARRAY['Psychological Fiction'], '{"authors":["Stephen Benatar"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Wish Her Safe At Home' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Against Interpretation
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Against Interpretation', 1966, ARRAY['Non-fiction','Criticism'], '{"authors":["Susan Sontag"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Against Interpretation' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- On Women
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'On Women', 2023, ARRAY['Non-fiction','Essays'], '{"authors":["Susan Sontag"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'On Women' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Notes on 'Camp'
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Notes on ''Camp''', 1964, ARRAY['Cultural Criticism'], '{"authors":["Susan Sontag"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Notes on ''Camp''' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Regarding the Pain of Others
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Regarding the Pain of Others', 2003, ARRAY['Non-fiction','Essays'], '{"authors":["Susan Sontag"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Regarding the Pain of Others' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Season of Migration to the North
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Season of Migration to the North', 1966, ARRAY['Post-colonial Fiction'], '{"authors":["Tayeb Salih"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Season of Migration to the North' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Rejection
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Rejection', 2024, ARRAY['Satire','Contemporary'], '{"authors":["Tony Tulathimutte"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Rejection' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Mrs. Dalloway
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Mrs. Dalloway', 1925, ARRAY['Modernist'], '{"authors":["Virginia Woolf"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Mrs. Dalloway' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- The Moonstone
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'The Moonstone', 1868, ARRAY['Detective Fiction'], '{"authors":["Wilkie Collins"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'The Moonstone' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Almond
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Almond', 2017, ARRAY['Literary','YA'], '{"authors":["Won-pyung Sohn"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '74c42906-6efa-4c48-99d0-0b6d2eb01eab', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Almond' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;


-- ========== DM BOOKS ==========
-- Antkind
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Antkind', NULL, '{}', '{"authors":["Charlie Kaufman"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'consuming', true, NULL, '2026-03-01' FROM media m WHERE m.title = 'Antkind' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- What I Talk About When I Talk About Running
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'What I Talk About When I Talk About Running', NULL, '{}', '{"authors":["Haruki Murakami"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'What I Talk About When I Talk About Running' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;

-- Life: a Users Manual
INSERT INTO media (media_type, title, year, genres, metadata) VALUES ('book', 'Life: a Users Manual', NULL, '{}', '{"authors":["George Perec"]}'::jsonb) ON CONFLICT DO NOTHING;
INSERT INTO entries (media_id, user_id, status, owned, rating, consumed_date) SELECT m.id, '3caf032e-8303-4cc4-a4e9-5e624afb2266', 'want', false, NULL, NULL FROM media m WHERE m.title = 'Life: a Users Manual' AND m.media_type = 'book' LIMIT 1 ON CONFLICT (media_id, user_id) DO NOTHING;


COMMIT;