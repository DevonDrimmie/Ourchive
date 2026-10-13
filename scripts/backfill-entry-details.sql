-- Ourchive book entry details generated 2026-10-13T22:53:44.776Z
BEGIN;

-- AB: The Idiot
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'ebook', '2024-04-18' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Idiot' AND bk.authors = ARRAY['Fyodor Dostoevsky'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Tender is the Flesh
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Tender is the Flesh' AND bk.authors = ARRAY['Agustina Bazterrica'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Fall
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Fall' AND bk.authors = ARRAY['Albert Camus'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Stranger
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Stranger' AND bk.authors = ARRAY['Albert Camus'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Rebel
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Rebel' AND bk.authors = ARRAY['Albert Camus'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Count of Monte Cristo
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Count of Monte Cristo' AND bk.authors = ARRAY['Alexandre Dumas'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Decreation: Poetry, Essays, Opera
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Decreation: Poetry, Essays, Opera' AND bk.authors = ARRAY['Anne Carson'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Complete Poems
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Complete Poems' AND bk.authors = ARRAY['Anne Sexton'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Butter
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Butter' AND bk.authors = ARRAY['Asako Yuzuki'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: All About Love: New Visions
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'All About Love: New Visions' AND bk.authors = ARRAY['bell hooks'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Communion: The Female Search for Love
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Communion: The Female Search for Love' AND bk.authors = ARRAY['bell hooks'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Will to Change
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Will to Change' AND bk.authors = ARRAY['bell hooks'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Lair of the White Worm
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Lair of the White Worm' AND bk.authors = ARRAY['Bram Stoker'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Dracula
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Dracula' AND bk.authors = ARRAY['Bram Stoker'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Real Life
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Real Life' AND bk.authors = ARRAY['Brandon Taylor'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Biography of X
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Biography of X' AND bk.authors = ARRAY['Catherine Lacey'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Jane Eyre
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Jane Eyre' AND bk.authors = ARRAY['Charlotte Brontë'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Ghosts
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Ghosts' AND bk.authors = ARRAY['Dolly Alderton'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Good Material
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Good Material' AND bk.authors = ARRAY['Dolly Alderton'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Complete Poems 1904-1962
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Complete Poems 1904-1962' AND bk.authors = ARRAY['E.E. Cummings'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Days of Abandonment
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Days of Abandonment' AND bk.authors = ARRAY['Elena Ferrante'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Idiot
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Idiot' AND bk.authors = ARRAY['Elif Batuman'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Dune (Dune, #1)
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Dune (Dune, #1)' AND bk.authors = ARRAY['Frank Herbert'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Brothers Karamazov
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Brothers Karamazov' AND bk.authors = ARRAY['Fyodor Dostoevsky'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Tender Buttons
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Tender Buttons' AND bk.authors = ARRAY['Gertrude Stein'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The War of the Worlds
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The War of the Worlds' AND bk.authors = ARRAY['H.G. Wells'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The New Me
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The New Me' AND bk.authors = ARRAY['Halle Butler'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Kafka on the Shore
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Kafka on the Shore' AND bk.authors = ARRAY['Haruki Murakami'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Terminal Boredom: Stories
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Terminal Boredom: Stories' AND bk.authors = ARRAY['Izumi Suzuki'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: I Who Have Never Known Men
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'I Who Have Never Known Men' AND bk.authors = ARRAY['Jacqueline Harpman'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Persuasion
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Persuasion' AND bk.authors = ARRAY['Jane Austen'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Pride and Prejudice
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Pride and Prejudice' AND bk.authors = ARRAY['Jane Austen'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Existentialism is a Humanism
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Existentialism is a Humanism' AND bk.authors = ARRAY['Jean-Paul Sartre'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Nausea
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Nausea' AND bk.authors = ARRAY['Jean-Paul Sartre'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Slouching Towards Bethlehem
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Slouching Towards Bethlehem' AND bk.authors = ARRAY['Joan Didion'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Year of Magical Thinking
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Year of Magical Thinking' AND bk.authors = ARRAY['Joan Didion'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Your Love is Not Good
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Your Love is Not Good' AND bk.authors = ARRAY['Johanna Hedva'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Paradise Lost
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Paradise Lost' AND bk.authors = ARRAY['John Milton'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: East of Eden
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'East of Eden' AND bk.authors = ARRAY['John Steinbeck'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: One Flew Over the Cuckoo's Nest
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'One Flew Over the Cuckoo''s Nest' AND bk.authors = ARRAY['Ken Kesey'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Cat's Cradle
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Cat''s Cradle' AND bk.authors = ARRAY['Kurt Vonnegut'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Slaughterhouse-Five
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Slaughterhouse-Five' AND bk.authors = ARRAY['Kurt Vonnegut'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Satantango
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Satantango' AND bk.authors = ARRAY['László Krasznahorkai'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Anna Karenina
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Anna Karenina' AND bk.authors = ARRAY['Leo Tolstoy'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Flame
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Flame' AND bk.authors = ARRAY['Leonard Cohen'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Bluets
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Bluets' AND bk.authors = ARRAY['Maggie Nelson'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: House of Leaves
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'House of Leaves' AND bk.authors = ARRAY['Mark Z. Danielewski'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Monk
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Monk' AND bk.authors = ARRAY['Matthew Gregory Lewis'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Crying in H Mart
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Crying in H Mart' AND bk.authors = ARRAY['Michelle Zauner'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: 13 Ways of Looking at a Fat Girl
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = '13 Ways of Looking at a Fat Girl' AND bk.authors = ARRAY['Mona Awad'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Rouge
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Rouge' AND bk.authors = ARRAY['Mona Awad'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Time is a Mother
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Time is a Mother' AND bk.authors = ARRAY['Ocean Vuong'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Drive Your Plow Over the Bones of the Dead
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Drive Your Plow Over the Bones of the Dead' AND bk.authors = ARRAY['Olga Tokarczuk'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Picture of Dorian Gray
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Picture of Dorian Gray' AND bk.authors = ARRAY['Oscar Wilde'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Death in Her Hands
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Death in Her Hands' AND bk.authors = ARRAY['Ottessa Moshfegh'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Eileen
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Eileen' AND bk.authors = ARRAY['Ottessa Moshfegh'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Just Kids
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Just Kids' AND bk.authors = ARRAY['Patti Smith'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Do Androids Dream of Electric Sheep?
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Do Androids Dream of Electric Sheep?' AND bk.authors = ARRAY['Philip K. Dick'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: I, Rigoberta Menchú
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'I, Rigoberta Menchú' AND bk.authors = ARRAY['Rigoberta Menchú'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Vampire Literature: An Anthology
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Vampire Literature: An Anthology' AND bk.authors = ARRAY['Robin A. Werner & Elizabeth M. Lewis'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Madonna in a Fur Coat
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Madonna in a Fur Coat' AND bk.authors = ARRAY['Sabahattin Ali'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Intermezzo
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Intermezzo' AND bk.authors = ARRAY['Sally Rooney'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Beautiful World, Where Are You
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Beautiful World, Where Are You' AND bk.authors = ARRAY['Sally Rooney'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Ripe
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Ripe' AND bk.authors = ARRAY['Sarah Rose Etter'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Haunting of Hill House
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Haunting of Hill House' AND bk.authors = ARRAY['Shirley Jackson'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Either/Or
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Either/Or' AND bk.authors = ARRAY['Søren Kierkegaard'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: On Photography
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'On Photography' AND bk.authors = ARRAY['Susan Sontag'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Beloved
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Beloved' AND bk.authors = ARRAY['Toni Morrison'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Before the Coffee Gets Cold
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Before the Coffee Gets Cold' AND bk.authors = ARRAY['Toshikazu Kawaguchi'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Lost on Me
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Lost on Me' AND bk.authors = ARRAY['Veronica Raimo'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Orlando
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Orlando' AND bk.authors = ARRAY['Virginia Woolf'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: To the Lighthouse
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'To the Lighthouse' AND bk.authors = ARRAY['Virginia Woolf'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Lolita
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Lolita' AND bk.authors = ARRAY['Vladimir Nabokov'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Heart and Science
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Heart and Science' AND bk.authors = ARRAY['Wilkie Collins'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Woman in White
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Woman in White' AND bk.authors = ARRAY['Wilkie Collins'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Sound and the Fury
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Sound and the Fury' AND bk.authors = ARRAY['William Faulkner'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: As I Lay Dying
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'As I Lay Dying' AND bk.authors = ARRAY['William Faulkner'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Essential Wordsworth
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Essential Wordsworth' AND bk.authors = ARRAY['William Wordsworth'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Taiwan Travelogue
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Taiwan Travelogue' AND bk.authors = ARRAY['Yang Shuang-zi'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: We
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'We' AND bk.authors = ARRAY['Yevgeny Zamyatin'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Memory Police
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Memory Police' AND bk.authors = ARRAY['Yoko Ogawa'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Tokyo Ueno Station
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', NULL FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Tokyo Ueno Station' AND bk.authors = ARRAY['Yu Miri'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Love Hypothesis
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-09-26' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Love Hypothesis' AND bk.authors = ARRAY['Ali Hazelwood'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Rebecca
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-10-10' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Rebecca' AND bk.authors = ARRAY['Daphne du Maurier'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Secret History
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-06-20' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Secret History' AND bk.authors = ARRAY['Donna Tartt'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Wuthering Heights
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-10-25' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Wuthering Heights' AND bk.authors = ARRAY['Emily Bronte'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Guest
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-08-05' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Guest' AND bk.authors = ARRAY['Emma Cline'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Metamorphesis
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-07-13' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Metamorphesis' AND bk.authors = ARRAY['Franz Kafka'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Notes from the Underground
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-09-04' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Notes from the Underground' AND bk.authors = ARRAY['Fyodor Dostoevsky'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: White Nights
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-06-04' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'White Nights' AND bk.authors = ARRAY['Fyodor Dostoevsky'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Crime and Punishment
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-10-29' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Crime and Punishment' AND bk.authors = ARRAY['Fyodor Dostoevsky'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Norwegian Wood
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-07-14' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Norwegian Wood' AND bk.authors = ARRAY['Haruki Murakami'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Giovanni's Room
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-09-09' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Giovanni''s Room' AND bk.authors = ARRAY['James Baldwin'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Wall
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2024-07-02' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Wall' AND bk.authors = ARRAY['Marlen Haushofer'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Master and Margarita
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-03-02' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Master and Margarita' AND bk.authors = ARRAY['Mikhail Bulgakov'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: We Love You, Bunny (#2)
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-12-01' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'We Love You, Bunny (#2)' AND bk.authors = ARRAY['Mona Awad'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: All's Well
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2023-08-13' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'All''s Well' AND bk.authors = ARRAY['Mona Awad'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Bunny (#1)
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-09-01' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Bunny (#1)' AND bk.authors = ARRAY['Mona Awad'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Exciting Times
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2023-06-29' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Exciting Times' AND bk.authors = ARRAY['Naoise Dolan'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Model Home
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-02-12' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Model Home' AND bk.authors = ARRAY['Rivers Solomon'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Conversations with Friends
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-09-16' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Conversations with Friends' AND bk.authors = ARRAY['Sally Rooney'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Days at the Morisaki Bookshop (#1)
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-01-14' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Days at the Morisaki Bookshop (#1)' AND bk.authors = ARRAY['Satoshi Yagisawa'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Convenience Store Woman
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-10-12' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Convenience Store Woman' AND bk.authors = ARRAY['Sayaka Murata'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Woman Destroyed
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-12-18' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Woman Destroyed' AND bk.authors = ARRAY['Simone de Beauvoir'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Pet Sematary
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-06-13' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Pet Sematary' AND bk.authors = ARRAY['Stephen King'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Illness as Metaphor and AIDS and Its Metaphors
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-08-11' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Illness as Metaphor and AIDS and Its Metaphors' AND bk.authors = ARRAY['Susan Sontag'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: The Seven Husbands of Evelyn Hugo
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2021-08-19' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'The Seven Husbands of Evelyn Hugo' AND bk.authors = ARRAY['Taylor Jenkins Reid'] ON CONFLICT (entry_id) DO NOTHING;
-- AB: Perfection
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, NULL, '2025-11-27' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '74c42906-6efa-4c48-99d0-0b6d2eb01eab' AND m.title = 'Perfection' AND bk.authors = ARRAY['Vincenzo Latronico'] ON CONFLICT (entry_id) DO NOTHING;
-- DM: Antkind
INSERT INTO book_entry_details (entry_id, format, started_date) SELECT e.id, 'physical', '2026-03-01' FROM entries e JOIN media m ON m.id = e.media_id JOIN books bk ON bk.media_id = m.id WHERE e.user_id = '3caf032e-8303-4cc4-a4e9-5e624afb2266' AND m.title = 'Antkind' AND bk.authors = ARRAY['Charlie Kaufman'] ON CONFLICT (entry_id) DO NOTHING;

COMMIT;