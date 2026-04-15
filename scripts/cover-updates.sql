-- Cover image updates
DO $$
BEGIN
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/ArYdSuX3zY9fMsE4LqmBl7xJq5R.jpg', external_id = '11830', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In this humorous paean to the joys of food, a pair of truck drivers happen onto a decrepit roadside shop selling ramen noodles. The widowed owner, Tampopo, begs them to help her turn her establishment into a paragon of the \"art of noodle-soup making\". Interspersed are satirical vignettes about the importance of food to different aspects of human life."'::jsonb) WHERE title = 'Tampopo' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/3Z9c1tbUhP0QruRjczPHnbx3U2D.jpg', external_id = '1216191', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After the brutal murder of her twin sister, Darcy goes after those responsible by using haunted items as her tools for revenge."'::jsonb) WHERE title = 'Oddity' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/mBBqKfkvzSk6Rk7bfRXU9kR916N.jpg', external_id = '44479', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A young black lesbian filmmaker probes into the life of The Watermelon Woman, a 1930s black actress who played ''mammy'' archetypes."'::jsonb) WHERE title = 'The Watermelon Woman' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/1wREWUEHzjDWSreNFbFLDO7YEaM.jpg', external_id = '1480387', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The host of a popular paranormal podcast becomes haunted by terrifying recordings mysteriously sent her way."'::jsonb) WHERE title = 'Undertone' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/qqqkiZSU9EBGZ1KiDmfn07S7qvv.jpg', external_id = '837', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"As the president of a trashy TV channel, Max Renn is desperate for new programming to attract viewers. When he happens upon \"Videodrome,\" a TV show dedicated to gratuitous torture and punishment, Max sees a potential hit and broadcasts the show on his channel. However, after his girlfriend auditions for the show and never returns, Max investigates the truth behind Videodrome and discovers that the graphic violence may not be as fake as he thought."'::jsonb) WHERE title = 'Videodrome' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/3YBce6dTh1D5oCMITXk2S5QhPt.jpg', external_id = '1316092', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Tragedy strikes when Heathcliff falls in love with Catherine Earnshaw, a woman from a wealthy family in 18th-century England."'::jsonb) WHERE title = 'Wuthering Heights' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/rUSjbyvYWN9H4az8xt0tDtU7I6v.jpg', external_id = '68722', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Freddie, a volatile, heavy-drinking veteran who suffers from post-traumatic stress disorder, finds some semblance of a family when he stumbles onto the ship of Lancaster Dodd, the charismatic leader of a new \"religion\" he forms after World War II."'::jsonb) WHERE title = 'The Master' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/lbBWwxBht4JFP5PsuJ5onpMqugW.jpg', external_id = '1054867', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Washed-up revolutionary Bob exists in a state of stoned paranoia, surviving off-grid with his spirited, self-reliant daughter, Willa. When his evil nemesis resurfaces after 16 years and she goes missing, the former radical scrambles to find her, father and daughter both battling the consequences of his past."'::jsonb) WHERE title = 'One Battle After Another' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/tzGY49kseSE9QAKk47uuDGwnSCu.jpg', external_id = '1091', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A research team in Antarctica is hunted by a shape-shifting alien that assumes the appearance of its victims."'::jsonb) WHERE title = 'The Thing' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/kK1BGkG3KAvWB0WMV1DfOx9yTMZ.jpg', external_id = '1272837', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Dr. Kelson finds himself in a shocking new relationship - with consequences that could change the world as they know it - and Spike''s encounter with Jimmy Crystal becomes a nightmare he can''t escape."'::jsonb) WHERE title = '28 Years Later: The Bone Temple' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/lYWEXbQgRTR4ZQleSXAgRbxAjvq.jpg', external_id = '1317288', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Marty Mauser, a young man with a dream no one respects, goes to hell and back in pursuit of greatness."'::jsonb) WHERE title = 'Marty Supreme' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/rYfUcEV88Z3gENrfYTE6i8yBkDr.jpg', external_id = '10683', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The lives of several individuals intertwine as they go about their lives in their own unique ways, engaging in acts which society as a whole might find disturbing in a desperate search for human connection."'::jsonb) WHERE title = 'Happiness' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/wobVTa99eW0ht6c1rNNzLkazPtR.jpg', external_id = '604079', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In a dystopian 1970s America, fifty teenage boys take part in a deadly annual walking contest, forced to maintain a minimum pace or be executed, until only one survivor remains."'::jsonb) WHERE title = 'The Long Walk' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/oPaEQ3m4zHOzIAstgXCZZtzcHTL.jpg', external_id = '1352624', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In a sedate Massachusetts suburb circa 1970, unemployed family man and amateur art thief J.B. Mooney sets out on his first heist. With the museum cased and accomplices recruited, he has an airtight plan. Or so he thinks."'::jsonb) WHERE title = 'The Mastermind' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/ArNYeeDFLVye7JpqLElYdbE6fOa.jpg', external_id = '575776', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Having recently found God, self-effacing young nurse Maud arrives at a plush home to care for Amanda, a hedonistic dancer left frail from a chronic illness. When a chance encounter with a former colleague throws up hints of a dark past, it becomes clear there is more to sweet Maud than meets the eye."'::jsonb) WHERE title = 'Saint Maud' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/sBpxTGLzKnvPSVtL5yQYpSxvKEb.jpg', external_id = '639988', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After being laid off and humiliated by a ruthless job market, a veteran paper mill manager descends into violence in a desperate bid to reclaim his dignity."'::jsonb) WHERE title = 'No Other Choice' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/qCOGGi8JBVEZMc3DVby8rUivyXz.jpg', external_id = '812583', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When young priest Jud Duplenticy is sent to assist charismatic firebrand Monsignor Jefferson Wicks, it’s clear that all is not well in the pews. After a sudden and seemingly impossible murder rocks the town, the lack of an obvious suspect prompts local police chief Geraldine Scott to join forces with renowned detective Benoit Blanc to unravel a mystery that defies all logic."'::jsonb) WHERE title = 'Wake Up Dead Man' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/iYypPT4bhqXfq1b6EnmxvRt6b2Y.jpg', external_id = '843', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Two neighbors form a strong bond after both suspect extramarital activities of their spouses. However, they agree to keep their bond platonic so as not to commit similar wrongs."'::jsonb) WHERE title = 'In the Mood for Love' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/snUGvh5T2n6XfCTfw2Sqfj7kK8h.jpg', external_id = '1517065', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Two newly dead young people meet in the streets of Athens, amid the pulsing cityscape and the ghosts of history. One a translator, the other a photographer, they were outsiders in life; in death they struggle with the residue of their longings and mistakes. They wander the city together, finding consolation in the difficult beauty of existence and its aftermath."'::jsonb) WHERE title = 'How to Shoot a Ghost' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/oxgsAQDAAxA92mFGYCZllgWkH9J.jpg', external_id = '701387', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Two conspiracy obsessed young men kidnap the high-powered CEO of a major company, convinced that she is an alien intent on destroying planet Earth."'::jsonb) WHERE title = 'Bugonia' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/1l5UaoP25Ak8PWCKIULQz70yF03.jpg', external_id = '8052', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A stranger mentors a young Reno gambler who weds a hooker and befriends a vulgar casino regular."'::jsonb) WHERE title = 'Hard Eight' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/mdRXSE7ho185SZlXj0JSwuecEd3.jpg', external_id = '11013', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A young woman, recently released from a mental hospital, gets a job as a secretary to a demanding lawyer, where their employer-employee relationship turns into a sexual, sadomasochistic one."'::jsonb) WHERE title = 'Secretary' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/oekamLQrwlJjRNmfaBE4llIvkir.jpg', external_id = '1071585', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After the underlying tech for M3GAN is stolen and misused by a powerful defense contractor to create a military-grade weapon known as Amelia, M3GAN''s creator Gemma realizes that the only option is to resurrect M3GAN and give her a few upgrades, making her faster, stronger, and more lethal."'::jsonb) WHERE title = 'M3GAN 2.0' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/c3zEimDraIyMSasPMGDaNOrhnzn.jpg', external_id = '27324', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In the immense city of Tokyo, the darkness of the afterlife lures some of its inhabitants desperately trying to escape the sadness and isolation of the modern world."'::jsonb) WHERE title = 'Pulse' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/cI5AV3jCuxmoQp0N7Z16SI2b7Xk.jpg', external_id = '21588', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Francesco Dellamorte  is the groundskeeper at a cemetery where the dead just won’t stay dead—and it’s up to him to deal with those who come back to life with a hunger for human flesh. But Dellamorte’s job soon becomes much more complicated when he falls for an enigmatic young woman whose husband has recently died."'::jsonb) WHERE title = 'Cemetery Man' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/bmUTHMmqiLWBo19U2y5kk2uqJbA.jpg', external_id = '1244244', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Ryōsuke Yoshii, an ordinary reseller, carelessly earns grudges by people and becomes entangled in a life-threatening struggle."'::jsonb) WHERE title = 'Cloud' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/80slKYVM5teFH3kz6ouWrZXveqj.jpg', external_id = '1242011', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Years into their relationship, Tim and Millie find themselves at a crossroads as they move to the country, abandoning all that is familiar in their lives except each other. With tensions already flaring, a nightmarish encounter with a mysterious, unnatural force threatens to corrupt their lives, their love, and their flesh."'::jsonb) WHERE title = 'Together' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/2LRzNq41yrY8EjCnD1S8sCCPvKk.jpg', external_id = '309', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The family of a wealthy businessman gather to celebrate his 60th birthday. During the course of the party, his eldest son presents a speech that reveals a devastating secret that turns the night into a battle of truth and denial."'::jsonb) WHERE title = 'The Celebration' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/qq3Q1tsxAxMqP38YTZKl8m5zmA4.jpg', external_id = '1177767', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In 2011, Montreal’s indie music scene, Grace Pine, a 24-year-old music critic moves to the Canadian city to write a book on Alanis Morissette’s classic ''Jagged Little Pill'' album. But her plans take an unexpected turn when she gets romantically involved with members of an indie band for whom she serves as their publicist."'::jsonb) WHERE title = 'Mile End Kicks' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/f9TOb5anVwZeSbYjU1qNxPk3KUk.jpg', external_id = '201085', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In the aftermath of a family tragedy, an aspiring author is torn between love for her childhood friend and the temptation of a mysterious outsider. Trying to escape the ghosts of her past, she is swept away to a house that breathes, bleeds… and remembers."'::jsonb) WHERE title = 'Crimson Peak' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/g4JtvGlQO7DByTI6frUobqvSL3R.jpg', external_id = '1062722', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Dr. Victor Frankenstein, a brilliant but egotistical scientist, brings a creature to life in a monstrous experiment that ultimately leads to the undoing of both the creator and his tragic creation."'::jsonb) WHERE title = 'Frankenstein' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/t7qEuGwDjcYu8ajaKZ68DeDnOxw.jpg', external_id = '343', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A deadpan young man obsessed with death meets an eccentric septuagenarian who teaches him to live life to the fullest."'::jsonb) WHERE title = 'Harold and Maud' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/pz9NCWxxOk3o0W3v1Zkhawrwb4i.jpg', external_id = '1124566', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Sisters Nora and Agnes reunite with their estranged father, the charismatic Gustav, a once-renowned director who offers stage actress Nora a role in what he hopes will be his comeback film. When Nora turns it down, she soon discovers he has given her part to an eager young Hollywood star."'::jsonb) WHERE title = 'Sentimental Value' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/ynePU5z7JFn2Gf82RmfZgV84H8X.jpg', external_id = '788734', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Increasingly overshadowed by her boyfriend''s recent rise to fame as a contemporary artist creating sculptures from stolen furniture, Signe hatches a vicious plan to reclaim her rightfully deserved attention within the milieu of Oslo''s cultural elite."'::jsonb) WHERE title = 'Sick of Myself' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/yYa8Onk9ow7ukcnfp2QWVvjWYel.jpg', external_id = '1124620', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When twin brothers find a mysterious wind-up monkey, a series of outrageous deaths tear their family apart. Twenty-five years later, the monkey begins a new killing spree forcing the estranged brothers to confront the cursed toy."'::jsonb) WHERE title = 'The Monkey' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/jbnazCHr8S2l2glyvjPTpa4NbEw.jpg', external_id = '744653', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A group of senior sleuths passionate about solving cold cases get plunged into a real-life murder mystery in this comic crime caper."'::jsonb) WHERE title = 'The Thursday Murder Club' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/wgSwDqhl6Rt3cuSCwt5sNpPna3x.jpg', external_id = '11171', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A teenage hustler and a young man obsessed with alien abductions cross paths, together discovering a horrible, liberating truth."'::jsonb) WHERE title = 'Mysterious Skin' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/n5FygjEppOvac6yEaowi26nTyw3.jpg', external_id = '1100988', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Twenty-eight years after the Rage virus outbreak, a heavily-defended island survives connected to the mainland by a single causeway. When one of the group leaves the island into the dark heart of the mainland, he discovers secrets, wonders, and horrors that have mutated not only the infected but other survivors as well."'::jsonb) WHERE title = '28 Years Later' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/4GIqZUgPZ146BhibsPHMHef2nXX.jpg', external_id = '648878', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In May of 2020, a standoff between a small-town sheriff and mayor sparks a powder keg as neighbor is pitted against neighbor in Eddington, New Mexico."'::jsonb) WHERE title = 'Eddington' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/z81rBzHNgiNLean2JTGHgxjJ8nq.jpg', external_id = '3133', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"An impressionable teenage girl from a dead-end town and her older greaser boyfriend embark on a killing spree in the South Dakota badlands."'::jsonb) WHERE title = 'Badlands' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/fXn4Nz1WCTEmzAFvwgEZoPHvptR.jpg', external_id = '776501', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Reality and fantasy begin to blur when a teenager, alone in her attic bedroom, immerses herself in a role-playing horror game online."'::jsonb) WHERE title = 'We''re All Going to the World''s Fair' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/iQ7G9LhP7NRRIUM4Vlai3eOxBAc.jpg', external_id = '744857', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When brothers Pedro and Jimi discover that a demonic infection has been festering in a nearby farmhouse, they attempt to evict the victim from their land. Failing to adhere to the proper rites of exorcism, their reckless actions inadvertently trigger an epidemic of possessions across their rural community."'::jsonb) WHERE title = 'When Evil Lurks' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/1Q3GlCXGYWELifxANYZ5OVMRVZl.jpg', external_id = '1151031', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Following the death of their father, a brother and sister are sent to live with a foster mother, only to learn that she is hiding a terrifying secret."'::jsonb) WHERE title = 'Bring Her Back' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/fKTPH2WvH8nHTXeBYBVhawtRqtR.jpg', external_id = '77', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Leonard Shelby is tracking down the man who raped and murdered his wife. The difficulty of locating his wife''s killer, however, is compounded by the fact that he suffers from a rare, untreatable form of short-term memory loss. Although he can recall details of life before his accident, Leonard cannot remember what happened fifteen minutes ago, where he''s going, or why."'::jsonb) WHERE title = 'Memento' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/a1gIACZb04bL8EvLqMpofW2Eqeo.jpg', external_id = '8913', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After the Creed family''s cat is accidentally killed, a friendly neighbor advises its burial in a mysterious nearby cemetery."'::jsonb) WHERE title = 'Pet Sematary' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/eMs20iUQyZVs05Ck7Q0LNnRsstr.jpg', external_id = '462', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A twice-divorced mother of three who sees an injustice, takes on the bad guy and wins -- with a little help from her push-up bra. Erin goes to work for an attorney and comes across medical records describing illnesses clustered in one nearby town. She starts investigating and soon exposes a monumental cover-up."'::jsonb) WHERE title = 'Erin Brockovich' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/sQckQRt17VaWbo39GIu0TMOiszq.jpg', external_id = '170', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Twenty-eight days after a killer virus was accidentally unleashed from a British research facility, a small group of London survivors are caught in a desperate struggle to protect themselves from the infected. Carried by animals and humans, the virus turns those it infects into homicidal maniacs -- and it''s absolutely impossible to contain."'::jsonb) WHERE title = '28 Days Later' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/oxhHl2YokTqcP44QK5tiTgjgLgk.jpg', external_id = '1832', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"An abortion clinic worker with a special heritage is called upon to save the existence of humanity from being negated by two renegade angels trying to exploit a loophole and reenter Heaven."'::jsonb) WHERE title = 'Dogma' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/cfGEUftQVjvJHTTc3OKbzfsBamT.jpg', external_id = '36196', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Although Mary has little income, she still finds ways to spend her nights at clubs. After being arrested for throwing an illegal rave, she asks her aunt Judy for bail money. Judy then finds Mary a job at her library so that Mary can repay her. Initially, Mary finds the job as a clerk boring and stifling, and prefers to get to know a street food vendor whom she likes. However, Mary must refocus her life once she loses her job and apartment."'::jsonb) WHERE title = 'Party Girl' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/1ffZAucqfvQu36x1C49XfOdjuOG.jpg', external_id = '516729', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Paddington travels to Peru to visit his beloved Aunt Lucy, who now resides at the Home for Retired Bears. With the Brown Family in tow, a thrilling adventure ensues when a mystery plunges them into an unexpected journey through the Amazon rainforest and up to the mountain peaks of Peru."'::jsonb) WHERE title = 'Paddington in Peru' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/edKpE9B5qN3e559OuMCLZdW1iBZ.jpg', external_id = '696506', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Unlikely hero Mickey Barnes finds himself in the extraordinary circumstance of working for an employer who demands the ultimate commitment to the job… to die, for a living."'::jsonb) WHERE title = 'Mickey 17' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/eikAu9gPJTQQmwFwa1zX5Hfz96P.jpg', external_id = '1239655', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Suburban dad Craig falls hard for his charismatic new neighbor Austin, and his attempts to make an adult male friend threatens to ruin both of their lives."'::jsonb) WHERE title = 'Friendship' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/lZGOK0I2DJSRlEPNOAFTSNxSjDD.jpg', external_id = '840705', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When tech billionaire Slater King meets cocktail waitress Frida at his fundraising gala, he invites her to join him and his friends on a dream vacation on his private island. But despite the epic setting, beautiful people, ever-flowing champagne, and late-night dance parties, Frida can sense that there’s something sinister hiding beneath the island’s lush façade."'::jsonb) WHERE title = 'Blink Twice' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/8wxb1kb30QSOFMBx59nXqPB73nu.jpg', external_id = '988361', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A young Montreal advertising executive, converted to a Provençal shepherd, has various misadventures with a civil servant who has cavalierly quit her job."'::jsonb) WHERE title = 'Shepherds' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/oCf5O6uxooTvRwKVnLHwGqZUifq.jpg', external_id = '1120911', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"At 11:30pm on October 11, 1975, a ferocious troupe of young comedians and writers changed television forever. This is the story of what happened behind the scenes in the 90 minutes leading up to the first broadcast of Saturday Night Live."'::jsonb) WHERE title = 'Saturday Night' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/fr96XzlzsONrQrGfdLMiwtQjott.jpg', external_id = '1138194', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Two young missionaries are forced to prove their faith when they knock on the wrong door and are greeted by a diabolical Mr. Reed, becoming ensnared in his deadly game of cat-and-mouse."'::jsonb) WHERE title = 'Heretic' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/luWKeAedGQwNu3AdzygaBQN4h8f.jpg', external_id = '1010639', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A high school senior from South Carolina gets her first glimpse of the wider world, picturesque cities, and woods of the Eastern seaboard on a class trip to Washington, D.C."'::jsonb) WHERE title = 'The Sweet East' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/67xRIXm5TxXRT4nV2V4AEJ9yq2d.jpg', external_id = '1013850', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Mismatched cousins David and Benji reunite for a tour through Poland to honor their beloved grandmother. The adventure takes a turn when the pair''s old tensions resurface against the backdrop of their family history."'::jsonb) WHERE title = 'A Real Pain' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/oCoTgC3UyWGfyQ9thE10ulWR7bn.jpg', external_id = '1084199', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"During a weekend getaway at a secluded lakeside estate, a group of friends finds themselves entangled in a web of secrets, deception, and advanced technology. As tensions rise and loyalties are tested, they uncover unsettling truths about themselves and the world around them."'::jsonb) WHERE title = 'Companion' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/rwxTYjOZmX2rGhz7avLe1qsjNqe.jpg', external_id = '16642', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In 1916, a Chicago steel worker accidentally kills his supervisor and flees to the Texas panhandle with his girlfriend and little sister to work harvesting wheat in the fields of a stoic farmer."'::jsonb) WHERE title = 'Days of Heaven' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/lp0dtmNtOW88A13GZjGoKZko7S8.jpg', external_id = '891933', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Fran likes to think about dying. It brings sensation to her quiet life. When she makes the new guy at work laugh, it leads to more: a date, a slice of pie, a conversation, a spark. The only thing standing in their way is Fran herself."'::jsonb) WHERE title = 'Sometimes I Think About Dying' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/xZIGHoHj0DF0zdibwa66cRWHdHO.jpg', external_id = '1140535', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A couple and their children move into a seemingly normal suburban home. When strange events occur, they begin to believe there is something else in the house with them. The presence is about to disrupt their lives in unimaginable ways."'::jsonb) WHERE title = 'Presence' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/x4BTjxdrOKC27FcSkBh8KPEgnum.jpg', external_id = '431', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A group of strangers find themselves trapped in a maze-like prison. It soon becomes clear that each of them possesses the peculiar skills necessary to escape, if they don''t wind up dead first."'::jsonb) WHERE title = 'Cube' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/ffEmHQAiD0m5dEQ6rlsuA9vlllW.jpg', external_id = '2757', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Charlie Kaufman is a confused L.A. screenwriter overwhelmed by feelings of inadequacy, sexual frustration, self-loathing, and by the screenwriting ambitions of his freeloading twin brother Donald. While struggling to adapt \"The Orchid Thief,\" by Susan Orlean, Kaufman''s life spins from pathetic to bizarre. The lives of Kaufman, Orlean''s book, become strangely intertwined as each one''s search for passion collides with the others''."'::jsonb) WHERE title = 'Adaptation' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/kl3mewFceFtYIavvGts2atzB0e0.jpg', external_id = '39874', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Twenty years after a Valentine''s Day tragedy claimed the lives of five miners, Harry Warden returns for a vengeful massacre among teen sweethearts gearing up for another party."'::jsonb) WHERE title = 'My Bloody Valentine' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/wycDdx2BrdNKlyTZoZT8uLeu6dq.jpg', external_id = '89185', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"High school senior Tara is so painfully shy that she dreads speaking to anyone in the hallways or getting called on in class. But in the privacy of her bedroom with her iPod in hand, she rocks out -- doing mock broadcasts for Miami''s hottest FM radio station, which happens to be owned by her stepfather. When a slot opens up at The SLAM, Tara surprises herself by blossoming behind the mike into confident, \"Radio Rebel\" -- and to everyone''s shock, she''s a hit!"'::jsonb) WHERE title = 'Radio Rebel' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/nC7MgPceKAEPWYq6aswrNzG8WAM.jpg', external_id = '1156125', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Takumi and his daughter Hana live in Mizubiki Village, close to Tokyo. One day, the village inhabitants become aware of a plan to build a camping site near Takumi''s house offering city residents a comfortable \"escape\" to nature."'::jsonb) WHERE title = 'Evil Does Not Exist' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/5qGIxdEO841C0tdY8vOdLoRVrr0.jpg', external_id = '426063', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A gothic tale of obsession between a haunted young woman and the terrifying vampire infatuated with her, causing untold horror in its wake."'::jsonb) WHERE title = 'Nosferatu' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/47IXH2iEWwX0F7vIyGXaKQ0psBG.jpg', external_id = '507076', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When a dance troupe is lured to an empty school, a bowl of drug-laced sangria causes their jubilant rehearsal to descend into a dark and explosive nightmare as they try to survive the night—and find who''s responsible—before it''s too late."'::jsonb) WHERE title = 'Climax' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/xe4b2TMciLKA1C0JlhWxb4ENLln.jpg', external_id = '1059128', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In 1950s Mexico City, William Lee, an American ex-pat in his late forties, leads a solitary life amidst a small American community. However, the arrival in town of Eugene Allerton, a young student, stirs William into finally establishing a meaningful connection with someone."'::jsonb) WHERE title = 'Queer' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/nnl6OWkyPpuMm595hmAxNW3rZFn.jpg', external_id = '4011', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A newly dead New England couple seeks help from a deranged demon exorcist to scare an affluent New York family out of their home."'::jsonb) WHERE title = 'Beetlejuice' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/oN0o3owobFjePDc5vMdLRAd0jkd.jpg', external_id = '1064213', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A young sex worker from Brooklyn gets her chance at a Cinderella story when she meets and impulsively marries the son of an oligarch. Once the news reaches Russia, her fairytale is threatened as his parents set out to get the marriage annulled."'::jsonb) WHERE title = 'Anora' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/wJIGiUaknsC6tLL2Om0dATZu90Z.jpg', external_id = '70821', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A woman tries to help her teenage daughter when she becomes the victim of online bullying."'::jsonb) WHERE title = 'Cyberbully' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/7QPeVsr9rcFU9Gl90yg0gTOTpVv.jpg', external_id = '508', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Eight very different couples deal with their love lives in various loosely interrelated tales all set during a frantic month before Christmas in London."'::jsonb) WHERE title = 'Love, Actually' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/6q1hlBC6rudc3mHwXsbMBR2xAT6.jpg', external_id = '11838', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When a social worker is sent to check on a traumatized elderly woman whose family have moved in at the site of a notorious murder case, she unwittingly unleashes a cycle of terror that transmits via its victims."'::jsonb) WHERE title = 'Ju-on: The Grudge' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/eG9lz41mJqsI4J6ubMtVqD26q2J.jpg', external_id = '1184918', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island''s animals and cares for an orphaned baby goose."'::jsonb) WHERE title = 'The Wild Robot' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/gzMFMmpJHOmOFKsAhSDac62Dyg2.jpg', external_id = '827931', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A teen in 2024 accidentally time-travels to 2003, days before a masked killer murders her sister. Can she change the past without destroying the future?"'::jsonb) WHERE title = 'Time Cut' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/ju10W5gl3PPK3b7TjEmVOZap51I.jpg', external_id = '1034541', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Five years after surviving Art the Clown''s Halloween massacre, Sienna and Jonathan are still struggling to rebuild their shattered lives. As the holiday season approaches, they try to embrace the Christmas spirit and leave the horrors of the past behind. But just when they think they''re safe, Art returns, determined to turn their holiday cheer into a new nightmare. The festive season quickly unravels as Art unleashes his twisted brand of terror, proving that no holiday is safe."'::jsonb) WHERE title = 'Terrifier 3' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/12EeSboRofP3CI4SPmMFNNXCbtY.jpg', external_id = '790', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Strange things begin to occur as a tiny California coastal town prepares to commemorate its centenary. Inanimate objects spring eerily to life; Rev. Malone stumbles upon a dark secret about the town''s founding; radio announcer Stevie witnesses a mystical fire; and hitchhiker Elizabeth discovers the mutilated corpse of a fisherman. Then a mysterious iridescent fog descends upon the village, and more people start to die."'::jsonb) WHERE title = 'The Fog' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/myMnHnG6kxYaQYknnW76VCHBpYT.jpg', external_id = '25623', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Hoping to find a sense of connection to her late mother, Gorgeous takes a trip with her friends to visit her aunt''s ancestral house in the countryside. The girls soon discover that there is more to the old house than meets the eye."'::jsonb) WHERE title = 'House' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/iSq6J55RFLfwcceDKxYtMjOr1sz.jpg', external_id = '12205', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A woman in the midst of an unpleasant divorce moves to an eerie apartment building with her young daughter. The ceiling of their apartment has a dark and active leak."'::jsonb) WHERE title = 'Dark Water' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/nc9ZqrJFbcUdlMg9lxXXtJb24jU.jpg', external_id = '835113', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"An aspiring actress crosses paths with a prolific serial killer in ''70s LA when they''re cast on an episode of \"The Dating Game.\""'::jsonb) WHERE title = 'Woman of the Hour' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/4bGP5cnSZbfBJfIidZNSEIKnav7.jpg', external_id = '869291', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After reluctantly moving to the German Alps with her father and his new family, Gretchen discovers that their new town hides sinister secrets, as she''s plagued by strange noises and frightening visions of a woman pursuing her."'::jsonb) WHERE title = 'Cuckoo' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/mpgkRPH1GNkMCgdPk2OMyHzAks7.jpg', external_id = '30497', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Five friends head out to rural Texas to visit the grave of a grandfather. On the way, they stumble across what appears to be a deserted house, only to discover something sinister within. Something armed with a chainsaw."'::jsonb) WHERE title = 'The Texas Chainsaw Massacre' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/8Sok3HNA3r1GHnK2lCytHyBz1A.jpg', external_id = '592831', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In a futuristic New York known as New Rome, visionary architect Cesar Catilina dreams of building \"Megalopolis,\" a utopian city that redefines society’s limits. Opposing him is the corrupt Mayor Franklyn Cicero, who clings to power and profit. Between them stands Julia, the mayor’s daughter, whose love for Cesar forces her to choose between loyalty, ambition, and the fate of humanity."'::jsonb) WHERE title = 'Megalopolis' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/1zo6pQt1Oelc5JpapfwFy2Nj3IS.jpg', external_id = '380620', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After having narrowly escaped an attempt on his life at the hands of a psychopath, detective inspector Takakura quits active service in the police force and takes up a position as a university lecturer in criminal psychology. But his desire to get to the bottom of criminals’ motives remains, and he does not hesitate long when former colleague Nogami asks him to reopen an old case."'::jsonb) WHERE title = 'Creepy' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/AjV6jFJ2YFIluYo4GQf13AA1tqu.jpg', external_id = '1079091', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When a woman''s first love suddenly reenters her life, her relationship with a charming, but abusive neurosurgeon is upended, and she realizes she must learn to rely on her own strength to make an impossible choice for her future."'::jsonb) WHERE title = 'It Ends with Us' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/qdlcJnXY63t17xKFfROfafTbXsD.jpg', external_id = '1115379', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Dedicated police detective Ma Zhe is tasked with solving a series of brutal murders in a rural Chinese town. As pressure mounts from his superiors, a hasty arrest is made, but while his colleagues celebrate, several clues push Ma Zhe deeper into a desperate investigation of his own."'::jsonb) WHERE title = 'Only the River Flows' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/lqoMzCcZYEFK729d6qzt349fB4o.jpg', external_id = '933260', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A fading celebrity decides to use a black market drug, a cell-replicating substance that temporarily creates a younger, better version of herself."'::jsonb) WHERE title = 'The Substance' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/jaUu9zHtbcFwrB5Y1DNYE09HMex.jpg', external_id = '748167', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In a futuristic dystopia with enforced beauty standards, a teen awaiting mandatory cosmetic surgery embarks on a journey to find her missing friend."'::jsonb) WHERE title = 'Uglies' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/oumprkO9bThExP8NwxBIBnvBu2v.jpg', external_id = '842924', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In this extraordinary story of an ordinary man, Charles ''Chuck'' Krantz experiences the wonder of love, the heartbreak of loss, and the multitudes contained in all of us."'::jsonb) WHERE title = 'The Life of Chuck' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/yE1c9hj5Hf8a9KplAdRdhADqUro.jpg', external_id = '429200', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After a botched bank robbery lands his younger brother in prison, Connie Nikas embarks on a twisted odyssey through New York City''s underworld to get his brother Nick out of jail."'::jsonb) WHERE title = 'Good Time' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/uLUFI5sJIfWrBUWB2Y1dEuyvvVy.jpg', external_id = '483', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Young lovers Sailor and Lula hit the road to start a new life together away from the wrath of Lula’s deranged, disapproving mother, who has hired a team of hitmen to cut the lovers’ surreal honeymoon short."'::jsonb) WHERE title = 'Wild at Heart' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/26e2wtV2x40jiWyGG8lUSaBEmfU.jpg', external_id = '1148901', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"An amateur boxer gets his shot at a professional career."'::jsonb) WHERE title = 'Challenger' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/zyopv7D5j7cfswG0NYiA14qAdPC.jpg', external_id = '1041613', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"An American nun embarks on a new journey when she joins a remote convent in the Italian countryside. However, her warm welcome quickly turns into a living nightmare when she discovers her new home harbours a sinister secret and unspeakable horrors."'::jsonb) WHERE title = 'Immaculate' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/2uSWRTtCG336nuBiG8jOTEUKSy8.jpg', external_id = '945961', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"While scavenging the deep ends of a derelict space station, a group of young space colonizers come face to face with the most terrifying life form in the universe."'::jsonb) WHERE title = 'Alien: Romulus' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/mjEk5Wwx6TYVqw29zSaUHclMIgp.jpg', external_id = '976893', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Hirayama is content with his life as a toilet cleaner in Tokyo. Outside of his structured routine, he cherishes music on cassette tapes, books, and taking photos of trees. Through unexpected encounters, he reflects on finding beauty in the world."'::jsonb) WHERE title = 'Perfect Days' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/wOPiNYt9V3Cbr9Izeddwj7nU8RT.jpg', external_id = '13685', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Upon his release from a mental hospital following a nervous breakdown, the directionless Anthony joins his friend Dignan, who seems far less sane than the former. Dignan has hatched a harebrained scheme for an as-yet-unspecified crime spree that somehow involves his former boss, the (supposedly) legendary Mr. Henry."'::jsonb) WHERE title = 'Bottle Rocket' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/r1x5JGpyqZU8PYhbs4UcrO1Xb6x.jpg', external_id = '679', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Ripley, the sole survivor of the Nostromo''s deadly encounter with the monstrous Alien, returns to Earth after drifting through space in hypersleep for 57 years. Although her story is initially met with skepticism, she agrees to accompany a team of Colonial Marines back to LV-426."'::jsonb) WHERE title = 'Aliens' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/ox6Myr2r36zr7aqnisQGZp2EW33.jpg', external_id = '11855', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A Baltimore teenager who picks up a second-hand camera starts snapping his way to stardom, soon turning into a nationwide sensation, with a fateful choice between his life and his art."'::jsonb) WHERE title = 'Pecker' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/vfrQk5IPloGg1v9Rzbh2Eg3VGyM.jpg', external_id = '348', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"During its return to the earth, commercial spaceship Nostromo intercepts a distress signal from a distant planet. When a three-member team of the crew discovers a chamber containing thousands of eggs on the planet, a creature inside one of the eggs attacks an explorer. The entire crew is unaware of the impending nightmare set to descend upon them when the alien parasite planted inside its unfortunate host is birthed."'::jsonb) WHERE title = 'Alien' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/hVEqUASJmCQaolkKFEySCHZ8uKG.jpg', external_id = '814', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"American tourists David and Jack are savagely attacked by an unidentified animal while hiking on the Yorkshire Moors. After retiring to the home of a beautiful nurse to recuperate, David soon begins experiencing disturbing changes to his body and mind."'::jsonb) WHERE title = 'An American Werewolf in London' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/5ySa1aQaT7kMcAbKwlS1HXxp2hM.jpg', external_id = '14626', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Foreign Legion officer Galoup recalls his once glorious life, training troops in the Gulf of Djibouti. His existence there was happy, strict and regimented, until the arrival of a promising young recruit, Sentain, plants the seeds of jealousy in Galoup''s mind."'::jsonb) WHERE title = 'Beau Travail' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/ArvoFK6nlouZRxYmtIOUzKIrg90.jpg', external_id = '1023922', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In 1980s Hollywood, adult film star and aspiring actress Maxine Minx finally gets her big break. But as a mysterious killer stalks the starlets of Hollywood, a trail of blood threatens to reveal her sinister past."'::jsonb) WHERE title = 'MaXXXine' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/sP27Qm4THyRZyHjHYMfIDtJP6YE.jpg', external_id = '655', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A man wanders out of the desert not knowing who he is. His brother finds him, and helps to pull his memory back of the life he led before he walked out on his family and disappeared four years earlier."'::jsonb) WHERE title = 'Paris, Texas' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/eg3d6hvTaOmW3lNErFfutBmWmAR.jpg', external_id = '3600', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Ever since killing the Fisherman one year ago, Julie James is still haunted by images of him after her. When her best friend Karla wins free tickets to the Bahamas, Julie finds this a perfect opportunity to finally relax. But someone is waiting for her. Someone who she thought was dead. Someone who is out again for revenge."'::jsonb) WHERE title = 'I Still Know What You Did Last Summer' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/dQyaJx0SptDqvQcAewAr8FAtLB2.jpg', external_id = '3597', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After an accident on a winding road, four teens make the fatal mistake of dumping their victim''s body into the sea. Exactly one year later, the deadly secret resurfaces as they''re stalked by a hook-handed figure."'::jsonb) WHERE title = 'I Know What You Did Last Summer' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/7Q3efxd3AF1vQjlSxnlerSA7RzN.jpg', external_id = '813', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"An ex-fighter pilot forced to take over the controls of an airliner when the flight crew succumbs to food poisoning."'::jsonb) WHERE title = 'Airplane!' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/ozohDiJd7Oi65NEf8B0ya7lR9Fr.jpg', external_id = '9871', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The story of two outcast sisters, Ginger and Brigitte, in the mindless suburban town of Bailey Downs. On the night of Ginger''s first period, she is savagely attacked by a wild creature. Ginger''s wounds miraculously heal but something is not quite right. Now Brigitte must save her sister and save herself."'::jsonb) WHERE title = 'Ginger Snaps' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/rt7cpEr1uP6RTZykBFhBTcRaKvG.jpg', external_id = '275', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Jerry, a small-town Minnesota car salesman is bursting at the seams with debt... but he''s got a plan. He''s going to hire two thugs to kidnap his wife in a scheme to collect a hefty ransom from his wealthy father-in-law. It''s going to be a snap and nobody''s going to get hurt... until people start dying. Enter Police Chief Marge, a coffee-drinking, parka-wearing - and extremely pregnant - investigator who''ll stop at nothing to get her man. And if you think her small-time investigative skills will give the crooks a run for their ransom... you betcha!"'::jsonb) WHERE title = 'Fargo' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/1EwNyiiNFd863H4e8nWEzutnZD7.jpg', external_id = '1226578', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"FBI Agent Lee Harker is a gifted new recruit assigned to the unsolved case of an elusive serial killer. As the case takes complex turns, unearthing evidence of the occult, Harker discovers a personal connection to the merciless killer and must race against time to stop him before he claims the lives of another innocent family."'::jsonb) WHERE title = 'Longlegs' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/eE5bbuRJluooG2MjEAsLEYyuJoa.jpg', external_id = '8740', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Rex and Saskia, a young couple in love, are on vacation when they stop at a busy service station. Saskia is abducted in broad daylight and three years pass with no answers or closure surrounding her disappearance. Rex has nearly given up all hope when he suddenly begins receiving letters from her abductor."'::jsonb) WHERE title = 'The Vanishing' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/o942912KFh89SGhqWuKXuT0SXzN.jpg', external_id = '994143', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Two children wake up in the middle of the night to find their father is missing, and all the windows and doors in their home have vanished."'::jsonb) WHERE title = 'Skinamarink' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/tjbLSFwi0I3phZwh8zoHWNfbsEp.jpg', external_id = '578', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When the seaside community of Amity finds itself under attack by a dangerous great white shark, the town''s chief of police, a young marine biologist, and a grizzled shark hunter embark on a desperate quest to kill the beast before it strikes again."'::jsonb) WHERE title = 'Jaws' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/c1TZKfzvATep5x5DthqWjjWtU2l.jpg', external_id = '1811', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In Los Angeles, a colorful assortment of bohemians try to make sense of their intersecting lives. The moody Dark Smith, his bisexual girlfriend, her lesbian lover and their shy gay friend plan on attending the wildest party of the year. But they''ll only make it if they can survive the drug trips, suicides, trysts, mutilations and alien abductions that occur as one surreal day unfolds."'::jsonb) WHERE title = 'Nowhere' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/z5uIG81pXyHKg7cUFIu84Wjn4NS.jpg', external_id = '949423', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Trapped on her family’s isolated farm, Pearl must tend to her ailing father under the bitter and overbearing watch of her devout mother. Lusting for a glamorous life like she’s seen in the movies, Pearl’s ambitions, temptations, and repressions collide."'::jsonb) WHERE title = 'Pearl' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/lopZSVtXzhFY603E9OqF7O1YKsh.jpg', external_id = '760104', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In 1979, a group of young filmmakers set out to make an adult film in rural Texas, but when their reclusive, elderly hosts catch them in the act, the cast find themselves fighting for their lives."'::jsonb) WHERE title = 'X' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/6dasJ58GGFcC62H9KuukAryltUp.jpg', external_id = '838209', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After tracing the origin of a disturbing supernatural affliction to a wealthy family''s ancestral gravesite, a team of paranormal experts relocates the remains—and soon discovers what happens to those who dare to mess with the wrong grave."'::jsonb) WHERE title = 'Exhuma' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/dGEwlAuzTZoZjvsqgT2MRKHnGi8.jpg', external_id = '20770', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Megan is an all-American girl. A cheerleader. She has a boyfriend. But Megan doesn''t like kissing her boyfriend very much. And she''s pretty touchy with her cheerleader friends. Her conservative parents worry that she must be a lesbian and send her off to \"sexual redirection\" school, where she must, with other lesbians and gays learn how to be straight."'::jsonb) WHERE title = 'But I''m a Cheerleader' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/50lPmjIpDs8gKfgK7fPIeKzpllh.jpg', external_id = '1029955', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A triptych fable following a man without choice who tries to take control of his own life; a policeman who is alarmed that his wife who was missing-at-sea has returned and seems a different person; and a woman determined to find a specific someone with a special ability, who is destined to become a prodigious spiritual leader."'::jsonb) WHERE title = 'Kinds of Kindness' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/eamOBurHBu0MIxohTIVcfxmZ6Z7.jpg', external_id = '10843', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Desperate to escape his mind-numbing routine, uptown Manhattan office worker Paul Hackett ventures downtown for a hookup with a mystery woman."'::jsonb) WHERE title = 'After Hours' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/mu8LRWT9GHkfiyHm7kgxT6YNvMW.jpg', external_id = '938614', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A live broadcast of a late-night talk show in 1977 goes horribly wrong, unleashing evil into the nation''s living rooms."'::jsonb) WHERE title = 'Late Night with the Devil' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/hS4GYkYpN1rfl4GIxyc02sCyfAj.jpg', external_id = '858017', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Teenager Owen is just trying to make it through life in the suburbs when his classmate Maddy introduces him to a mysterious TV show — a vision of a supernatural world beneath their own. In the pale glow of the television, Owen’s view of reality begins to crack."'::jsonb) WHERE title = 'I Saw the TV Glow' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/fXm3YKXAEjx7d2tIWDg9TfRZtsU.jpg', external_id = '10625', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Cady Heron is a hit with The Plastics, the A-list girl clique at her new school, until she makes the mistake of falling for Aaron Samuels, the ex-boyfriend of alpha Plastic Regina George."'::jsonb) WHERE title = 'Mean Girls' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/jAW7ZdIm4HLKB3g15uMOWYNdU8r.jpg', external_id = '993784', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In 1989, a misunderstood teenager has a high school crush — who just happens to be a handsome corpse! After a set of playfully horrific circumstances bring him back to life, the two embark on a murderous journey to find love, happiness…and a few missing body parts along the way."'::jsonb) WHERE title = 'Lisa Frankenstein' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/zI8KZ4EdLUymWKX1YEkpZ0gtPUa.jpg', external_id = '705996', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"From a mountain peak in South Korea, a man plummets to his death. Did he jump, or was he pushed? When detective Hae-joon arrives on the scene, he begins to suspect the dead man’s wife Seo-rae. But as he digs deeper into the investigation, he finds himself trapped in a web of deception and desire."'::jsonb) WHERE title = 'Decision to Leave' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/k3waqVXSnvCZWfJYNtdamTgTtTA.jpg', external_id = '666277', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After decades apart, childhood friends Nora and Hae Sung are reunited in New York for one fateful weekend as they confront notions of destiny, love, and the choices that make a life."'::jsonb) WHERE title = 'Past Lives' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/aLGKAQKgzWpJ6egyWzzC11jXBRJ.jpg', external_id = '3176', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In the future, the Japanese government captures a class of ninth-grade students and forces them to kill each other under the revolutionary \"Battle Royale\" act."'::jsonb) WHERE title = 'Battle Royal' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/2E2WTX0TJEflAged6kzErwqX1kt.jpg', external_id = '940721', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In postwar Japan, Godzilla brings new devastation to an already scorched landscape. With no military intervention or government help in sight, the survivors must join together in the face of despair and fight back against an unrelenting horror."'::jsonb) WHERE title = 'Godzilla Minus One' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/Y5P4Q3q8nrruZ9aD3wXeJS2Plg.jpg', external_id = '843527', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"40-year-old single mom Solène begins an unexpected romance with 24-year-old Hayes Campbell, the lead singer of August Moon, the hottest boy band on the planet. As they begin a whirlwind romance, it isn''t long before Hayes'' superstar status poses unavoidable challenges to their relationship, and Solène soon discovers that life in the glare of his spotlight might be more than she bargained for."'::jsonb) WHERE title = 'The Idea of You' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/5qHoazZiaLe7oFBok7XlUhg96f2.jpg', external_id = '1072790', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After an amazing first date, Bea and Ben’s fiery attraction turns ice cold — until they find themselves unexpectedly reunited at a destination wedding in Australia. So they do what any two mature adults would do: pretend to be a couple."'::jsonb) WHERE title = 'Anyone But You' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/xImj8RLe39YK0lyVu9kXv7ApN8p.jpg', external_id = '948549', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Reclusive gym manager Lou falls hard for Jackie, an ambitious bodybuilder headed through town to Las Vegas in pursuit of her dream. But their love ignites violence, pulling them deep into the web of Lou’s criminal family."'::jsonb) WHERE title = 'Love Lies Bleeding' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/rULWuutDcN5NvtiZi4FRPzRYWSh.jpg', external_id = '634492', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Forced to confront revelations about her past, paramedic Cassandra Webb forges a relationship with three young women destined for powerful futures...if they can all survive a deadly present."'::jsonb) WHERE title = 'Madame Web' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/tDKlFXWCvIkP2Xl2nMdI49kzwZx.jpg', external_id = '574451', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Aza confronts her potential for love, happiness, friendship, and hope while navigating an endless barrage of invasive, obsessive thoughts."'::jsonb) WHERE title = 'Turtles All the Way Down' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/a2lxHS6Au35k5XtFQEQW44yWHeH.jpg', external_id = '758866', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Yusuke Kafuku, a stage actor and director, still unable, after two years, to cope with the loss of his beloved wife, accepts to direct Uncle Vanya at a theater festival in Hiroshima. There he meets Misaki, an introverted young woman, appointed to drive his car. In between rides, secrets from the past and heartfelt confessions will be unveiled."'::jsonb) WHERE title = 'Drive My Car' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg', external_id = '693134', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Follow the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a path of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, Paul endeavors to prevent a terrible future only he can foresee."'::jsonb) WHERE title = 'Dune: Part 2' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/1NxGNQchGBTHXJ6RShLY1IlZqWn.jpg', external_id = '660120', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The chronicles of four years in the life of Julie, a young woman who navigates the troubled waters of her love life and struggles to find her career path, leading her to take a realistic look at who she really is."'::jsonb) WHERE title = 'Worst Person in the World' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/kCGlIMHnOm8JPXq3rXM6c5wMxcT.jpg', external_id = '792307', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Brought back to life by an unorthodox scientist, a young woman runs off with a lawyer on a whirlwind adventure across the continents. Free from the prejudices of her times, she grows steadfast in her purpose to stand for equality and liberation."'::jsonb) WHERE title = 'Poor Things' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/5UwdhrjXhUgsiDhe1dpS9z4yj7q.jpg', external_id = '4960', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A theater director struggles with his work, and the women in his life, as he attempts to create a life-size replica of New York inside a warehouse as part of his new play."'::jsonb) WHERE title = 'Synecdoche, New York' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/yyM9BPdwttK5LKZSLvHae7QPKo1.jpg', external_id = '11220', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"An assassin goes through obstacles as he attempts to escape his violent lifestyle despite the opposition of his partner, who is secretly attracted to him."'::jsonb) WHERE title = 'Fallen Angels' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/ua17wrOrUjyqxuYmnUrmOVBMf4G.jpg', external_id = '12516', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Eight visually rich vignettes drawn from Kurosawa’s own dreams—fox weddings and vanished orchards, a soldier’s ghosts, a walk through Van Gogh’s canvases, nuclear nightmares, and a water-mill utopia—meditate on childhood, art, mortality, and humanity’s uneasy bond with nature."'::jsonb) WHERE title = 'Dreams' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/k2qTooPlHffgNABNWxeJdGMglPK.jpg', external_id = '18239', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Forks, Washington resident Bella Swan is reeling from the departure of her vampire love, Edward Cullen, and finds comfort in her friendship with Jacob Black, a werewolf. But before she knows it, she''s thrust into a centuries-old conflict, and her desire to be with Edward at any cost leads her to take greater and greater risks."'::jsonb) WHERE title = 'Twilight Saga: New Moon' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/57MFWGHarg9jid7yfDTka4RmcMU.jpg', external_id = '1056360', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A novelist fed up with the establishment profiting from \"Black\" entertainment uses a pen name to write a book that propels him into the heart of hypocrisy and the madness he claims to disdain."'::jsonb) WHERE title = 'American Fiction' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/9ayYOpeqHhxfHHUoyt3kXzznECO.jpg', external_id = '986280', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In modern-day Helsinki, two lonely souls in search of love meet by chance in a karaoke bar. However, their path to happiness is beset by obstacles – from lost phone numbers to mistaken addresses, alcoholism, and a charming stray dog."'::jsonb) WHERE title = 'Fallen Leaves' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/2e853FDVSIso600RqAMunPxiZjq.jpg', external_id = '906126', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"On October 13, 1972, Uruguayan Air Force Flight 571, chartered to take a rugby team to Chile, crashes into a glacier in the heart of the Andes."'::jsonb) WHERE title = 'Society of the Snow' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/vtaufTzJBMJAeziQA1eP4BLU24C.jpg', external_id = '13187', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When Charlie Brown complains about the overwhelming materialism that he sees amongst everyone during the Christmas season, Lucy suggests that he become director of the school Christmas pageant. Charlie Brown accepts, but it is a frustrating struggle. When an attempt to restore the proper spirit with a forlorn little fir Christmas tree fails, he needs Linus'' help to learn the meaning of Christmas."'::jsonb) WHERE title = 'A Charlie Brown Christmas' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg', external_id = '346698', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans."'::jsonb) WHERE title = 'Barbie' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/e9u7luSxFKOZgPTB9XHFnPArGdP.jpg', external_id = '792293', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Vlogger Keith Gill sinks his life savings into GameStop stock and posts about it. When social media starts blowing up, so do his life and the lives of everyone following him. As a stock tip becomes a movement, everyone gets rich—until the billionaires fight back, and both sides find their worlds turned upside down."'::jsonb) WHERE title = 'Dumb Money' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/zhV7B610l7hjlri4ywikJ18ONuq.jpg', external_id = '839369', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Twenty years after their notorious tabloid romance gripped the nation, a married couple buckles under the pressure when an actress arrives to do research for a film about their past."'::jsonb) WHERE title = 'May December' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/43I9DcNoCzpyzK8JCkJYpHqHqGG.jpg', external_id = '11104', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Two melancholic Hong Kong policemen fall in love: one with a mysterious underworld figure, the other with a beautiful and ethereal server at a late-night restaurant."'::jsonb) WHERE title = 'Chungking Express' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/evKz85EKouVbIr51zy5fOtpNRPg.jpg', external_id = '965150', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Sophie reflects on the shared joy and private melancholy of a holiday she took with her father twenty years earlier. Memories fill the gaps between camcorder footages as she tries to reconcile the father she knew with the troubled man she didn''t."'::jsonb) WHERE title = 'Aftersun' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/e4DGlsc9g0h5AyoyvvAuIRnofN7.jpg', external_id = '399057', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Dr. Steven Murphy is a renowned cardiovascular surgeon who presides over a spotless household with his wife and two children. Lurking at the margins of his idyllic suburban existence is Martin, a fatherless teen who insinuates himself into the doctor''s life in gradually unsettling ways."'::jsonb) WHERE title = 'The Killing of a Sacred Deer' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/4GKye5dR4uJyYbcyTveSue1gATD.jpg', external_id = '508883', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"While the Second World War rages, the teenage Mahito, haunted by his mother''s tragic death, is relocated from Tokyo to the serene rural home of his new stepmother Natsuko, a woman who bears a striking resemblance to the boy''s mother. As he tries to adjust, this strange new world grows even stranger following the appearance of a persistent gray heron, who perplexes and bedevils Mahito, dubbing him the \"long-awaited one.\""'::jsonb) WHERE title = 'The Boy and the Heron' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/VHSzNBTwxV8vh7wylo7O9CLdac.jpg', external_id = '840430', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A curmudgeonly instructor at a New England prep school is forced to remain on campus during Christmas break to babysit the handful of students with nowhere to go. Eventually, he forms an unlikely bond with one of them — a damaged, brainy troublemaker — and with the school’s head cook, who has just lost a son in Vietnam."'::jsonb) WHERE title = 'The Holdovers' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/2RSMu2iMDCdMKmvBWWvcmE8vjMj.jpg', external_id = '823482', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Hapless family man Paul Matthews finds his life turned upside down when millions of strangers suddenly start seeing him in their dreams. But when his nighttime appearances take a nightmarish turn, Paul is forced to navigate his newfound stardom."'::jsonb) WHERE title = 'Dream Scenario' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/mZ4gBdfkhP9tvLH1DO4m4HYtiyi.jpg', external_id = '398818', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In the summer of 1983, a 17-year-old Elio spends his days in his family''s villa in Italy. One day Oliver, a graduate student, arrives to assist Elio''s father, a professor of Greco-Roman culture. Soon, Elio and Oliver discover a summer that will alter their lives forever."'::jsonb) WHERE title = 'Call Me By Your Name' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/6mPNdmjdbVKPITv3LLCmQoKs9Zw.jpg', external_id = '615643', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A Korean American family moves to an Arkansas farm in search of its own American dream. Amidst the challenges of this new life in the strange and rugged Ozarks, they discover the undeniable resilience of family and what really makes a home."'::jsonb) WHERE title = 'Minari' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/kQs6keheMwCxJxrzV83VUwFtHkB.jpg', external_id = '915935', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A woman is suspected of her husband''s murder, and their blind son faces a moral dilemma as the sole witness."'::jsonb) WHERE title = 'Anatomy of a Fall' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/pWDtjs568ZfOTMbURQBYuT4Qxka.jpg', external_id = '670', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"With no clue how he came to be imprisoned, drugged and tortured for 15 years, a desperate man seeks revenge on his captors."'::jsonb) WHERE title = 'Oldboy' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/u3G2gF7M9dmH4Vcs54PUjieOi0C.jpg', external_id = '284303', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In the heat of the summer lays a lonesome house in the countryside where nine year old twin brothers await their mother’s return.  When she comes home, bandaged after cosmetic surgery, nothing is like before and the children start to doubt whether this woman is actually who she says she is."'::jsonb) WHERE title = 'Goodnight Mommy' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/bSe8CBqK8HkbP6sqZWzcJfQV9Ci.jpg', external_id = '231001', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"While watching two children on Halloween night, a babysitter finds an old VHS tape in the kids'' trick or treat bag. The tape features three tales of terror, all linked together by a murderous clown."'::jsonb) WHERE title = 'All Hallows'' Eve' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/m5OItLBY5T38ew1YI4VSIXjl5G2.jpg', external_id = '988402', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Sasha is a young vampire with a serious problem: she''s too sensitive to kill. When her exasperated parents cut off her blood supply, Sasha''s life is in jeopardy. Luckily, she meets Paul, a lonely teenager with suicidal tendencies who is willing to give his life to save hers. But their friendly agreement soon becomes a nocturnal quest to fulfill Paul''s last wishes before day breaks."'::jsonb) WHERE title = 'Humanist Vampire Seeking Consenting Suicidal Person' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/x6kedRqcj8jH0cik9p1jzkDwZvM.jpg', external_id = '664341', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"During a bitter 1964 Massachusetts winter, young secretary Eileen becomes enchanted by Rebecca, the glamorous new counselor at the prison where she works. Their budding friendship takes a twisted turn when Rebecca reveals a dark secret — throwing Eileen onto a sinister path."'::jsonb) WHERE title = 'Eileen' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/neZ0ykEsPqxamsX6o5QNUFILQrz.jpg', external_id = '149', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A secret military project endangers Neo-Tokyo when it turns a biker gang member into a rampaging psychic psychopath that only two teenagers and a group of psychics can stop."'::jsonb) WHERE title = 'Akira' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/dLlH4aNHdnmf62umnInL8xPlPzw.jpg', external_id = '290098', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"1930s Korea, in the period of Japanese occupation, a new girl, Sookee, is hired as a handmaiden to a Japanese heiress, Hideko, who lives a secluded life on a large countryside estate with her domineering Uncle Kouzuki. But the maid has a secret. She is a pickpocket recruited by a swindler posing as a Japanese Count to help him seduce the Lady to steal her fortune."'::jsonb) WHERE title = 'The Handmaiden' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/jeyTQrNEpyE1LZIgVlswYh3sc34.jpg', external_id = '814776', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Unpopular best friends PJ and Josie start a high school self-defense club to meet girls and lose their virginity. They soon find themselves in over their heads when the most popular students start beating each other up in the name of self-defense."'::jsonb) WHERE title = 'Bottoms' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/qEAlwXbYk6IHA4ztoS2XFFaa7Xo.jpg', external_id = '663712', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A year after the Miles County massacre, Art the Clown is resurrected by a sinister entity. Art returns home, where he must hunt down and destroy teenage Sienna and her younger brother Jonathan on Halloween. As the body count rises, the siblings fight to stay alive while uncovering the true nature of Art''s evil intent."'::jsonb) WHERE title = 'Terrifier 2' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/ePWKQzOnwabMcJsWYWIiy5p1Ofr.jpg', external_id = '1016084', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Two mismatched entrepreneurs – egghead innovator Mike Lazaridis and cut-throat businessman Jim Balsillie – joined forces in an endeavour that was to become a worldwide hit in little more than a decade. The story of the meteoric rise and catastrophic demise of the world''s first smartphone."'::jsonb) WHERE title = 'Blackberry' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/cxCmv23O7p3hyHwqoktHYkZcGsY.jpg', external_id = '563', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Set in the future, the story follows a young soldier named Johnny Rico and his exploits in the Mobile Infantry. Rico''s military career progresses from recruit to non-commissioned officer and finally to officer against the backdrop of an interstellar war between mankind and an arachnoid species known as \"the Bugs.\""'::jsonb) WHERE title = 'Starship Trooper' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/dGv2BWjzwAz6LB8a8JeRIZL8hSz.jpg', external_id = '619778', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Madison is paralyzed by shocking visions of grisly murders, and her torment worsens as she discovers that these waking dreams are in fact terrifying realities with a mysterious tie to her past."'::jsonb) WHERE title = 'Malignant' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/vMfB7xwIM6993PWxosNYBKS0vBD.jpg', external_id = '1160039', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After a chance meeting, a man and a woman stroll through Seoul’s changing streets."'::jsonb) WHERE title = 'Mimang' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/25JskXmchcYwj3jHRmcPm738MpB.jpg', external_id = '882059', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When his family is murdered, a deaf-mute named Boy escapes to the jungle and is trained by a mysterious shaman to repress his childish imagination and become an instrument of death."'::jsonb) WHERE title = 'Boy Kills World' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/q9rRLc9pRDR8H6YoJTmXrBmivxD.jpg', external_id = '999243', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When 24-year-old Jason Hochberg arrives for counsellor weekend at his beloved Camp Pineway, his biggest problem is feeling out of touch with his teenage co-workers. Little does he know; a masked killer has murdered camp owners John and Kathy and is preparing to strike again."'::jsonb) WHERE title = 'Hell of a Summer' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/zGTfMwG112BC66mpaveVxoWPOaB.jpg', external_id = '930564', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Struggling to find his place at Oxford University, student Oliver Quick finds himself drawn into the world of the charming and aristocratic Felix Catton, who invites him to Saltburn, his eccentric family''s sprawling estate, for a summer never to be forgotten."'::jsonb) WHERE title = 'Saltburn' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/peTl1V04E9ppvhgvNmSX0r2ALqO.jpg', external_id = '424781', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In an alternate present-day version of Oakland, black telemarketer Cassius Green discovers a magical key to professional success – which propels him into a macabre universe."'::jsonb) WHERE title = 'Sorry to Bother You' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/euZyZb6iGreujYKrGyZHRddhUYh.jpg', external_id = '10315', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The Fantastic Mr. Fox, bored with his current life, plans a heist against the three local farmers. The farmers, tired of sharing their chickens with the sly fox, seek revenge against him and his family."'::jsonb) WHERE title = 'Fantastic Mr. Fox' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/4yFG6cSPaCaPhyJ1vtGOtMD1lgh.jpg', external_id = '674324', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Two lifelong friends find themselves at an impasse when one abruptly ends their relationship, with alarming consequences for both of them."'::jsonb) WHERE title = 'Banshees of Inisherin' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/mxsGXqetGnirf99qapYd5MMY1VL.jpg', external_id = '1923', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In the questionable town of Deer Meadow, Washington, FBI Agent Desmond inexplicably disappears while hunting for the man who murdered a teen girl. The killer is never apprehended, and, after experiencing dark visions and supernatural encounters, Agent Dale Cooper chillingly predicts that the culprit will claim another life. Meanwhile, in the more cozy town of Twin Peaks, hedonistic beauty Laura Palmer hangs with lowlifes and seems destined for a grisly fate."'::jsonb) WHERE title = 'Twin Peaks: Fire Walk With Me' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/nNxK3pC3DMpPpWKMvo2p3liREVT.jpg', external_id = '86829', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In Greenwich Village in the early 1960s, gifted but volatile folk musician Llewyn Davis struggles with money, relationships, and his uncertain future."'::jsonb) WHERE title = 'Inside Llewyn Davis' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/xVSvIwRNzwXSs0CLefiiG6A96m4.jpg', external_id = '492', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"One day at work, unsuccessful puppeteer Craig finds a portal into the head of actor John Malkovich. The portal soon becomes a passion for anybody who enters its mad and controlling world of overtaking another human body."'::jsonb) WHERE title = 'Being John Malkovich' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/wS5pdSFLjzFzBCwa8kTE368jb4U.jpg', external_id = '988397', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Winter. Somewhere between Tehran and Winnipeg. Negin and Nazgol find a sum of money frozen deep within the sidewalk ice and try to find a way to get it out. Massoud leads a group of befuddled tourists upon an increasingly-strange walking tour of Winnipeg historic sites. Matthew leaves his job at the Québec government and embarks upon a mysterious journey to visit his estranged mother."'::jsonb) WHERE title = 'Universal Language' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/xJnOMMsFASxNiFnG7v3TNIQ3ife.jpg', external_id = '991494', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Desperate to be a big guy, SpongeBob sets out to prove his bravery to Mr. Krabs by following The Flying Dutchman – a mysterious swashbuckling ghost pirate – on a seafaring adventure that takes him to the deepest depths of the deep sea, where no Sponge has gone before."'::jsonb) WHERE title = 'The Spongebob Squarepants Movie: Search for SquarePants' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/oMqr4CGGqVlfI8DdrSelK1e9aFM.jpg', external_id = '11782', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A cop who loses his partner in a shoot-out with gun smugglers goes on a mission to catch them. In order to get closer to the leaders of the ring he joins forces with an undercover cop who''s working as a gangster hitman. They use all means of excessive force to find them."'::jsonb) WHERE title = 'Hard Boiled' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/lu2vmmtStmTNMmSZl2LgrrQpLZo.jpg', external_id = '1028196', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Chronicles the powerful friendship between two young Black teenagers navigating the harrowing trials of reform school together in Florida."'::jsonb) WHERE title = 'Nickel Boys' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/3jCLmYDIIiSMPujbwygNpqdpM8N.jpg', external_id = '153', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Two lost souls visiting Tokyo -- the young, neglected wife of a photographer and a washed-up movie star shooting a TV commercial -- find an odd solace and pensive freedom to be real in each other''s company, away from their lives in America."'::jsonb) WHERE title = 'Lost in Translation' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/h3iqYiGS6F3y7GxaS4AT8nFxZ2i.jpg', external_id = '401', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Andrew returns to his hometown for his mother’s funeral, a journey that reconnects him with old friends. The trip coincides with his decision to stop taking his powerful antidepressants. A chance meeting with Sam—a girl also struggling with various maladies—opens up the possibility of rekindling emotional connections, confronting his psychologist father, and perhaps beginning a new life."'::jsonb) WHERE title = 'Garden State' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/llWl3GtNoXosbvYboelmoT459NM.jpg', external_id = '661539', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"New York, early 1960s. Against the backdrop of a vibrant music scene and tumultuous cultural upheaval, an enigmatic 19-year-old from Minnesota arrives in the West Village with his guitar and revolutionary talent, destined to change the course of American music."'::jsonb) WHERE title = 'A Complete Unknown' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/iKYBuxO6MSaxu0UrVHwUv3CkkMP.jpg', external_id = '1255834', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In 2009, four friends living in Tobyhanna, Pennsylvania, document their attempt to record a rap album over the course of one eventful night."'::jsonb) WHERE title = 'Rap World' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/klTJKS9iWeEi7XMP6tYvDNIU2yA.jpg', external_id = '27425', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A blind sculptor kidnaps an artists'' model and imprisons her in his warehouse studio – a shadowland of perverse monuments to the female form. Here a deranged passion play of sensual and sexual obsession is acted out in world where sight is replaced by touch."'::jsonb) WHERE title = 'Blind Beast' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/g2YbTYKpY7N2yDSk7BfXZ18I5QV.jpg', external_id = '18148', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The elderly Shukishi and his wife, Tomi, take the long journey from their small seaside village to visit their adult children in Tokyo. Their elder son, Koichi, a doctor, and their daughter, Shige, a hairdresser, don''t have much time to spend with their aged parents, and so it falls to Noriko, the widow of their younger son who was killed in the war, to keep her in-laws company."'::jsonb) WHERE title = 'Tokyo Story' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/htYp4yqFu4rzBEIa6j9jP8miDm3.jpg', external_id = '8051', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A socially awkward and volatile small business owner meets the love of his life after being threatened by a gang of scammers."'::jsonb) WHERE title = 'Punch Drunk Love' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/4DJ1zNr4Y6q7zQ27goEYla46VdO.jpg', external_id = '291270', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"An inspirational speaker becomes reinvigorated after meeting a lively woman who shakes up his mundane existence."'::jsonb) WHERE title = 'Anomalisa' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/j6G24dqI4WgUtChhWjfnI4lnmiK.jpg', external_id = '18491', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"SEELE orders an all-out attack on NERV, aiming to destroy the Evas before Gendo can advance his own plans for the Human Instrumentality Project. Shinji is pushed to the limits of his sanity as he is forced to decide the fate of humanity."'::jsonb) WHERE title = 'Neon Genesis Evangelion: The End of Evangelion' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/nVKKmKLDQOclCYkc16SAA42GrDG.jpg', external_id = '110402', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A group of scientists is sent to the planet Arkanar to help the local civilization, which is in the Medieval phase of its own history, to find the right path to progress. Their task is a difficult one: they cannot interfere violently and in no case can they kill. The scientist Rumata tries to save the local intellectuals from their punishment and cannot avoid taking a position."'::jsonb) WHERE title = 'Hard to be a God' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/o8UhmEbWPHmTUxP0lMuCoqNkbB3.jpg', external_id = '4348', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A story of love and life among the landed English gentry during the Georgian era. Mr. Bennet is a gentleman living in Hertfordshire with his overbearing wife and five daughters, but if he dies their house will be inherited by a distant cousin whom they have never met, so the family''s future happiness and security is dependent on the daughters making good marriages."'::jsonb) WHERE title = 'Pride & Prejudice' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg', external_id = '872585', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The story of J. Robert Oppenheimer''s role in the development of the atomic bomb during World War II."'::jsonb) WHERE title = 'Oppenheimer' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/uYgvlHceRFjAFbsNeMInYcLZLUb.jpg', external_id = '805', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A young couple, Rosemary and Guy, moves into an infamous New York apartment building, known by frightening legends and mysterious events, with the purpose of starting a family."'::jsonb) WHERE title = 'Rosemary''s Baby' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/zjkU6mZH9dMbQK2B622MlsRT8uw.jpg', external_id = '1016848', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Everything goes to hell for newly-pregnant Belinda after her mother-in-law moves in. As the diabolical guest tries to get her claws on the child, Belinda must draw the line somewhere."'::jsonb) WHERE title = 'The Front Room' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/nQXYTvm6AY4WmtcPskroqC7Skh.jpg', external_id = '1408208', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A man trapped in an endless sterile subway passageway sets out to find Exit 8. The rules of his quest are simple: do not overlook anything out of the ordinary. If you discover an anomaly, turn back immediately. If you don’t, carry on. Then leave from Exit 8. But even a single oversight will send him back to the beginning. Will he ever reach his goal and escape this infinite corridor?"'::jsonb) WHERE title = 'Exit 8' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/SWKWLtVDRmeWUWllELMaKPQ8SM.jpg', external_id = '1530130', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Agnes Applewhite, a blossoming young woman caught between her sanctimonious mother and tightly wound sister, defies her family’s expectations by taking a job as a shampoo girl at a lively beauty salon. As she thrives in this new colorful world, she is suddenly confronted by debilitating menstrual cramps that become real-life monsters, blurring the line between reality and nightmare."'::jsonb) WHERE title = 'Cramps! A Period Piece' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/lV8YHwGkYZsm6EfIqnhaSz2avKt.jpg', external_id = '1159831', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A lonely Frankenstein travels to 1930s Chicago to ask groundbreaking scientist Dr. Euphronious to create a companion for him. The two revive a murdered young woman and The Bride is born. But what ensues is beyond what either of them imagined."'::jsonb) WHERE title = 'The Bride!' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/yHjEjRU81RcxKFNU5hhiPYMzlsu.jpg', external_id = '27040', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A woman returning home falls asleep and has vivid dreams that may or may not be happening in reality. Through repetitive images and complete mismatching of the objective view of time and space, her dark inner desires play out on-screen."'::jsonb) WHERE title = 'Meshes of the Afternoon' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/ILVF0eJxHMddjxeQhswFtpMtqx.jpg', external_id = '567', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder."'::jsonb) WHERE title = 'Rear Window' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/r6UYog9MruOe4X71AS57EhuJrFq.jpg', external_id = '53023', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Though married to the good-natured, beautiful Thérèse, young husband and father François finds himself falling unquestioningly into an affair with an attractive postal worker. One of Agnès Varda''s most provocative films, ''Le bonheur'' examines, with a deceptively cheery palette and the spirited strains of Mozart, the ideas of fidelity and happiness in a modern, self-centered world."'::jsonb) WHERE title = 'Le Bonheur' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/kQOrS0DLUXYsqPMedM2G6NJcJBq.jpg', external_id = '10227', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Clumsy Monsieur Hulot finds himself perplexed by the intimidating complexity of a gadget-filled Paris. He attempts to meet with a business contact but soon becomes lost. His roundabout journey parallels that of an American tourist, and as they weave through the inventive urban environment, they intermittently meet, developing an interest in one another. They eventually get together at a chaotic restaurant, along with several other quirky characters."'::jsonb) WHERE title = 'PlayTime' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/wkcbaqCoYEXDUnSQ6NTnB2C7H05.jpg', external_id = '2487', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Yuki''s family is nearly wiped out before she is born due to the machinations of a band of criminals. These criminals kidnap and brutalize her mother but leave her alive. Later her mother ends up in prison with only revenge to keep her alive. She creates an instrument for this revenge by purposefully getting pregnant. Yuki never knows the love of a family but only killing and revenge."'::jsonb) WHERE title = 'Lady Snowblood' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/twl4ovyjb8muFKvZmcCDzPR0hy1.jpg', external_id = '3121', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The intersecting stories of twenty-four characters—from country star to wannabe to reporter to waitress—connect to the music business in Nashville, Tennessee."'::jsonb) WHERE title = 'Nashville' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/bhxF12p1qyuPcY7BoSrqmGTJ4jI.jpg', external_id = '480833', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Bardha works in an agricultural cooperative while Gjika works as an engineer in a mine. Due to their work, they get promoted to work in the ministry departments."'::jsonb) WHERE title = 'The Appointment' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/veJ93QUnTBX4WXk5qSl1s42Uosj.jpg', external_id = '106380', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A young woman urgently seeks to navigate the maze of contemporary Taipei and find a future. She hopes that her boyfriend Lung is the key to the future, but Lung is stuck in a past that combines baseball and traditional loyalty that leads him to squander his nest egg bailing her father out of financial trouble."'::jsonb) WHERE title = 'Taipei Story' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/zMmPUsfcHQcfLznnq7v2EQYXrfp.jpg', external_id = '117326', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A cat from outer space teams up with a young girl and an old man to fight a murderous alien that possesses people."'::jsonb) WHERE title = 'The Cat' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/qZBtSTEhlXy0aNTZ40umWLpJr2T.jpg', external_id = '33560', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Gay, alienated Los Angeles teens have a hard time as their parents kick them out of their homes, they don’t have money, their lovers cheat, and they are harassed by gay-bashers."'::jsonb) WHERE title = 'Totally F**ed Up' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/fsMMOVto87pvUQyozOF9CaT9aMR.jpg', external_id = '11446', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"An unattractive 7th grader struggles to cope with suburban life as the middle child with inattentive parents and bullies at school."'::jsonb) WHERE title = 'Welcome to the Dollhouse' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/zwGaUMm0wAqi0wkO7LJDlwoA5LP.jpg', external_id = '11075', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Seven years after the death of his wife, widower Shigeharu seeks advice on how to find a new wife from a colleague. Taking advantage of their position as a film company, they stage an audition. Interviewing a series of women, Shigeharu is enchanted by the quiet Asami. But soon things take a twisted turn as Asami isn’t what she seems to be."'::jsonb) WHERE title = 'The Audition' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/k8j4YLZlda98dqp9ErymKzjYowG.jpg', external_id = '9696', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"As sadomasochistic yakuza enforcer Kakihara searches for his missing boss he comes across Ichi, a repressed and psychotic killer who may be able to inflict levels of pain that Kakihara has only dreamed of."'::jsonb) WHERE title = 'Ichi the Killer' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/8ujSEEePCVMyi7Mt1RQMXd6SWmy.jpg', external_id = '9694', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"People mysteriously start receiving voicemail messages from their future selves, in the form of the sound of them reacting to their own violent deaths, along with the exact date and time of their future death, listed on the message log. The plot thickens as the surviving characters pursue the answers to this mystery which could save their lives."'::jsonb) WHERE title = 'One Missed Call' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/kGQZGujjw8S6NKs5C8nugsMtol.jpg', external_id = '13168', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Jane, a struggling but perpetually stoned actress, has a busy day ahead. She has several important tasks on her list, including buying more marijuana. Even though she already has a good start on the day''s planned drug use, she eats her roommate''s pot-laced cupcakes and embarks on a series of misadventures all over Los Angeles."'::jsonb) WHERE title = 'Smiley Face' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/g0zCELYfBfSv8TOGC13buABVN53.jpg', external_id = '27374', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After 16-year-old Alice Palmer drowns at a local dam, her family experiences a series of strange, inexplicable events centered in and around their home. Unsettled, the Palmers seek the help of a psychic and parapsychologist, who discovers that Alice led a secret, double life. At Lake Mungo, Alice''s secret past emerges."'::jsonb) WHERE title = 'Lake Mungo' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/7IG4WjaAOVDlLvLUkh513HSwhW8.jpg', external_id = '13310', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When Oskar, a sensitive, bullied 12-year-old boy, meets his new neighbor, the mysterious and moody Eli, they strike up a friendship. Initially reserved with each other, Oskar and Eli slowly form a close bond, but it soon becomes apparent that she is no ordinary young girl."'::jsonb) WHERE title = 'Let the Right One In' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/sBnFQwOcmL3dAIYfiQ9nLvLSW7B.jpg', external_id = '22536', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A respected priest volunteers for an experimental procedure that may lead to a cure for a deadly virus. He gets infected and dies, but a blood transfusion of unknown origin brings him back to life. Now, he’s torn between faith and bloodlust, and has a newfound desire for the wife of a childhood friend."'::jsonb) WHERE title = 'Thirst' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/o1t2Mw18EEBnl8v4Nby3PFjxnM1.jpg', external_id = '129670', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"An aging, booze-addled father takes a trip from Montana to Nebraska with his estranged son in order to claim what he believes to be a million-dollar sweepstakes prize."'::jsonb) WHERE title = 'Nebraska' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/aXlL7yYwpXInhltamtzKQFBG08G.jpg', external_id = '293670', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A stranger arrives in a little village and soon after a mysterious sickness starts spreading. A policeman is drawn into the incident and is forced to solve the mystery in order to save his daughter."'::jsonb) WHERE title = 'The Wailing' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/q6mZjCwGn9KCTrStTRM88pui0is.jpg', external_id = '374052', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A modern-day witch uses spells and magic to get men to fall in love with her, with deadly consequences."'::jsonb) WHERE title = 'The Love Witch' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/dtIIyQyALk57ko5bjac7hi01YQ.jpg', external_id = '426426', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In 1970s Mexico City, two domestic workers help a mother of four while her husband is away for an extended period of time."'::jsonb) WHERE title = 'Roma' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/771Ey73LqsE9ORJhQCI25rgMXS2.jpg', external_id = '396461', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Young and disenchanted Sam meets a mysterious and beautiful woman who''s swimming in his building''s pool one night. When she suddenly vanishes the next morning, Sam embarks on a surreal quest across Los Angeles to decode the secret behind her disappearance, leading him into the murkiest depths of mystery, scandal and conspiracy."'::jsonb) WHERE title = 'Under the Silver Lake' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/zdAS6PT1AZIL7s1q9xTkOMDjU5z.jpg', external_id = '574321', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Following the disappearance of the glamorous and secretive Evelyne Ducat during a blizzard in the highlands of southern France, the lives of five people inextricably linked to Evelyne are brought together to devastating effect as the local police investigate the case."'::jsonb) WHERE title = 'Only the Animals' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/vfn1feL0V9HNSXuLLpaxAW8O6LO.jpg', external_id = '597208', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"An ambitious carnival man with a talent for manipulating people with a few well-chosen words hooks up with a female psychologist who is even more dangerous than he is."'::jsonb) WHERE title = 'Nightmare Alley' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/29rhl1xopxA7JlGVVsf1UHfYPvN.jpg', external_id = '726209', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A family''s getaway to a luxurious rental home takes an ominous turn when a cyberattack knocks out their devices—and two strangers appear at their door."'::jsonb) WHERE title = 'Leave the World Behind' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/iwUoM3y77fov7bKyFMwpGMzRHyn.jpg', external_id = '814889', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"As an evil takes over the world beyond their front doorstep, the only protection for a mother and her twin sons is their house and their family’s protective bond."'::jsonb) WHERE title = 'Never Let Go' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/s6bBgT11fFHwKrzrFluCoKfcjdU.jpg', external_id = '1219556', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A chef''s life is disrupted by a chime that brings with it an increasing sense of dread."'::jsonb) WHERE title = 'Chime' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/pfLylbmY0uxQm6Sh63j6bpb7XB3.jpg', external_id = '1189735', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Care worker Shoo, who is haunted by a personal tragedy, is sent to a remote village to care for an agoraphobic woman, who fears both her neighbours and the Na Sídhe – sinister folkloric entities she believes abducted her decades before."'::jsonb) WHERE title = 'Frewaka' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/fhxU3jFzC2tlBgqFhB7NqO4qAFe.jpg', external_id = '32622', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A ten year old girl named Angela leads her six year old sister, Ellie, through various regimens of ''purification'' in an attempt to rid themselves of their evil, which she believes to be the cause of their mother''s mental illness. Precocious, to say the least, Angela has visions of Lucifer coming to take her and her sister away, and one of her remedies for this is for them to remain within a circle of their dolls and toys until they see a vision of the virgin Mary come to them. But such thinking can only lead to an ending befitting of her own mental state."'::jsonb) WHERE title = 'Angela' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/sKnwnnmBpjo9BEskHtja6ToXUV1.jpg', external_id = '1193824', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When a musician and her husband move to a remote house in Wales, the music they make disturbs local ancient folk magic, bringing a nameless child to their door who is intent on infiltrating their lives."'::jsonb) WHERE title = 'Rabbit Trap' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/dgNTS4EQDDVfkzJI5msKuHu2Ei3.jpg', external_id = '3782', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Kanji Watanabe is a middle-aged man who has worked in the same monotonous bureaucratic position for decades. Learning he has cancer, he starts to look for the meaning of his life."'::jsonb) WHERE title = 'Ikiru' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/yTRrqIGusJuzG5Pe3iFQTnHg1Ps.jpg', external_id = '36095', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A wave of gruesome murders sweeps Tokyo, and the only link is a bloody X carved into the victims'' necks. In each case, the murderer is found nearby and recalls nothing of the crime. Detective Takabe and psychologist Sakuma are called in to figure out the connection, but their investigation goes nowhere. An odd young man, arrested near the latest murder, has a strange effect on everyone with whom he comes into contact. Takabe starts a series of interrogations to determine the man''s connection with the killings."'::jsonb) WHERE title = 'Cure' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/fy2K8jqCV9rNC8fHx9muPJTNaqs.jpg', external_id = '407449', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Follows the journey of a 90-year-old atheist and the quirky characters that inhabit his off-the-map desert town. He finds himself at the precipice of life, thrust into a journey of self-exploration."'::jsonb) WHERE title = 'Lucky' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/tT9cMiVDdtlcdZxOoFy3VRmEoKk.jpg', external_id = '404', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Retired farmer and widower Alvin Straight learns one day that his distant brother Lyle has suffered a stroke and may not recover. Alvin is determined to make things right with Lyle while he still can, but his brother lives in Wisconsin, while Alvin is stuck in Iowa with no car and no driver''s license. He then has the idea of making the trip on his old lawnmower, thus beginning a picturesque and at times deeply spiritual odyssey."'::jsonb) WHERE title = 'The Straight Story' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/9ulPP8hcBjIrWRqeXsZVjL0uX3E.jpg', external_id = '22171', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After being attacked and raped twice in one day, a timid, mute seamstress becomes a violent agent of revenge for wronged women."'::jsonb) WHERE title = 'Ms. 45' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/15uOEfqBNTVtDUT7hGBVCka0rZz.jpg', external_id = '426', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A retired San Francisco detective suffering from acrophobia investigates the strange activities of an old friend''s wife, all the while becoming dangerously obsessed with her."'::jsonb) WHERE title = 'Vertigo' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/AhvO1GGDPIgN0hOqZEgaFCbswMK.jpg', external_id = '10474', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A high school basketball player’s life turns upside down after free-falling into the harrowing world of drug addiction."'::jsonb) WHERE title = 'Basketball Diaries' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/RAFYMC0NgK9In9aGY6k6wsIL8w.jpg', external_id = '819876', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"With his partner, a celebrity performance artist publicly showcases the metamorphosis of his organs in avant-garde performances. An investigator from the National Organ Registry obsessively tracks their movements, which is when a mysterious group is revealed... Their mission — to use the artist''s notoriety to shed light on the next phase of human evolution."'::jsonb) WHERE title = 'Crimes of the Future' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/tgNjemQPG96uIezpiUiXFcer5ga.jpg', external_id = '12493', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A Yokohama shoe executive faces a wrenching choice when kidnappers mistakenly seize his chauffeur’s son but demand the ransom anyway."'::jsonb) WHERE title = 'High and Low' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/bhL5Z8srwSXJuosfBqei9Dxv41C.jpg', external_id = '11347', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When an archaeologist uncovers a strange skull in a foreign land, the residents of a nearby town begin to disappear, leading to further inexplicable occurrences."'::jsonb) WHERE title = 'The Lair of the White Worm' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/i4qK3vQS4MD8OKhIkqSe3UK6OuH.jpg', external_id = '1037035', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In rural Western Massachusetts, 11-year-old Lacy spends the summer of 1991 at home, enthralled by her own imagination and the attention of her mother, Janet. As the months pass, three visitors enter their orbit, all captivated by Janet."'::jsonb) WHERE title = 'Janet Planet' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/6WTiOCfDPP8XV4jqfloiVWf7KHq.jpg', external_id = '10494', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Rising pop star Mima quits singing to pursue a career as an actress. After she takes up a role on a popular detective show, her handlers and collaborators begin turning up murdered. Harboring feelings of guilt and haunted by visions of her former self, Mima''s reality and fantasy meld into a frenzied paranoia."'::jsonb) WHERE title = 'Perfect Blue' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/bLUUr474Go1DfeN1HLjE3rnZXBq.jpg', external_id = '4977', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When a machine that allows therapists to enter their patient''s dreams is stolen, all hell breaks loose. Only a young female therapist can stop it and recover it before damage is done: Paprika."'::jsonb) WHERE title = 'Paprika' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/3IJZ252ecJICOShQgymHk7AOVIs.jpg', external_id = '75233', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A recovering drug addict is granted a day’s leave from rehab and returns to Oslo, where he reconnects with friends, faces the weight of his past, and struggles with uncertainty about his future. Over the course of one day, he drifts through encounters that reflect his longing for connection and his deep sense of alienation."'::jsonb) WHERE title = 'Oslo, August 31st' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/wwtrXRL8SiOWxhwLEvw7iBgYh0g.jpg', external_id = '16307', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Police sergeant Neil Howie is called to an island village in search of a missing girl whom the locals claim never existed. The investigation is further complicated as Howie’s religious views clash with those of the island’s residents."'::jsonb) WHERE title = 'The Wicker Man' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/zOsaxYLgvZVU7cJBpPn8CuE0MrP.jpg', external_id = '9675', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Two middle-aged men embark on a spiritual journey through Californian wine country. One is an unpublished novelist suffering from depression, and the other is only days away from walking down the aisle."'::jsonb) WHERE title = 'Sideways' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/f11xq7dBGhz9UDc3dabldAGeXVH.jpg', external_id = '11305', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"In Memphis, Tennessee, over the course of a single night, the Arcade Hotel, run by an eccentric night clerk and a clueless bellboy, is visited by a young Japanese couple traveling in search of the roots of rock; an Italian woman in mourning who stumbles upon a fleeing charlatan girl; and a comical trio of accidental thieves looking for a place to hide."'::jsonb) WHERE title = 'Mystery Train' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/icNqzWxjwXuD6FSRtTWNj8sa5B1.jpg', external_id = '47795', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Two Greek children embark on a journey to search for their father, who supposedly lives in Germany."'::jsonb) WHERE title = 'Landscape in the Mist' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/6tk0xmn9k5HjUeXsnhxIa94sFXP.jpg', external_id = '414453', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When a renowned architecture scholar falls suddenly ill during a speaking tour, his son Jin finds himself stranded in Columbus, Indiana - a small Midwestern city celebrated for its many significant modernist buildings. Jin strikes up a friendship with Casey, a young architecture enthusiast who works at the local library."'::jsonb) WHERE title = 'Columbus' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/vahbRvxqpTspqvFgWPoS9ThfODd.jpg', external_id = '378181', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A young man drops out of college to fix his family when he senses something is terribly wrong at home."'::jsonb) WHERE title = 'Ritual' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/gepRByGXlkU0y48WzPcKlMW4szu.jpg', external_id = '138535', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"65 shots making up a cryptically alluded-to narrative: a lesbian couple''s Midwest travels, a hitchhiking young man''s journeys, the story of a man who may be having an affair."'::jsonb) WHERE title = '11 x 14' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/mR8dSQZI8X6Z1NClJhFrtJp636z.jpg', external_id = '25538', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A Taipei family faces personal and moral uncertainty as everyday events test their relationships and sense of purpose."'::jsonb) WHERE title = 'Yi Yi' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/gCWPB8cF82tqzrS9tvzcO6q6nyz.jpg', external_id = '840', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After an encounter with UFOs, an electricity linesman feels undeniably drawn to an isolated area in the wilderness where something spectacular is about to happen."'::jsonb) WHERE title = 'Close Encounters of the Third Kind' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/ikcNOWB6Qo1ER1H1BJL6Vf0W22s.jpg', external_id = '1325734', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A happily engaged couple is put to the test when an unexpected turn sends their wedding week off the rails."'::jsonb) WHERE title = 'The Drama' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/fqfSu8Y1YSVFkoCJyiTXI6woYma.jpg', external_id = '44012', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A lonely young widow lives with her son following an immutable order: while the boy is in school, she cares for their apartment, does chores, and receives clients in the afternoon."'::jsonb) WHERE title = 'Jeanne Dielman, 23, quai du Commerce, 1080 Bruxelles' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/skS02wdeH2C0nrbCQP3qKwJdZtZ.jpg', external_id = '11850', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The residents of San Francisco are becoming drone-like shadows of their former selves, and as the phenomenon spreads, two Department of Health workers uncover the horrifying truth."'::jsonb) WHERE title = 'Invasion of the Body Snatchers' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/p3lCqqo42YZgwsFAQvX2JKfMc1l.jpg', external_id = '1363387', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After succumbing to an obscure weight-loss craze involving the eating of human ashes, lovelorn medical student Hana finds herself haunted by the ghost of the person she''s eating."'::jsonb) WHERE title = 'Saccharine' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/uipHKJHY1nNEQyprXjfNzH0GIOF.jpg', external_id = '807339', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A struggling young dancer finds herself drawn in by dark forces when a peculiar, well-connected older couple promise her a shot at fame."'::jsonb) WHERE title = 'Apartment 7A' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/8gZWMhJHRvaXdXsNhERtqNHYpH3.jpg', external_id = '9426', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When Seth Brundle makes a huge scientific and technological breakthrough in teleportation, he decides to test it on himself. Unbeknownst to him, a common housefly manages to get inside the device and the two become one."'::jsonb) WHERE title = 'The Fly' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/gpai5oUFyFGLHOCsYTvVMqlbY7A.jpg', external_id = '884', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A car crash victim suddenly finds himself turned on by car accidents and becomes involved with an underground sub-culture of like-minded souls."'::jsonb) WHERE title = 'Crash' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/VTqLdveNXxGsIAZL5I4RliTTt7.jpg', external_id = '9538', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After a man with extraordinary, and frighteningly destructive, telepathic abilities is nabbed by agents from a mysterious rogue corporation, he discovers he is far from the only possessor of such strange powers. Some of the other “scanners” have their minds set on world domination, while others are trying to stop them."'::jsonb) WHERE title = 'Scanners' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/eMP4F0POBgrB4icn6XgYeLLIrld.jpg', external_id = '489430', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Police commissioner Funes and three researchers of supernatural phenomena investigate inexplicable events that are occurring in the suburbs of Buenos Aires."'::jsonb) WHERE title = 'Terrified' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/ji5oNPSEw9Rvv2lhQHlVbGU2S8W.jpg', external_id = '1262983', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A teenager stops off to see his dealer to test a new drug before heading off for a night of partying. On the way home, he picks up an injured woman, and the night takes a surreal turn."'::jsonb) WHERE title = 'MadS' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/i3omY4P6QUzFQlEeclWY92RuXCH.jpg', external_id = '937941', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A woman''s obsessive search for her missing sister leads her into a terrifying mystery at the hands of an unknown evil."'::jsonb) WHERE title = 'Shelby Oaks' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/sfgUrQgmgHUPZzpviuP2zILQep1.jpg', external_id = '1339713', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After breaking the mysterious \"One Wish Willow\" to win his crush''s heart, a hopeless romantic finds himself getting exactly what he asked for but soon discovers that some desires come at a dark, sinister price."'::jsonb) WHERE title = 'Obsession' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/tMdoCRx0XIPR5uYBwxbxR7WCNBb.jpg', external_id = '18415', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Teenagers Solomon and Tummler kill time in Xenia, Ohio, a small town that has never recovered from the tornado that ravaged the community in the 1970s."'::jsonb) WHERE title = 'Gummo' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/xMYP4uaNeyPmX4FQ2xxWk2eIN6K.jpg', external_id = '21450', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"An unemployed Brit vents his rage on unsuspecting strangers as he embarks on a nocturnal London odyssey."'::jsonb) WHERE title = 'Naked' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/AhEYtXa1csweudaRivYtg0bdBpu.jpg', external_id = '1240889', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After years of slapdash sequels and waning fandom, the Camp Miasma slasher franchise is handed over to an enthusiastic young director for resurrection. But when she visits the original movie’s star, a now-reclusive actress shrouded in mystery, the two women fall into a blood-soaked world of desire, fear, and delirium."'::jsonb) WHERE title = 'Teenage Sex and Death at Camp Miasma' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/vpkNMkbisv5cTaIfCzUduYzXnjb.jpg', external_id = '1083381', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A strange doorway appears in the basement of a furniture showroom."'::jsonb) WHERE title = 'The Backrooms' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/zOeAduPBa1NZyX9TCcWXVpnHy3T.jpg', external_id = '1381071', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Direct sequel to Takashi Yamazaki’s Godzilla Minus One. Plot TBA."'::jsonb) WHERE title = 'Godzilla Minus Zero' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/8QWIeb7UZyNZFyLFjVAn9QpnWl2.jpg', external_id = '1212763', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The sixth installment in the Evil Dead franchise. Plot TBA."'::jsonb) WHERE title = 'Evil Dead Burn' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/u9jha7bkttIrc5RO1TWeSn7QVyI.jpg', external_id = '1101383', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After a mysterious cosmic event rips Oak Street from suburbia and transports their neighborhood to someplace unknown, a family soon discovers that their very survival depends on them sticking together as they navigate their now unrecognizable surroundings."'::jsonb) WHERE title = 'Flowervale Street' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/lTQoEczVEnkuxHFEGgWYfJB98tL.jpg', external_id = '1304313', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The young daughter of a journalist disappears into the desert without a trace—eight years later, the broken family is shocked when she is returned to them, as what should be a joyful reunion turns into a living nightmare."'::jsonb) WHERE title = 'Lee Cronin''s The Mummy' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/vPVY3S57lEooBLJCg6KGdMHkUxm.jpg', external_id = '855435', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A woman, employed as a website content moderator, comes across a series of violent videos reproducing death scenes from a film."'::jsonb) WHERE title = 'Faces of Death' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/gC4FtEthYvx6XV2JHCQibf4P3FT.jpg', external_id = '1430077', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When novelist Ohm Bauman retreats to a remote inn to scatter his parents'' ashes, he is consumed by tales of a witch haunting the honeymoon suite. Disturbing visions and a shocking disappearance forces him to confront dark corners of his past."'::jsonb) WHERE title = 'Hokum' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/u9jha7bkttIrc5RO1TWeSn7QVyI.jpg', external_id = '1101383', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After a mysterious cosmic event rips Oak Street from suburbia and transports their neighborhood to someplace unknown, a family soon discovers that their very survival depends on them sticking together as they navigate their now unrecognizable surroundings."'::jsonb) WHERE title = 'The End of Oak Street' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/8qLjMLuni7prIhO7GIwiYIJJcO5.jpg', external_id = '1288059', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"When fresh-faced Elliot lands an exciting job for renowned artist, icon and provocateur Erika Tracy, his fantasies come true as Erika taps him to become her sexual muse. But Elliot soon finds himself out of his depth as Erika takes him on a journey more profound than he ever could have imagined, into a world of sex, obsession, power, betrayal and murder."'::jsonb) WHERE title = 'I Want Your Sex' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/khN1O3quym7IQjhpe8U998bkgX9.jpg', external_id = '1092943', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Teenage best friends Doe and Muna are heading off on what seems like the trip of a lifetime. Quiet, observant Doe hasn’t travelled since arriving in the UK as a Somali refugee aged three. Muna, sharp and fearless with Pakistani roots, leads them through airport security and into the unknown. But this isn’t a holiday. The girls are bound for Istanbul, planning to cross into Syria to begin a new life they believe holds purpose and meaning. When their fixer fails to appear, panic sets in, but turning back isn’t an option. Alone in a foreign city, they must improvise fast, pushing the limits of their courage, their faith, and their friendship."'::jsonb) WHERE title = 'Brides' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/uMbCg5DlC5ZSWCYVIHIb0SQ0MQ6.jpg', external_id = '89249', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Claire Bannion, a widowed mother of two young daughters, has the gift of extrasensory perception that torments her after she \"sees\" her husband die in a fishing accident but is powerless to prevent it. Two years later when Claire''s neighbors are murdered, she reluctantly agrees to use her clairvoyance to help with the police investigation."'::jsonb) WHERE title = 'Claire' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/8bqHaHb2zNd39ASOT1jecNAMycR.jpg', external_id = '275497', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"At the end of his greatest adventure, Skillman has vanquished his nemesis, recovered the priceless artifact, and saved his latest lover from certain doom. But as he struggles to figure out what comes next, his lady begins to realize her confident, capable man hasn''t the first clue what to do once the guns are down."'::jsonb) WHERE title = 'Epilogue' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/tEpS6fP5q7splzBMPbo0b6gp0ps.jpg', external_id = '1590991', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"On the last day of college, three lives quietly collide with memories, choices, and unspoken feelings. Hope is a poetic reflection on timing, love, and the moments that could have changed everything.  Hope follows three hearts bound by silence, longing, and what remains unsaid. A gentle story about love, timing, and the fragile beauty of unanswered emotions."'::jsonb) WHERE title = 'Hope' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/mPbJ3JPyIQnWuBwMdPfVNeoedDx.jpg', external_id = '1442761', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A fugitive thriller set during Halloween. Plot TBA."'::jsonb) WHERE title = 'October' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/wIbBXwv2PgxRzAg4i9n8pOiqlhe.jpg', external_id = '1284046', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A mother living in a trailer park tries to protect her loved ones from a threat that has escaped from a secret military base, while mercenaries try to contain it."'::jsonb) WHERE title = 'Onslaught' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/e4LM2UliERQDoSfW2iCR7EcpkO9.jpg', external_id = '259935', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The nature and lure of power: in Dallas, a councilman is on trial for corruption, the D.A. is running for the US Senate, a serial killer is slashing prostitutes, and a professor is murdered. Amanda Reeve is assigned to investigate the law-school killing. She hears rumors that the dead man offered women students good grades in exchange for sex. The trail leads her to two wealthy, beautiful students whose alibi is provided by a librarian. At the same time, the cops close in on the slasher. Meanwhile, Amanda misses her former lover, next in line to become D.A., and a reporter is fired for getting close to the truth about the Senate candidate. Is a cover-up or conspiracy in the works?"'::jsonb) WHERE title = 'Pendulum' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/jVunJysV7ImmcvQqHdeIKciBCtr.jpg', external_id = '1251832', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Based on the 1963 novel by Sylvia Plath, a young woman''s summer in New York sees her working for a Mademoiselle-like magazine, return home to New England, and subsequent breakdown all amidst the horrors of the fifties, from news of the Rosenbergs'' execution to sleazy disc jockeys and predatory college boys."'::jsonb) WHERE title = 'The Bell Jar' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/1CvJ6diBACKPVGOpcWuY4XPQdqX.jpg', external_id = '5876', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After a violent storm, a dense cloud of mist envelops a small Maine town, trapping David Drayton and his five-year-old son in a local grocery store with other local residents. They soon discover that the mist conceals deadly horrors that threaten their lives, and worse, their sanity."'::jsonb) WHERE title = 'The Mist' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '1440766', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A love story about two music-obsessed twenty-somethings navigating the messy realities of ambition, belonging and adulthood over the course of an era-defining decade."'::jsonb) WHERE title = 'Deep Cuts' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/k8T3CHeykqrRVNCmYSgz4kacP9K.jpg', external_id = '858035', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Klara, an Artificial Friend designed to prevent loneliness, is purchased by a mother and her bright teen daughter, Josie. Josie, who suffers from a mysterious illness, adores her new robot companion. On a quest to save Josie and those who love her from heartbreak, Klara learns the power of human love."'::jsonb) WHERE title = 'Klara and the Sun' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/xNwlAIdx1Ln28GRiQttUP9Gojy2.jpg', external_id = '17979', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Miser Ebenezer Scrooge is awakened on Christmas Eve by spirits who reveal to him his own miserable existence, what opportunities he wasted in his youth, his current cruelties, and the dire fate that awaits him if he does not change his ways. Scrooge is faced with his own story of growing bitterness and meanness, and must decide what his own future will hold: death or redemption."'::jsonb) WHERE title = 'A Christmas Carol' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/6RKRs1vE0KPQIAtRseP9y6MNJe1.jpg', external_id = '1492198', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Described as a comedic drama set in the world of artificial intelligence, around the period at OpenAI in 2023 that saw CEO Sam Altman fired and rehired in a matter of days."'::jsonb) WHERE title = 'Artificial' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/uQMnIZBoZL2Fj3shuIqrXdxbs3J.jpg', external_id = '1431434', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"After spending a decade in a failed relationship, successful couples’ therapist Ally is turning 40 and is pushed, kicking and screaming, by her best friend back into the hopeless New York dating scene. But Ally finds her life pulled in opposing directions as she falls into a steamy fling with a 20-something Brooklyn hipster just as she begins a promising, more conventional relationship with Alan, a successful 50-something in Manhattan."'::jsonb) WHERE title = 'Good Sex' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/m0J9KwtSDB4zk53aqX1uyfe7RdK.jpg', external_id = '1198577', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"The sequel to It Follows (2014)."'::jsonb) WHERE title = 'They Follow' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/r4o3bO8UqZmS9J3AKJohSN0WqBW.jpg', external_id = '1375441', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A journalist takes on an underworld of crime and changes television forever."'::jsonb) WHERE title = 'Primetime' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/gG4iRaSrivB7hWtzwkM9UsQ7nma.jpg', external_id = '356841', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Six people are thrown together during an elaborate bank heist where any move can alter the outcome. Is it coincidence, or are they merely pawns in a much bigger game."'::jsonb) WHERE title = 'Checkmate' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/dxgcsMjFSJkNUbSjRpRs8UYui2H.jpg', external_id = '1297467', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"A small-town rookie detective takes on a case involving inconceivable darkness."'::jsonb) WHERE title = 'Untitled The Exorcist Film' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://image.tmdb.org/t/p/w500/kWNCRgt3ocv19bYO0sk7TRuZuFY.jpg', external_id = '1029281', external_source = 'tmdb_movie', metadata = jsonb_set(coalesce(metadata, '{}'), '{overview}', '"Nothing is what it seems when a twisted one-night stand spirals into a serial killer’s vicious murder spree."'::jsonb) WHERE title = 'Strange Darling' AND media_type = 'movie' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/11226648-L.jpg', external_id = '/works/OL166925W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '620'::jsonb) WHERE title = 'The Idiot' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8169547-L.jpg', external_id = '/works/OL17864836W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '224'::jsonb) WHERE title = 'Tender is the Flesh' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8296477-L.jpg', external_id = '/works/OL1230631W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '147'::jsonb) WHERE title = 'The Fall' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/13151269-L.jpg', external_id = '/works/OL1230613W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '143'::jsonb) WHERE title = 'The Stranger' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/14435231-L.jpg', external_id = '/works/OL1230600W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '306'::jsonb) WHERE title = 'The Rebel' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/853482-L.jpg', external_id = '/works/OL14942718W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '72'::jsonb) WHERE title = 'The Count of Monte Cristo' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/415735-L.jpg', external_id = '/works/OL8026526W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '272'::jsonb) WHERE title = 'Decreation: Poetry, Essays, Opera' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10721560-L.jpg', external_id = '/works/OL3840897W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '622'::jsonb) WHERE title = 'The Complete Poems' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/15195871-L.jpg', external_id = '/works/OL37571490W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '464'::jsonb) WHERE title = 'Butter' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/42317-L.jpg', external_id = '/works/OL31111W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '239'::jsonb) WHERE title = 'All About Love: New Visions' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/52813-L.jpg', external_id = '/works/OL277285W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '272'::jsonb) WHERE title = 'Communion: The Female Search for Love' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/477610-L.jpg', external_id = '/works/OL31119W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '188'::jsonb) WHERE title = 'The Will to Change' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL40574976W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '128'::jsonb) WHERE title = 'Lair of the White Worm' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL40908129W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '202'::jsonb) WHERE title = 'Dracula' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/9280646-L.jpg', external_id = '/works/OL20648061W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '336'::jsonb) WHERE title = 'Real Life' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/13729792-L.jpg', external_id = '/works/OL27893357W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '416'::jsonb) WHERE title = 'Biography of X' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10770819-L.jpg', external_id = '/works/OL24274115W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '91'::jsonb) WHERE title = 'Jane Eyre' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10203184-L.jpg', external_id = '/works/OL20879515W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '328'::jsonb) WHERE title = 'Ghosts' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/14824684-L.jpg', external_id = '/works/OL35714854W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '319'::jsonb) WHERE title = 'Good Material' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8124656-L.jpg', external_id = '/works/OL6680426W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '129'::jsonb) WHERE title = 'Complete Poems 1904-1962' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/961726-L.jpg', external_id = '/works/OL8958583W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '202'::jsonb) WHERE title = 'The Days of Abandonment' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/11929973-L.jpg', external_id = '/works/OL36861W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '552'::jsonb) WHERE title = 'Dune (Dune, #1)' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8272336-L.jpg', external_id = '/works/OL10432709W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '822'::jsonb) WHERE title = 'The Brothers Karamazov' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/756373-L.jpg', external_id = '/works/OL35395W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '58'::jsonb) WHERE title = 'Tender Buttons' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/36314-L.jpg', external_id = '/works/OL52114W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '206'::jsonb) WHERE title = 'The War of the Worlds' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/9045853-L.jpg', external_id = '/works/OL61982W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '374'::jsonb) WHERE title = 'The New Me' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/4982600-L.jpg', external_id = '/works/OL2625431W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '576'::jsonb) WHERE title = 'Kafka on the Shore' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10545533-L.jpg', external_id = '/works/OL24146685W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '224'::jsonb) WHERE title = 'Terminal Boredom: Stories' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/14840892-L.jpg', external_id = '/works/OL37585316W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '256'::jsonb) WHERE title = 'I Who Have Never Known Men' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL6934219W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '64'::jsonb) WHERE title = 'Persuasion' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL12659227W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '58'::jsonb) WHERE title = 'Pride and Prejudice' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/2355635-L.jpg', external_id = '/works/OL1161181W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '128'::jsonb) WHERE title = 'Existentialism is a Humanism' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL27741611W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '258'::jsonb) WHERE title = 'Nausea' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/419596-L.jpg', external_id = '/works/OL500164W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '238'::jsonb) WHERE title = 'Slouching Towards Bethlehem' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/13693-L.jpg', external_id = '/works/OL500171W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '227'::jsonb) WHERE title = 'The Year of Magical Thinking' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL28847504W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '336'::jsonb) WHERE title = 'Your Love is Not Good' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/1168119-L.jpg', external_id = '/works/OL19238545W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '204'::jsonb) WHERE title = 'Paradise Lost' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/11386937-L.jpg', external_id = '/works/OL23166W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '613'::jsonb) WHERE title = 'East of Eden' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/9272688-L.jpg', external_id = '/works/OL2944469W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '311'::jsonb) WHERE title = 'One Flew Over the Cuckoo''s Nest' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/12709654-L.jpg', external_id = '/works/OL98454W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '230'::jsonb) WHERE title = 'Cat''s Cradle' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/12727001-L.jpg', external_id = '/works/OL98459W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '205'::jsonb) WHERE title = 'Slaughterhouse-Five' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/9614210-L.jpg', external_id = '/works/OL3428975W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '287'::jsonb) WHERE title = 'Satantango' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/2560652-L.jpg', external_id = '/works/OL267096W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '656'::jsonb) WHERE title = 'Anna Karenina' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/14428305-L.jpg', external_id = '/works/OL503666W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '519'::jsonb) WHERE title = 'The Flame' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8457107-L.jpg', external_id = '/works/OL5814581W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '112'::jsonb) WHERE title = 'Bluets' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/6450442-L.jpg', external_id = '/works/OL32195W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '736'::jsonb) WHERE title = 'House of Leaves' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/6008132-L.jpg', external_id = '/works/OL13116995W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '445'::jsonb) WHERE title = 'The Monk' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10462708-L.jpg', external_id = '/works/OL22448002W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '256'::jsonb) WHERE title = 'Crying in H Mart' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/9467591-L.jpg', external_id = '/works/OL19663753W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '228'::jsonb) WHERE title = '13 Ways of Looking at a Fat Girl' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/13481659-L.jpg', external_id = '/works/OL34335406W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '384'::jsonb) WHERE title = 'Rouge' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/11465692-L.jpg', external_id = '/works/OL24732105W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '88'::jsonb) WHERE title = 'Time is a Mother' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/9768059-L.jpg', external_id = '/works/OL17351965W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '294'::jsonb) WHERE title = 'Drive Your Plow Over the Bones of the Dead' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/6816209-L.jpg', external_id = '/works/OL15853206W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '59'::jsonb) WHERE title = 'The Picture of Dorian Gray' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10320327-L.jpg', external_id = '/works/OL20757778W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '272'::jsonb) WHERE title = 'Death in Her Hands' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/7901818-L.jpg', external_id = '/works/OL17625870W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '272'::jsonb) WHERE title = 'Eileen' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/6671097-L.jpg', external_id = '/works/OL15474046W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '320'::jsonb) WHERE title = 'Just Kids' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/207515-L.jpg', external_id = '/works/OL2172356W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '224'::jsonb) WHERE title = 'Do Androids Dream of Electric Sheep?' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/4202989-L.jpg', external_id = '/works/OL1926462W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '287'::jsonb) WHERE title = 'I, Rigoberta Menchú' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/12762238-L.jpg', external_id = '/works/OL21145161W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '176'::jsonb) WHERE title = 'Madonna in a Fur Coat' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/14836043-L.jpg', external_id = '/works/OL37949460W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '454'::jsonb) WHERE title = 'Intermezzo' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10550746-L.jpg', external_id = '/works/OL24151602W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '352'::jsonb) WHERE title = 'Beautiful World, Where Are You' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/13831303-L.jpg', external_id = '/works/OL28962067W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '153'::jsonb) WHERE title = 'Ripe' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/4289014-L.jpg', external_id = '/works/OL3171069W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '246'::jsonb) WHERE title = 'The Haunting of Hill House' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/104126-L.jpg', external_id = '/works/OL112738W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '274'::jsonb) WHERE title = 'Either/Or' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/238890-L.jpg', external_id = '/works/OL496476W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '224'::jsonb) WHERE title = 'On Photography' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8261367-L.jpg', external_id = '/works/OL50548W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '330'::jsonb) WHERE title = 'Beloved' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10138333-L.jpg', external_id = '/works/OL20832477W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '240'::jsonb) WHERE title = 'Before the Coffee Gets Cold' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/13170141-L.jpg', external_id = '/works/OL28764158W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '216'::jsonb) WHERE title = 'Lost on Me' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/3240273-L.jpg', external_id = '/works/OL39360W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '226'::jsonb) WHERE title = 'Orlando' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8231846-L.jpg', external_id = '/works/OL39396W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '242'::jsonb) WHERE title = 'To the Lighthouse' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/12984540-L.jpg', external_id = '/works/OL627084W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '336'::jsonb) WHERE title = 'Lolita' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/5723587-L.jpg', external_id = '/works/OL176079W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '334'::jsonb) WHERE title = 'Heart and Science' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/4684227-L.jpg', external_id = '/works/OL176045W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '544'::jsonb) WHERE title = 'The Woman in White' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL39525339W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '153'::jsonb) WHERE title = 'The Sound and the Fury' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL38283752W', external_source = 'openlibrary' WHERE title = 'As I Lay Dying' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/102874-L.jpg', external_id = '/works/OL26386W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '368'::jsonb) WHERE title = 'Essential Wordsworth' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/14839787-L.jpg', external_id = '/works/OL37871931W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '320'::jsonb) WHERE title = 'Taiwan Travelogue' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/5484189-L.jpg', external_id = '/works/OL10215W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '224'::jsonb) WHERE title = 'We' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/13175019-L.jpg', external_id = '/works/OL21885963W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '69'::jsonb) WHERE title = 'The Memory Police' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10332412-L.jpg', external_id = '/works/OL21177270W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '173'::jsonb) WHERE title = 'Tokyo Ueno Station' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10601402-L.jpg', external_id = '/works/OL24178205W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '403'::jsonb) WHERE title = 'The Love Hypothesis' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8238729-L.jpg', external_id = '/works/OL36633W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '386'::jsonb) WHERE title = 'Rebecca' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/744854-L.jpg', external_id = '/works/OL4321141W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '608'::jsonb) WHERE title = 'The Secret History' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL496289W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '94'::jsonb) WHERE title = 'Wuthering Heights' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/13618122-L.jpg', external_id = '/works/OL28605788W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '304'::jsonb) WHERE title = 'The Guest' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10445973-L.jpg', external_id = '/works/OL21025633W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '132'::jsonb) WHERE title = 'Notes from the Underground' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8221238-L.jpg', external_id = '/works/OL10419081W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '296'::jsonb) WHERE title = 'White Nights' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/9411873-L.jpg', external_id = '/works/OL166894W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '520'::jsonb) WHERE title = 'Crime and Punishment' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/2237620-L.jpg', external_id = '/works/OL2625457W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '389'::jsonb) WHERE title = 'Norwegian Wood' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/97395-L.jpg', external_id = '/works/OL228702W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '224'::jsonb) WHERE title = 'Giovanni''s Room' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/5271497-L.jpg', external_id = '/works/OL2756289W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '264'::jsonb) WHERE title = 'The Wall' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/12947486-L.jpg', external_id = '/works/OL676009W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '439'::jsonb) WHERE title = 'The Master and Margarita' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10648818-L.jpg', external_id = '/works/OL24205364W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '368'::jsonb) WHERE title = 'All''s Well' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10317917-L.jpg', external_id = '/works/OL20758544W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '248'::jsonb) WHERE title = 'Exciting Times' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/14857835-L.jpg', external_id = '/works/OL28352841W', external_source = 'openlibrary' WHERE title = 'Model Home' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8199499-L.jpg', external_id = '/works/OL17887575W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '321'::jsonb) WHERE title = 'Conversations with Friends' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/9315164-L.jpg', external_id = '/works/OL19744024W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '163'::jsonb) WHERE title = 'Convenience Store Woman' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/6368-L.jpg', external_id = '/works/OL767903W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '237'::jsonb) WHERE title = 'The Woman Destroyed' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/12015500-L.jpg', external_id = '/works/OL81631W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '422'::jsonb) WHERE title = 'Pet Sematary' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/5410636-L.jpg', external_id = '/works/OL496481W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '88'::jsonb) WHERE title = 'Illness as Metaphor and AIDS and Its Metaphors' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8354226-L.jpg', external_id = '/works/OL18203673W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '400'::jsonb) WHERE title = 'The Seven Husbands of Evelyn Hugo' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/14671208-L.jpg', external_id = '/works/OL37574038W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '136'::jsonb) WHERE title = 'Perfection' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/12940546-L.jpg', external_id = '/works/OL27525065W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '288'::jsonb) WHERE title = 'Motherthing' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10240814-L.jpg', external_id = '/works/OL20756376W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '176'::jsonb) WHERE title = 'Indelicacy' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/415257-L.jpg', external_id = '/works/OL8026525W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '155'::jsonb) WHERE title = 'Autobiography of Red' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/488054-L.jpg', external_id = '/works/OL3348008W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '154'::jsonb) WHERE title = 'Typhoid Mary' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL44994785W', external_source = 'openlibrary' WHERE title = 'Hooked' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/9134982-L.jpg', external_id = '/works/OL20470196W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '458'::jsonb) WHERE title = 'Girl, Woman, Other' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/11550774-L.jpg', external_id = '/works/OL16647772W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '347'::jsonb) WHERE title = 'My Policeman' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8545250-L.jpg', external_id = '/works/OL19636245W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '248'::jsonb) WHERE title = 'Her Body and Other Parties' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/11198151-L.jpg', external_id = '/works/OL20470143W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '280'::jsonb) WHERE title = 'In the Dream House' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8324308-L.jpg', external_id = '/works/OL13810961W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '32'::jsonb) WHERE title = 'A Tale of Two Cities' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/9338903-L.jpg', external_id = '/works/OL20670294W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '176'::jsonb) WHERE title = 'Kim Jiyoung, Born 1982' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/13219276-L.jpg', external_id = '/works/OL28021327W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '304'::jsonb) WHERE title = 'Brutes' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/12366237-L.jpg', external_id = '/works/OL21868175W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '53'::jsonb) WHERE title = 'Bad Fruit' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/14923108-L.jpg', external_id = '/works/OL37864852W', external_source = 'openlibrary' WHERE title = 'Grey Dog' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/11303322-L.jpg', external_id = '/works/OL24627202W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '120'::jsonb) WHERE title = 'Things Have Gotten Worse Since We Last Spoke' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/107916-L.jpg', external_id = '/works/OL5721436W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '159'::jsonb) WHERE title = 'The Loved One' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10648326-L.jpg', external_id = '/works/OL22272750W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '160'::jsonb) WHERE title = 'Paradais' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/9366899-L.jpg', external_id = '/works/OL20692414W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '288'::jsonb) WHERE title = 'If I Had Your Face' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/14744666-L.jpg', external_id = '/works/OL37825652W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '320'::jsonb) WHERE title = 'Small Rain' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL25773821W', external_source = 'openlibrary' WHERE title = 'My Phantoms' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL37838180W', external_source = 'openlibrary' WHERE title = 'Banal Nightmare' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/7412625-L.jpg', external_id = '/works/OL17334243W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '190'::jsonb) WHERE title = 'The Vegetarian' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/12947486-L.jpg', external_id = '/works/OL676009W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '439'::jsonb) WHERE title = 'They' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10592817-L.jpg', external_id = '/works/OL50283W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '688'::jsonb) WHERE title = 'A People''s History of the United States: 1492-Present' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/1642063-L.jpg', external_id = '/works/OL228715W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '366'::jsonb) WHERE title = 'Another Country' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/167371-L.jpg', external_id = '/works/OL228720W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '208'::jsonb) WHERE title = 'If Beale Street Could Talk' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL13565543W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '88'::jsonb) WHERE title = 'Sense and Sensibility' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/9278312-L.jpg', external_id = '/works/OL66513W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '457'::jsonb) WHERE title = 'Emma' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8272758-L.jpg', external_id = '/works/OL15933234W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '188'::jsonb) WHERE title = 'Blue Nights' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10302651-L.jpg', external_id = '/works/OL20935167W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '177'::jsonb) WHERE title = 'The Clouds' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8896371-L.jpg', external_id = '/works/OL20241504W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '120'::jsonb) WHERE title = 'The Road in is Not the Same Road Out' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL32414204W', external_source = 'openlibrary' WHERE title = 'Come rain or come shine' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/7901303-L.jpg', external_id = '/works/OL362702W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '139'::jsonb) WHERE title = 'The Lamb' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/1858054-L.jpg', external_id = '/works/OL100361W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '268'::jsonb) WHERE title = 'One, None and a Hundred Thousand' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8898517-L.jpg', external_id = '/works/OL19999589W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '160'::jsonb) WHERE title = 'The Argonauts' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL37629452W', external_source = 'openlibrary' WHERE title = 'Thirst' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/11311151-L.jpg', external_id = '/works/OL21913894W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '400'::jsonb) WHERE title = 'Black Buck' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL37578551W', external_source = 'openlibrary' WHERE title = 'Verdigris' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/13343644-L.jpg', external_id = '/works/OL29328658W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '192'::jsonb) WHERE title = 'Mild Vertigo' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10142118-L.jpg', external_id = '/works/OL20835348W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '320'::jsonb) WHERE title = 'Breasts and Eggs' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10622268-L.jpg', external_id = '/works/OL24191776W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '616'::jsonb) WHERE title = 'Out' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/12366237-L.jpg', external_id = '/works/OL21868175W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '53'::jsonb) WHERE title = 'On Earth We''re Briefly Gorgeous' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/13183577-L.jpg', external_id = '/works/OL27774839W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '380'::jsonb) WHERE title = 'Alone With You in Ether' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/14389001-L.jpg', external_id = '/works/OL20054922W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '242'::jsonb) WHERE title = 'Notes of a Crocodile' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10149000-L.jpg', external_id = '/works/OL20840680W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '240'::jsonb) WHERE title = 'Luster' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/9346340-L.jpg', external_id = '/works/OL103194W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '278'::jsonb) WHERE title = 'Something Wicked This Way Comes' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/74366-L.jpg', external_id = '/works/OL29654W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '142'::jsonb) WHERE title = 'In Watermelon Sugar' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10875316-L.jpg', external_id = '/works/OL24350404W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '256'::jsonb) WHERE title = 'Earthlings' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL876674W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '333'::jsonb) WHERE title = 'La chimera' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8084616-L.jpg', external_id = '/works/OL3171082W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '240'::jsonb) WHERE title = 'Hangsaman' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/11964849-L.jpg', external_id = '/works/OL25074549W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '248'::jsonb) WHERE title = 'Rouge Street' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL15500118W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '245'::jsonb) WHERE title = 'Wish Her Safe At Home' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/178097-L.jpg', external_id = '/works/OL496473W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '304'::jsonb) WHERE title = 'Against Interpretation' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/13175019-L.jpg', external_id = '/works/OL21885963W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '69'::jsonb) WHERE title = 'On Women' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/178097-L.jpg', external_id = '/works/OL496473W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '304'::jsonb) WHERE title = 'Notes on ''Camp''' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/6256747-L.jpg', external_id = '/works/OL496469W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '142'::jsonb) WHERE title = 'Regarding the Pain of Others' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/692835-L.jpg', external_id = '/works/OL2970107W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '169'::jsonb) WHERE title = 'Season of Migration to the North' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/14845882-L.jpg', external_id = '/works/OL37625451W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '272'::jsonb) WHERE title = 'Rejection' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/6397580-L.jpg', external_id = '/works/OL39349W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '224'::jsonb) WHERE title = 'Mrs. Dalloway' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/8237041-L.jpg', external_id = '/works/OL176092W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '448'::jsonb) WHERE title = 'The Moonstone' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10115235-L.jpg', external_id = '/works/OL20814234W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '266'::jsonb) WHERE title = 'Almond' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/10254329-L.jpg', external_id = '/works/OL20909969W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '720'::jsonb) WHERE title = 'Antkind' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET external_id = '/works/OL28105021W', external_source = 'openlibrary' WHERE title = 'What I Talk About When I Talk About Running' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://covers.openlibrary.org/b/id/4859963-L.jpg', external_id = '/works/OL1715276W', external_source = 'openlibrary', metadata = jsonb_set(coalesce(metadata, '{}'), '{pages}', '617'::jsonb) WHERE title = 'Life: a Users Manual' AND media_type = 'book' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/06f86509-6f2e-43ec-b89d-93cd77014445/front-250', external_id = '06f86509-6f2e-43ec-b89d-93cd77014445', external_source = 'musicbrainz' WHERE title = 'Abba' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/22aef245-4fc6-3b00-a4a0-fa66710f623b/front-250', external_id = '22aef245-4fc6-3b00-a4a0-fa66710f623b', external_source = 'musicbrainz' WHERE title = 'As the Eternal Cowboy' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/3c9a52ee-ee0a-3362-a563-d9d28b02a53e/front-250', external_id = '3c9a52ee-ee0a-3362-a563-d9d28b02a53e', external_source = 'musicbrainz' WHERE title = 'I''m Still In Love With You' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/915ee873-bffb-410e-94a7-6d1c56cd6b2a/front-250', external_id = '915ee873-bffb-410e-94a7-6d1c56cd6b2a', external_source = 'musicbrainz' WHERE title = 'House of Sugar' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/ad41e5b2-e90f-4a90-8d3c-8f3e86feb812/front-250', external_id = 'ad41e5b2-e90f-4a90-8d3c-8f3e86feb812', external_source = 'musicbrainz' WHERE title = 'Rocket' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/a6a89775-bb53-4115-8a93-ab7bce1c86a1/front-250', external_id = 'a6a89775-bb53-4115-8a93-ab7bce1c86a1', external_source = 'musicbrainz' WHERE title = 'Headlights' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/2dd31104-d13c-4e32-ba53-36cb9c56d55f/front-250', external_id = '2dd31104-d13c-4e32-ba53-36cb9c56d55f', external_source = 'musicbrainz' WHERE title = 'Parrot Flies' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/91e25eef-c159-45ab-9edc-055af7ee0f14/front-250', external_id = '91e25eef-c159-45ab-9edc-055af7ee0f14', external_source = 'musicbrainz' WHERE title = 'American Football' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/05676e4b-65d5-4dc6-aef4-360c36148925/front-250', external_id = '05676e4b-65d5-4dc6-aef4-360c36148925', external_source = 'musicbrainz' WHERE title = 'Only Boundaries' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/fa835452-3506-4f99-b619-297a152d8975/front-250', external_id = 'fa835452-3506-4f99-b619-297a152d8975', external_source = 'musicbrainz' WHERE title = 'Depression Cherry' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/a92f8b5e-76a7-48a8-88d0-17e67f0714c8/front-250', external_id = 'a92f8b5e-76a7-48a8-88d0-17e67f0714c8', external_source = 'musicbrainz' WHERE title = 'Teen Dream' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/10113f41-7dd8-4001-997c-ad9ad68c6cac/front-250', external_id = '10113f41-7dd8-4001-997c-ad9ad68c6cac', external_source = 'musicbrainz' WHERE title = 'S/T 7"' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/4e63cf71-871a-4742-9c71-4c2bd8f77bae/front-250', external_id = '4e63cf71-871a-4742-9c71-4c2bd8f77bae', external_source = 'musicbrainz' WHERE title = 'Crazy For You' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/09b2a55b-4af7-405a-9efa-59578ecc5c4e/front-250', external_id = '09b2a55b-4af7-405a-9efa-59578ecc5c4e', external_source = 'musicbrainz' WHERE title = 'Sittin By the Road' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0c7924e9-7410-4be2-b5c7-a2ac8fafb26d/front-250', external_id = '0c7924e9-7410-4be2-b5c7-a2ac8fafb26d', external_source = 'musicbrainz' WHERE title = '1000 Arms' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/557a1daf-9c19-464a-9009-5fd1833513c6/front-250', external_id = '557a1daf-9c19-464a-9009-5fd1833513c6', external_source = 'musicbrainz' WHERE title = 'Five Days in July' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/1fed2636-41d8-4b65-b377-f33b0bb52238/front-250', external_id = '1fed2636-41d8-4b65-b377-f33b0bb52238', external_source = 'musicbrainz' WHERE title = 'John Wesley Harding' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/68a7fdf4-f589-4e43-aa8a-07f3ad388c3c/front-250', external_id = '68a7fdf4-f589-4e43-aa8a-07f3ad388c3c', external_source = 'musicbrainz' WHERE title = 'Before the Flood' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/dfca4414-20b8-40e0-9f85-f9ef1c7aebbf/front-250', external_id = 'dfca4414-20b8-40e0-9f85-f9ef1c7aebbf', external_source = 'musicbrainz' WHERE title = 'For Emma, Forever Ago' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/616f49f8-b827-46a6-881d-61113272a45a/front-250', external_id = '616f49f8-b827-46a6-881d-61113272a45a', external_source = 'musicbrainz' WHERE title = 'Tender Buttons' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/16c36992-20ce-4ac8-8b79-ee6a18a5a34b/front-250', external_id = '16c36992-20ce-4ac8-8b79-ee6a18a5a34b', external_source = 'musicbrainz' WHERE title = 'Heavy Metal' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/e866a680-e105-48d2-95f1-8c9cb01e5387/front-250', external_id = 'e866a680-e105-48d2-95f1-8c9cb01e5387', external_source = 'musicbrainz' WHERE title = 'Analphabetapolothology' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/bb224bc4-27f8-4b46-9c46-75d13873454e/front-250', external_id = 'bb224bc4-27f8-4b46-9c46-75d13873454e', external_source = 'musicbrainz' WHERE title = 'Teaser and the Firecat' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/e39e6c7d-e33e-4b2f-8feb-2d852cce2bb3/front-250', external_id = 'e39e6c7d-e33e-4b2f-8feb-2d852cce2bb3', external_source = 'musicbrainz' WHERE title = 'Zoo' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/27aa3ef5-e5c3-44a8-81ae-f195723c45eb/front-250', external_id = '27aa3ef5-e5c3-44a8-81ae-f195723c45eb', external_source = 'musicbrainz' WHERE title = 'Mingus Ah Um' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/75498816-b298-4026-86f6-28a86293e245/front-250', external_id = '75498816-b298-4026-86f6-28a86293e245', external_source = 'musicbrainz' WHERE title = 'Young States' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/8ed884d5-e4ae-4939-96cd-9a7df3b6c3f3/front-250', external_id = '8ed884d5-e4ae-4939-96cd-9a7df3b6c3f3', external_source = 'musicbrainz' WHERE title = 'Heaven or Las Vegas' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/19c2eab0-d201-4cc5-9d73-2e936773670c/front-250', external_id = '19c2eab0-d201-4cc5-9d73-2e936773670c', external_source = 'musicbrainz' WHERE title = 'Around the Fur' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/f107d1a3-592e-4124-ab16-5e1672b64fd0/front-250', external_id = 'f107d1a3-592e-4124-ab16-5e1672b64fd0', external_source = 'musicbrainz' WHERE title = 'Milo Gets Bootlegged' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/a5c4aa9d-b58e-3d37-b1bd-6ceb6e825156/front-250', external_id = 'a5c4aa9d-b58e-3d37-b1bd-6ceb6e825156', external_source = 'musicbrainz' WHERE title = 'Milo Goes to College' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/e58a1f95-7a3b-426b-8f21-db9fa2cd2ea5/front-250', external_id = 'e58a1f95-7a3b-426b-8f21-db9fa2cd2ea5', external_source = 'musicbrainz' WHERE title = 'Everything Sucks' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/29f321e8-aa73-4a9d-975a-6066d48be993/front-250', external_id = '29f321e8-aa73-4a9d-975a-6066d48be993', external_source = 'musicbrainz' WHERE title = 'I Don''t Even Care Anymore' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0b4ab5f2-73f0-405f-9add-2330c3a248c1/front-250', external_id = '0b4ab5f2-73f0-405f-9add-2330c3a248c1', external_source = 'musicbrainz' WHERE title = 'Take Care' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/cc53d818-8482-41c2-ae4e-66727757a5a9/front-250', external_id = 'cc53d818-8482-41c2-ae4e-66727757a5a9', external_source = 'musicbrainz' WHERE title = 'What a Time To Be Alive' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/79acc86e-b12b-4a4a-ad7d-7c9f928438a3/front-250', external_id = '79acc86e-b12b-4a4a-ad7d-7c9f928438a3', external_source = 'musicbrainz' WHERE title = 'Stratosphere' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/cf8723c4-1e56-4c3b-9711-ae71ef82ea96/front-250', external_id = 'cf8723c4-1e56-4c3b-9711-ae71ef82ea96', external_source = 'musicbrainz' WHERE title = 'Songs to Learn & Sing' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/ca19daf0-1d0e-4bc4-9972-b2a1dab4356d/front-250', external_id = 'ca19daf0-1d0e-4bc4-9972-b2a1dab4356d', external_source = 'musicbrainz' WHERE title = 'The Earth is Not a Cold Dead Place' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/5942f79a-d972-4f90-bc43-a79016dc608b/front-250', external_id = '5942f79a-d972-4f90-bc43-a79016dc608b', external_source = 'musicbrainz' WHERE title = 'Gospel' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/5f559679-fa96-47e5-9ab6-3ad592530031/front-250', external_id = '5f559679-fa96-47e5-9ab6-3ad592530031', external_source = 'musicbrainz' WHERE title = 'Painting of a Panic Attack' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/206f4eb9-6d74-4725-90f9-d787559479b1/front-250', external_id = '206f4eb9-6d74-4725-90f9-d787559479b1', external_source = 'musicbrainz' WHERE title = 'Fugazi' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0bf006ce-45a5-4963-89cb-cd285fd768bb/front-250', external_id = '0bf006ce-45a5-4963-89cb-cd285fd768bb', external_source = 'musicbrainz' WHERE title = 'Getting Killed' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/8af4a13b-6719-4663-a41b-fe7f47fda5e8/front-250', external_id = '8af4a13b-6719-4663-a41b-fe7f47fda5e8', external_source = 'musicbrainz' WHERE title = 'Rationale' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/f77eeaef-878e-4db3-ae65-5161cf929f14/front-250', external_id = 'f77eeaef-878e-4db3-ae65-5161cf929f14', external_source = 'musicbrainz' WHERE title = 'Lift your Skinny Fists Like Antennas to Heaven' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/1fca5e6c-add2-4099-891f-dc235a02f0e9/front-250', external_id = '1fca5e6c-add2-4099-891f-dc235a02f0e9', external_source = 'musicbrainz' WHERE title = 'Cold on the Shoulder' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/393605e7-f8b3-4dd7-8951-e647ed0e2b63/front-250', external_id = '393605e7-f8b3-4dd7-8951-e647ed0e2b63', external_source = 'musicbrainz' WHERE title = 'Visions' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/f07ce522-ec49-4e46-bc1f-8f9482a0cc08/front-250', external_id = 'f07ce522-ec49-4e46-bc1f-8f9482a0cc08', external_source = 'musicbrainz' WHERE title = 'Don''t Bite Your Tongue' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/f4a02afb-ea62-40b5-a978-ebec46451d1d/front-250', external_id = 'f4a02afb-ea62-40b5-a978-ebec46451d1d', external_source = 'musicbrainz' WHERE title = '10.17.09' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/cf57c3e0-4298-4d2d-baa8-569ae8c74d20/front-250', external_id = 'cf57c3e0-4298-4d2d-baa8-569ae8c74d20', external_source = 'musicbrainz' WHERE title = 'Horse Jumper of Love' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/42716f0f-1431-41f4-905c-d576a644dc5d/front-250', external_id = '42716f0f-1431-41f4-905c-d576a644dc5d', external_source = 'musicbrainz' WHERE title = 'Turn On The Bright Lights' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/7586f269-cefc-4977-a7a1-a977bfab3a10/front-250', external_id = '7586f269-cefc-4977-a7a1-a977bfab3a10', external_source = 'musicbrainz' WHERE title = '2014 Forest Hills Drive' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/b5d33ae3-685e-4baa-b272-a98688534344/front-250', external_id = 'b5d33ae3-685e-4baa-b272-a98688534344', external_source = 'musicbrainz' WHERE title = 'Donuts' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/347307d0-5018-46e2-a7df-b7884feb3ec7/front-250', external_id = '347307d0-5018-46e2-a7df-b7884feb3ec7', external_source = 'musicbrainz' WHERE title = 'You Had to Be There' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/dc97685b-48e7-4b06-9dcf-bd5236d22700/front-250', external_id = 'dc97685b-48e7-4b06-9dcf-bd5236d22700', external_source = 'musicbrainz' WHERE title = 'Back Home Again' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/757c8c92-bf78-4340-ae6c-d5af8ed89e8d/front-250', external_id = '757c8c92-bf78-4340-ae6c-d5af8ed89e8d', external_source = 'musicbrainz' WHERE title = 'At Folsom Prison' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/07d3a141-432b-4eb1-98de-9f8d3b784f54/front-250', external_id = '07d3a141-432b-4eb1-98de-9f8d3b784f54', external_source = 'musicbrainz' WHERE title = 'Christmas' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/8666f5b9-99f1-39a9-a0e9-65a727b4cc90/front-250', external_id = '8666f5b9-99f1-39a9-a0e9-65a727b4cc90', external_source = 'musicbrainz' WHERE title = 'Unknown Pleasures' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/14652476-4bb0-4ed4-bdf1-79b8d31bcf6a/front-250', external_id = '14652476-4bb0-4ed4-bdf1-79b8d31bcf6a', external_source = 'musicbrainz' WHERE title = 'Joyce Manor' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/2265cf9d-3d1f-4e10-ac5d-d21d217ed7b6/front-250', external_id = '2265cf9d-3d1f-4e10-ac5d-d21d217ed7b6', external_source = 'musicbrainz' WHERE title = 'My Beautiful Dark Twisted Fantasy' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/71983130-605d-4dfe-93b5-c66c8dfe8a11/front-250', external_id = '71983130-605d-4dfe-93b5-c66c8dfe8a11', external_source = 'musicbrainz' WHERE title = 'Instigator' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/bc352368-abfd-4028-85a5-dcef7a554a60/front-250', external_id = 'bc352368-abfd-4028-85a5-dcef7a554a60', external_source = 'musicbrainz' WHERE title = 'Wildlife' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/691d925b-917e-4d4c-8c10-d69343760973/front-250', external_id = '691d925b-917e-4d4c-8c10-d69343760973', external_source = 'musicbrainz' WHERE title = 'Never Come Undone' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/90ad5a1e-2142-3d58-9b81-c4d1a198d3d9/front-250', external_id = '90ad5a1e-2142-3d58-9b81-c4d1a198d3d9', external_source = 'musicbrainz' WHERE title = 'New Skin for the Old Ceremony' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/4b753767-eaf1-44d8-9ad3-6748600e64c8/front-250', external_id = '4b753767-eaf1-44d8-9ad3-6748600e64c8', external_source = 'musicbrainz' WHERE title = 'Hurry Up, We''re Dreaming' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/236ea568-b879-421d-8b98-38cc88f800f8/front-250', external_id = '236ea568-b879-421d-8b98-38cc88f800f8', external_source = 'musicbrainz' WHERE title = 'Part and Parcel' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/8b2ab52f-c0af-42ef-8e33-25530e4c5974/front-250', external_id = '8b2ab52f-c0af-42ef-8e33-25530e4c5974', external_source = 'musicbrainz' WHERE title = 'End Measured Mile' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/cdd6b93c-9d37-498d-9550-fccc1435d2a4/front-250', external_id = 'cdd6b93c-9d37-498d-9550-fccc1435d2a4', external_source = 'musicbrainz' WHERE title = 'Everything You Ever Loved' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/39773a74-7526-48d1-929d-e53a30c41188/front-250', external_id = '39773a74-7526-48d1-929d-e53a30c41188', external_source = 'musicbrainz' WHERE title = 'Real Talk' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/265650e9-43b7-4edd-91c3-508f0bb2b6f5/front-250', external_id = '265650e9-43b7-4edd-91c3-508f0bb2b6f5', external_source = 'musicbrainz' WHERE title = 'Man Overboard' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/ea5a1d08-1ead-44e1-9ce8-e4945049afbe/front-250', external_id = 'ea5a1d08-1ead-44e1-9ce8-e4945049afbe', external_source = 'musicbrainz' WHERE title = 'Christmas Songs' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/e3ac89c6-837b-4f12-9735-c9824a450f5a/front-250', external_id = 'e3ac89c6-837b-4f12-9735-c9824a450f5a', external_source = 'musicbrainz' WHERE title = 'The Land is Inhospitable And So Are We' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/784c578b-d018-4020-950c-e9a1c6dd6f08/front-250', external_id = '784c578b-d018-4020-950c-e9a1c6dd6f08', external_source = 'musicbrainz' WHERE title = 'Manning Fireworks' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/150d5714-87a9-42ad-9a9c-824dd5e3035a/front-250', external_id = '150d5714-87a9-42ad-9a9c-824dd5e3035a', external_source = 'musicbrainz' WHERE title = 'You''re Gonna Miss it All' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/5fc4b729-2396-3723-a6f0-01c58f2af1f4/front-250', external_id = '5fc4b729-2396-3723-a6f0-01c58f2af1f4', external_source = 'musicbrainz' WHERE title = 'Good News for People Who Love Bad News' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/beb1debc-0b30-48c7-8633-1afcdbb317df/front-250', external_id = 'beb1debc-0b30-48c7-8633-1afcdbb317df', external_source = 'musicbrainz' WHERE title = 'We Were Dead Before the Ship Even Sank' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/39fe95eb-d883-4d21-909e-19ef0ecfaa40/front-250', external_id = '39fe95eb-d883-4d21-909e-19ef0ecfaa40', external_source = 'musicbrainz' WHERE title = 'Love at the Greek' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/1ddfb715-1f12-3ce7-bf7d-b4d0d90b10db/front-250', external_id = '1ddfb715-1f12-3ce7-bf7d-b4d0d90b10db', external_source = 'musicbrainz' WHERE title = 'Hawks & Doves' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/d52b455d-3d81-4a89-9422-401c35d42942/front-250', external_id = 'd52b455d-3d81-4a89-9422-401c35d42942', external_source = 'musicbrainz' WHERE title = 'Sings the Blues' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/8631005a-2d76-43bd-9002-e077f01ca23f/front-250', external_id = '8631005a-2d76-43bd-9002-e077f01ca23f', external_source = 'musicbrainz' WHERE title = 'Pastel Blues' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/09572d67-e890-4133-a843-08c42dd68928/front-250', external_id = '09572d67-e890-4133-a843-08c42dd68928', external_source = 'musicbrainz' WHERE title = 'Xanadu 7" (Japanese)' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/f79909d4-3bec-4a11-b426-7a6bc6f2dd91/front-250', external_id = 'f79909d4-3bec-4a11-b426-7a6bc6f2dd91', external_source = 'musicbrainz' WHERE title = 'Otis Redding Sings Soul' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/40652ffa-678d-4f4f-9c9a-b32cb453fe92/front-250', external_id = '40652ffa-678d-4f4f-9c9a-b32cb453fe92', external_source = 'musicbrainz' WHERE title = 'Am' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/410dedc0-b6b8-4de3-80b1-a32b2e4669e7/front-250', external_id = '410dedc0-b6b8-4de3-80b1-a32b2e4669e7', external_source = 'musicbrainz' WHERE title = 'Tru' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/b30312b4-9a2f-47dd-898e-4707fec250d4/front-250', external_id = 'b30312b4-9a2f-47dd-898e-4707fec250d4', external_source = 'musicbrainz' WHERE title = 'Ghost Town' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/15f9482e-a4dc-3ac4-9f85-dbfc22d395b1/front-250', external_id = '15f9482e-a4dc-3ac4-9f85-dbfc22d395b1', external_source = 'musicbrainz' WHERE title = 'Old Pride' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0d1ccbc2-3677-4754-be7d-b648e7194726/front-250', external_id = '0d1ccbc2-3677-4754-be7d-b648e7194726', external_source = 'musicbrainz' WHERE title = 'Magic Isn''t Real' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/384f9e7a-b369-4ef3-93ed-68acaf382bec/front-250', external_id = '384f9e7a-b369-4ef3-93ed-68acaf382bec', external_source = 'musicbrainz' WHERE title = 'Amperland, NY' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/48238c1f-9a0f-477d-956a-f40ed727a6ab/front-250', external_id = '48238c1f-9a0f-477d-956a-f40ed727a6ab', external_source = 'musicbrainz' WHERE title = 'Cardinal' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/3a037139-95ba-458f-a662-ae5f6b17c1c6/front-250', external_id = '3a037139-95ba-458f-a662-ae5f6b17c1c6', external_source = 'musicbrainz' WHERE title = 'Atom Heart Mother' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/37ec9aeb-9d75-49b0-b537-bb3c1e173908/front-250', external_id = '37ec9aeb-9d75-49b0-b537-bb3c1e173908', external_source = 'musicbrainz' WHERE title = 'Feast of Love' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/48386ca7-98b7-4f21-97b5-e942310012fb/front-250', external_id = '48386ca7-98b7-4f21-97b5-e942310012fb', external_source = 'musicbrainz' WHERE title = 'Doolittle' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/29a14c78-74ad-44d0-9d51-1613701248cb/front-250', external_id = '29a14c78-74ad-44d0-9d51-1613701248cb', external_source = 'musicbrainz' WHERE title = 'Dummy' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/e9c991e2-2b60-4166-8fd1-875a0ab94613/front-250', external_id = 'e9c991e2-2b60-4166-8fd1-875a0ab94613', external_source = 'musicbrainz' WHERE title = 'Evil Empire' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/a898aa0f-c949-4945-9eec-c6bfdae0c43a/front-250', external_id = 'a898aa0f-c949-4945-9eec-c6bfdae0c43a', external_source = 'musicbrainz' WHERE title = 'Double Booked' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/92a6ec22-8838-46fa-b559-2c376772fe3c/front-250', external_id = '92a6ec22-8838-46fa-b559-2c376772fe3c', external_source = 'musicbrainz' WHERE title = 'Live at the Harlem Square Club' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/80cf0227-b96a-491c-9097-84c55d18f050/front-250', external_id = '80cf0227-b96a-491c-9097-84c55d18f050', external_source = 'musicbrainz' WHERE title = 'Winter Forever' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/c0464441-6494-4156-b110-dcc751b48b93/front-250', external_id = 'c0464441-6494-4156-b110-dcc751b48b93', external_source = 'musicbrainz' WHERE title = 'Reverie Lagoon' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/d44a4860-fa76-4418-b104-fedf7c7eb211/front-250', external_id = 'd44a4860-fa76-4418-b104-fedf7c7eb211', external_source = 'musicbrainz' WHERE title = 'Ghost' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0b1d5f0b-4ee8-42f7-abd1-e76641984c69/front-250', external_id = '0b1d5f0b-4ee8-42f7-abd1-e76641984c69', external_source = 'musicbrainz' WHERE title = 'Safe and Also No Fear' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/07d02411-6722-4071-8130-14fb8512288a/front-250', external_id = '07d02411-6722-4071-8130-14fb8512288a', external_source = 'musicbrainz' WHERE title = 'Souvlaki' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/7c776293-94e7-4b7d-bcd8-ead79eae4f5d/front-250', external_id = '7c776293-94e7-4b7d-bcd8-ead79eae4f5d', external_source = 'musicbrainz' WHERE title = 'Goo' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/20b504ea-f27d-4df1-abcc-c220bdc1b3d3/front-250', external_id = '20b504ea-f27d-4df1-abcc-c220bdc1b3d3', external_source = 'musicbrainz' WHERE title = 'Little Creatures' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/5a5adc9b-48d8-4b3b-b929-e45b86f19763/front-250', external_id = '5a5adc9b-48d8-4b3b-b929-e45b86f19763', external_source = 'musicbrainz' WHERE title = 'Folklore' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/db3af63e-64e1-415a-a15c-3c324ced28c2/front-250', external_id = 'db3af63e-64e1-415a-a15c-3c324ced28c2', external_source = 'musicbrainz' WHERE title = 'Songs from the Big Chair' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/68aa7660-c196-3dea-9bce-a833ddc9fc11/front-250', external_id = '68aa7660-c196-3dea-9bce-a833ddc9fc11', external_source = 'musicbrainz' WHERE title = 'Hospice' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/060d5f70-1d1c-474f-ae71-7237cb286f89/front-250', external_id = '060d5f70-1d1c-474f-ae71-7237cb286f89', external_source = 'musicbrainz' WHERE title = 'The Soft Parade' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/64026228-12c3-4532-b220-4da206ce02bd/front-250', external_id = '64026228-12c3-4532-b220-4da206ce02bd', external_source = 'musicbrainz' WHERE title = 'Strange Days' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/9e5f8261-6513-4a90-91c9-76c0562a27f5/front-250', external_id = '9e5f8261-6513-4a90-91c9-76c0562a27f5', external_source = 'musicbrainz' WHERE title = 'The Front Bottoms' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/962009fb-c141-4ac8-b182-2c32b4da4ab2/front-250', external_id = '962009fb-c141-4ac8-b182-2c32b4da4ab2', external_source = 'musicbrainz' WHERE title = 'Talon of the Hawk' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/c06f0039-80ea-422f-bf61-8f875c34b9be/front-250', external_id = 'c06f0039-80ea-422f-bf61-8f875c34b9be', external_source = 'musicbrainz' WHERE title = 'Emily''s Song 7" (Japanese)' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/24de57ce-0dde-4a7e-9ff0-f7574be5d0a4/front-250', external_id = '24de57ce-0dde-4a7e-9ff0-f7574be5d0a4', external_source = 'musicbrainz' WHERE title = 'A Light for Attracting Attention' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/fd0da5e1-fbb4-3a6c-a575-929b78a272c3/front-250', external_id = 'fd0da5e1-fbb4-3a6c-a575-929b78a272c3', external_source = 'musicbrainz' WHERE title = 'The Queen is Dead' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/34a7e034-74bb-37a5-9516-519515a75de4/front-250', external_id = '34a7e034-74bb-37a5-9516-519515a75de4', external_source = 'musicbrainz' WHERE title = 'Strangeways, Here we Come' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0299e566-f951-440f-bb63-8d6608aff482/front-250', external_id = '0299e566-f951-440f-bb63-8d6608aff482', external_source = 'musicbrainz' WHERE title = 'The Smiths' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/9f37f4aa-603b-4a78-8aae-59f1e3a284e0/front-250', external_id = '9f37f4aa-603b-4a78-8aae-59f1e3a284e0', external_source = 'musicbrainz' WHERE title = 'Meat is Murder' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/a7f1c633-984a-46cb-b1bb-6c437b25219b/front-250', external_id = 'a7f1c633-984a-46cb-b1bb-6c437b25219b', external_source = 'musicbrainz' WHERE title = 'Under Soil & Dirt' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/6f347a07-47fb-4514-a75d-dfff8edad567/front-250', external_id = '6f347a07-47fb-4514-a75d-dfff8edad567', external_source = 'musicbrainz' WHERE title = 'The Upsides' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/f71f23a2-118d-4fa1-b941-18d6d10414d3/front-250', external_id = 'f71f23a2-118d-4fa1-b941-18d6d10414d3', external_source = 'musicbrainz' WHERE title = 'Wont Be Pathetic Forever 7"' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/201e04c4-64e1-4b3b-9358-4124e83ac3a3/front-250', external_id = '201e04c4-64e1-4b3b-9358-4124e83ac3a3', external_source = 'musicbrainz' WHERE title = 'Whenever, If Ever' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/5c5f8e18-52be-40fd-9a56-c02dde03aca2/front-250', external_id = '5c5f8e18-52be-40fd-9a56-c02dde03aca2', external_source = 'musicbrainz' WHERE title = 'Floral Green' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/9fc4104a-87c7-455a-a444-1baf30fc4910/front-250', external_id = '9fc4104a-87c7-455a-a444-1baf30fc4910', external_source = 'musicbrainz' WHERE title = 'Shed' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/7a12c5fb-8993-47a0-b987-c30348cd5a9d/front-250', external_id = '7a12c5fb-8993-47a0-b987-c30348cd5a9d', external_source = 'musicbrainz' WHERE title = 'Flood of 72' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/c4d0c8c9-d89c-4195-9a95-92b778ed7f94/front-250', external_id = 'c4d0c8c9-d89c-4195-9a95-92b778ed7f94', external_source = 'musicbrainz' WHERE title = 'Parting The Sea Between Brightness And Me' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0500c425-43b8-3913-bcb5-e4855a11263f/front-250', external_id = '0500c425-43b8-3913-bcb5-e4855a11263f', external_source = 'musicbrainz' WHERE title = 'For the Sake of the Song' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/2275c414-1fbb-44f5-b2b9-e072d2199fbc/front-250', external_id = '2275c414-1fbb-44f5-b2b9-e072d2199fbc', external_source = 'musicbrainz' WHERE title = 'Listen & Forgive' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/a5b033ff-b0c9-4bc0-bc80-29b8135a6a0c/front-250', external_id = 'a5b033ff-b0c9-4bc0-bc80-29b8135a6a0c', external_source = 'musicbrainz' WHERE title = 'Turnover' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/dc32e7b2-a1d6-4486-994c-90dee42229b7/front-250', external_id = 'dc32e7b2-a1d6-4486-994c-90dee42229b7', external_source = 'musicbrainz' WHERE title = 'Goodbye Bread' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/005b018b-d052-409f-a68b-ddbae76a79f2/front-250', external_id = '005b018b-d052-409f-a68b-ddbae76a79f2', external_source = 'musicbrainz' WHERE title = 'Goblin' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/16ecb3df-ca1e-4dbd-85f2-85651d4e354c/front-250', external_id = '16ecb3df-ca1e-4dbd-85f2-85651d4e354c', external_source = 'musicbrainz' WHERE title = 'Purgatory' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/741453f9-1054-4588-9022-0766ddc81eb9/front-250', external_id = '741453f9-1054-4588-9022-0766ddc81eb9', external_source = 'musicbrainz' WHERE title = 'The Glamour Kills Tour' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/7192f6e1-ceee-418c-b8d0-7c99b01c44e7/front-250', external_id = '7192f6e1-ceee-418c-b8d0-7c99b01c44e7', external_source = 'musicbrainz' WHERE title = 'Charlie Brown Christmas' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/65bd7024-83df-4f1b-8085-8c79682d9634/front-250', external_id = '65bd7024-83df-4f1b-8085-8c79682d9634', external_source = 'musicbrainz' WHERE title = 'Vince Staples' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/9afa664c-9829-43d9-89fd-ce698e6f9068/front-250', external_id = '9afa664c-9829-43d9-89fd-ce698e6f9068', external_source = 'musicbrainz' WHERE title = 'Violent Femmes' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/ba849c09-1dee-3b6a-b994-7f04d0934eb0/front-250', external_id = 'ba849c09-1dee-3b6a-b994-7f04d0934eb0', external_source = 'musicbrainz' WHERE title = 'Wavvves' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/3c7aa11b-cfb1-4548-aee3-638285c19816/front-250', external_id = '3c7aa11b-cfb1-4548-aee3-638285c19816', external_source = 'musicbrainz' WHERE title = 'King of the Beach' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/b077a894-6632-481c-9e71-f2b1081def3d/front-250', external_id = 'b077a894-6632-481c-9e71-f2b1081def3d', external_source = 'musicbrainz' WHERE title = 'Pinkerton' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/085ee648-b9bb-4f51-a049-71f18c3c36ec/front-250', external_id = '085ee648-b9bb-4f51-a049-71f18c3c36ec', external_source = 'musicbrainz' WHERE title = 'Being There' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/a0778e98-0dc2-4913-8860-02150234df52/front-250', external_id = 'a0778e98-0dc2-4913-8860-02150234df52', external_source = 'musicbrainz' WHERE title = 'The Music of Twin Peaks' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/51b31eba-ee31-4ab0-9f58-7d83364983d1/front-250', external_id = '51b31eba-ee31-4ab0-9f58-7d83364983d1', external_source = 'musicbrainz' WHERE title = 'American Heartbreak' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/2f80d6be-175d-46aa-aaf9-0d9499c68e38/front-250', external_id = '2f80d6be-175d-46aa-aaf9-0d9499c68e38', external_source = 'musicbrainz' WHERE title = 'Deann' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/cf4b363b-3000-4fae-9c58-4131a1769ddb/front-250', external_id = 'cf4b363b-3000-4fae-9c58-4131a1769ddb', external_source = 'musicbrainz' WHERE title = 'Summertime Blues' AND media_type = 'record' AND external_id IS NULL;
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
END;
$$;