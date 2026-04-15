-- Fix record covers (verified working)
DO $$
BEGIN
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/ee9a2121-4a07-4539-b267-6b641dd64def/front-250', external_id = 'ee9a2121-4a07-4539-b267-6b641dd64def', external_source = 'musicbrainz' WHERE title = 'Abba' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/22aef245-4fc6-3b00-a4a0-fa66710f623b/front-250', external_id = '22aef245-4fc6-3b00-a4a0-fa66710f623b', external_source = 'musicbrainz' WHERE title = 'As the Eternal Cowboy' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/3c9a52ee-ee0a-3362-a563-d9d28b02a53e/front-250', external_id = '3c9a52ee-ee0a-3362-a563-d9d28b02a53e', external_source = 'musicbrainz' WHERE title = 'I''m Still In Love With You' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/ad0cce86-94e1-4369-93a3-fd5448f209d9/front-250', external_id = 'ad0cce86-94e1-4369-93a3-fd5448f209d9', external_source = 'musicbrainz' WHERE title = 'House of Sugar' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/af9059bd-0180-4ddb-a927-19b6830a6b1a/front-250', external_id = 'af9059bd-0180-4ddb-a927-19b6830a6b1a', external_source = 'musicbrainz' WHERE title = 'Rocket' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0143d277-37ec-49ee-bf98-9ab0bdb6031f/front-250', external_id = '0143d277-37ec-49ee-bf98-9ab0bdb6031f', external_source = 'musicbrainz' WHERE title = 'Headlights' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/c3c69029-ab04-44a3-88f6-2da08999955a/front-250', external_id = 'c3c69029-ab04-44a3-88f6-2da08999955a', external_source = 'musicbrainz' WHERE title = 'Parrot Flies' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/91e25eef-c159-45ab-9edc-055af7ee0f14/front-250', external_id = '91e25eef-c159-45ab-9edc-055af7ee0f14', external_source = 'musicbrainz' WHERE title = 'American Football' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/05676e4b-65d5-4dc6-aef4-360c36148925/front-250', external_id = '05676e4b-65d5-4dc6-aef4-360c36148925', external_source = 'musicbrainz' WHERE title = 'Only Boundaries' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/927119cb-39cd-423e-86d8-301c127569e9/front-250', external_id = '927119cb-39cd-423e-86d8-301c127569e9', external_source = 'musicbrainz' WHERE title = 'Depression Cherry' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/a92f8b5e-76a7-48a8-88d0-17e67f0714c8/front-250', external_id = 'a92f8b5e-76a7-48a8-88d0-17e67f0714c8', external_source = 'musicbrainz' WHERE title = 'Teen Dream' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/10113f41-7dd8-4001-997c-ad9ad68c6cac/front-250', external_id = '10113f41-7dd8-4001-997c-ad9ad68c6cac', external_source = 'musicbrainz' WHERE title = 'S/T 7"' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/91b04214-55b5-4cfb-b8ad-9686f1b7a9e0/front-250', external_id = '91b04214-55b5-4cfb-b8ad-9686f1b7a9e0', external_source = 'musicbrainz' WHERE title = 'Crazy For You' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/09b2a55b-4af7-405a-9efa-59578ecc5c4e/front-250', external_id = '09b2a55b-4af7-405a-9efa-59578ecc5c4e', external_source = 'musicbrainz' WHERE title = 'Sittin By the Road' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0c7924e9-7410-4be2-b5c7-a2ac8fafb26d/front-250', external_id = '0c7924e9-7410-4be2-b5c7-a2ac8fafb26d', external_source = 'musicbrainz' WHERE title = '1000 Arms' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/557a1daf-9c19-464a-9009-5fd1833513c6/front-250', external_id = '557a1daf-9c19-464a-9009-5fd1833513c6', external_source = 'musicbrainz' WHERE title = 'Five Days in July' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/1fed2636-41d8-4b65-b377-f33b0bb52238/front-250', external_id = '1fed2636-41d8-4b65-b377-f33b0bb52238', external_source = 'musicbrainz' WHERE title = 'John Wesley Harding' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/68a7fdf4-f589-4e43-aa8a-07f3ad388c3c/front-250', external_id = '68a7fdf4-f589-4e43-aa8a-07f3ad388c3c', external_source = 'musicbrainz' WHERE title = 'Before the Flood' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/f2d4a53b-0612-48e2-a09c-02489ae27a51/front-250', external_id = 'f2d4a53b-0612-48e2-a09c-02489ae27a51', external_source = 'musicbrainz' WHERE title = 'For Emma, Forever Ago' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/111349e0-5427-4dfb-b419-e2e689861ebf/front-250', external_id = '111349e0-5427-4dfb-b419-e2e689861ebf', external_source = 'musicbrainz' WHERE title = 'Tender Buttons' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/16c36992-20ce-4ac8-8b79-ee6a18a5a34b/front-250', external_id = '16c36992-20ce-4ac8-8b79-ee6a18a5a34b', external_source = 'musicbrainz' WHERE title = 'Heavy Metal' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/e866a680-e105-48d2-95f1-8c9cb01e5387/front-250', external_id = 'e866a680-e105-48d2-95f1-8c9cb01e5387', external_source = 'musicbrainz' WHERE title = 'Analphabetapolothology' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/b06353fe-2a8c-4464-b546-d7216081ccb8/front-250', external_id = 'b06353fe-2a8c-4464-b546-d7216081ccb8', external_source = 'musicbrainz' WHERE title = 'Teaser and the Firecat' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/e39e6c7d-e33e-4b2f-8feb-2d852cce2bb3/front-250', external_id = 'e39e6c7d-e33e-4b2f-8feb-2d852cce2bb3', external_source = 'musicbrainz' WHERE title = 'Zoo' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/1ad56ce0-3c9a-4764-915d-e80a20cca2b1/front-250', external_id = '1ad56ce0-3c9a-4764-915d-e80a20cca2b1', external_source = 'musicbrainz' WHERE title = 'Mingus Ah Um' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/d25628c4-b7e1-4fa8-8370-4ca15698063c/front-250', external_id = 'd25628c4-b7e1-4fa8-8370-4ca15698063c', external_source = 'musicbrainz' WHERE title = 'Young States' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/f96df5d2-4ef9-3ef4-a4be-c743802b6f1e/front-250', external_id = 'f96df5d2-4ef9-3ef4-a4be-c743802b6f1e', external_source = 'musicbrainz' WHERE title = 'Heaven or Las Vegas' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/19c2eab0-d201-4cc5-9d73-2e936773670c/front-250', external_id = '19c2eab0-d201-4cc5-9d73-2e936773670c', external_source = 'musicbrainz' WHERE title = 'Around the Fur' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/a5c4aa9d-b58e-3d37-b1bd-6ceb6e825156/front-250', external_id = 'a5c4aa9d-b58e-3d37-b1bd-6ceb6e825156', external_source = 'musicbrainz' WHERE title = 'Milo Goes to College' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/bc86ffe8-ff63-393e-a2af-cce43ff1034c/front-250', external_id = 'bc86ffe8-ff63-393e-a2af-cce43ff1034c', external_source = 'musicbrainz' WHERE title = 'Everything Sucks' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/253d47bf-60d1-43ee-81fa-0488713bb3df/front-250', external_id = '253d47bf-60d1-43ee-81fa-0488713bb3df', external_source = 'musicbrainz' WHERE title = 'I Don''t Even Care Anymore' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0b4ab5f2-73f0-405f-9add-2330c3a248c1/front-250', external_id = '0b4ab5f2-73f0-405f-9add-2330c3a248c1', external_source = 'musicbrainz' WHERE title = 'Take Care' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/cc53d818-8482-41c2-ae4e-66727757a5a9/front-250', external_id = 'cc53d818-8482-41c2-ae4e-66727757a5a9', external_source = 'musicbrainz' WHERE title = 'What a Time To Be Alive' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/79acc86e-b12b-4a4a-ad7d-7c9f928438a3/front-250', external_id = '79acc86e-b12b-4a4a-ad7d-7c9f928438a3', external_source = 'musicbrainz' WHERE title = 'Stratosphere' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/3589f3cb-7b99-4fac-9780-ad7ebac5d0c2/front-250', external_id = '3589f3cb-7b99-4fac-9780-ad7ebac5d0c2', external_source = 'musicbrainz' WHERE title = 'Songs to Learn & Sing' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/ca19daf0-1d0e-4bc4-9972-b2a1dab4356d/front-250', external_id = 'ca19daf0-1d0e-4bc4-9972-b2a1dab4356d', external_source = 'musicbrainz' WHERE title = 'The Earth is Not a Cold Dead Place' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/5942f79a-d972-4f90-bc43-a79016dc608b/front-250', external_id = '5942f79a-d972-4f90-bc43-a79016dc608b', external_source = 'musicbrainz' WHERE title = 'Gospel' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/5f559679-fa96-47e5-9ab6-3ad592530031/front-250', external_id = '5f559679-fa96-47e5-9ab6-3ad592530031', external_source = 'musicbrainz' WHERE title = 'Painting of a Panic Attack' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/206f4eb9-6d74-4725-90f9-d787559479b1/front-250', external_id = '206f4eb9-6d74-4725-90f9-d787559479b1', external_source = 'musicbrainz' WHERE title = 'Fugazi' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/2b637090-036e-4f86-8183-e1be856e1421/front-250', external_id = '2b637090-036e-4f86-8183-e1be856e1421', external_source = 'musicbrainz' WHERE title = 'Getting Killed' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/8af4a13b-6719-4663-a41b-fe7f47fda5e8/front-250', external_id = '8af4a13b-6719-4663-a41b-fe7f47fda5e8', external_source = 'musicbrainz' WHERE title = 'Rationale' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/f77eeaef-878e-4db3-ae65-5161cf929f14/front-250', external_id = 'f77eeaef-878e-4db3-ae65-5161cf929f14', external_source = 'musicbrainz' WHERE title = 'Lift your Skinny Fists Like Antennas to Heaven' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/1fca5e6c-add2-4099-891f-dc235a02f0e9/front-250', external_id = '1fca5e6c-add2-4099-891f-dc235a02f0e9', external_source = 'musicbrainz' WHERE title = 'Cold on the Shoulder' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/393605e7-f8b3-4dd7-8951-e647ed0e2b63/front-250', external_id = '393605e7-f8b3-4dd7-8951-e647ed0e2b63', external_source = 'musicbrainz' WHERE title = 'Visions' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/f07ce522-ec49-4e46-bc1f-8f9482a0cc08/front-250', external_id = 'f07ce522-ec49-4e46-bc1f-8f9482a0cc08', external_source = 'musicbrainz' WHERE title = 'Don''t Bite Your Tongue' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/f4a02afb-ea62-40b5-a978-ebec46451d1d/front-250', external_id = 'f4a02afb-ea62-40b5-a978-ebec46451d1d', external_source = 'musicbrainz' WHERE title = '10.17.09' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/cf57c3e0-4298-4d2d-baa8-569ae8c74d20/front-250', external_id = 'cf57c3e0-4298-4d2d-baa8-569ae8c74d20', external_source = 'musicbrainz' WHERE title = 'Horse Jumper of Love' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/43e4c7b8-5374-464a-bde2-0b78717173b5/front-250', external_id = '43e4c7b8-5374-464a-bde2-0b78717173b5', external_source = 'musicbrainz' WHERE title = 'Turn On The Bright Lights' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/7586f269-cefc-4977-a7a1-a977bfab3a10/front-250', external_id = '7586f269-cefc-4977-a7a1-a977bfab3a10', external_source = 'musicbrainz' WHERE title = '2014 Forest Hills Drive' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/6b936443-92d5-4177-af1f-2db55eccedf9/front-250', external_id = '6b936443-92d5-4177-af1f-2db55eccedf9', external_source = 'musicbrainz' WHERE title = 'Donuts' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/347307d0-5018-46e2-a7df-b7884feb3ec7/front-250', external_id = '347307d0-5018-46e2-a7df-b7884feb3ec7', external_source = 'musicbrainz' WHERE title = 'You Had to Be There' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/e79d65f3-e9a3-450a-9200-359878462d48/front-250', external_id = 'e79d65f3-e9a3-450a-9200-359878462d48', external_source = 'musicbrainz' WHERE title = 'Back Home Again' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/45647913-b279-4118-8ff4-ae3420437c66/front-250', external_id = '45647913-b279-4118-8ff4-ae3420437c66', external_source = 'musicbrainz' WHERE title = 'At Folsom Prison' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/21154471-bfa2-483d-a68e-6e42f5f0b3b4/front-250', external_id = '21154471-bfa2-483d-a68e-6e42f5f0b3b4', external_source = 'musicbrainz' WHERE title = 'Christmas' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/d2f506bb-cfb5-327e-b8d6-cf4036c77cfa/front-250', external_id = 'd2f506bb-cfb5-327e-b8d6-cf4036c77cfa', external_source = 'musicbrainz' WHERE title = 'Unknown Pleasures' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/14652476-4bb0-4ed4-bdf1-79b8d31bcf6a/front-250', external_id = '14652476-4bb0-4ed4-bdf1-79b8d31bcf6a', external_source = 'musicbrainz' WHERE title = 'Joyce Manor' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/26b017c9-5506-4117-8667-ea981282bab0/front-250', external_id = '26b017c9-5506-4117-8667-ea981282bab0', external_source = 'musicbrainz' WHERE title = 'My Beautiful Dark Twisted Fantasy' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/1e3d1875-c722-463e-ad49-1d14684f1a74/front-250', external_id = '1e3d1875-c722-463e-ad49-1d14684f1a74', external_source = 'musicbrainz' WHERE title = 'Instigator' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/db01945e-9945-4166-8e89-62daeac038c5/front-250', external_id = 'db01945e-9945-4166-8e89-62daeac038c5', external_source = 'musicbrainz' WHERE title = 'Wildlife' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/691d925b-917e-4d4c-8c10-d69343760973/front-250', external_id = '691d925b-917e-4d4c-8c10-d69343760973', external_source = 'musicbrainz' WHERE title = 'Never Come Undone' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/90ad5a1e-2142-3d58-9b81-c4d1a198d3d9/front-250', external_id = '90ad5a1e-2142-3d58-9b81-c4d1a198d3d9', external_source = 'musicbrainz' WHERE title = 'New Skin for the Old Ceremony' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/7bde711e-1455-4352-b53d-d87d1e0b6b69/front-250', external_id = '7bde711e-1455-4352-b53d-d87d1e0b6b69', external_source = 'musicbrainz' WHERE title = 'Hurry Up, We''re Dreaming' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/6e188fb7-461a-48fe-aa68-e06666f52e8a/front-250', external_id = '6e188fb7-461a-48fe-aa68-e06666f52e8a', external_source = 'musicbrainz' WHERE title = 'End Measured Mile' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/cdd6b93c-9d37-498d-9550-fccc1435d2a4/front-250', external_id = 'cdd6b93c-9d37-498d-9550-fccc1435d2a4', external_source = 'musicbrainz' WHERE title = 'Everything You Ever Loved' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/ce4c90a4-ae0d-4e04-a52f-f2745e1061e7/front-250', external_id = 'ce4c90a4-ae0d-4e04-a52f-f2745e1061e7', external_source = 'musicbrainz' WHERE title = 'Real Talk' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/265650e9-43b7-4edd-91c3-508f0bb2b6f5/front-250', external_id = '265650e9-43b7-4edd-91c3-508f0bb2b6f5', external_source = 'musicbrainz' WHERE title = 'Man Overboard' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/ea5a1d08-1ead-44e1-9ce8-e4945049afbe/front-250', external_id = 'ea5a1d08-1ead-44e1-9ce8-e4945049afbe', external_source = 'musicbrainz' WHERE title = 'Christmas Songs' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/e3ac89c6-837b-4f12-9735-c9824a450f5a/front-250', external_id = 'e3ac89c6-837b-4f12-9735-c9824a450f5a', external_source = 'musicbrainz' WHERE title = 'The Land is Inhospitable And So Are We' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/7abffdf6-46f9-4657-80a9-7851850391cf/front-250', external_id = '7abffdf6-46f9-4657-80a9-7851850391cf', external_source = 'musicbrainz' WHERE title = 'Manning Fireworks' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/150d5714-87a9-42ad-9a9c-824dd5e3035a/front-250', external_id = '150d5714-87a9-42ad-9a9c-824dd5e3035a', external_source = 'musicbrainz' WHERE title = 'You''re Gonna Miss it All' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/ebf718bd-9849-43be-bb7b-078bdae71553/front-250', external_id = 'ebf718bd-9849-43be-bb7b-078bdae71553', external_source = 'musicbrainz' WHERE title = 'Good News for People Who Love Bad News' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/beb1debc-0b30-48c7-8633-1afcdbb317df/front-250', external_id = 'beb1debc-0b30-48c7-8633-1afcdbb317df', external_source = 'musicbrainz' WHERE title = 'We Were Dead Before the Ship Even Sank' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/39fe95eb-d883-4d21-909e-19ef0ecfaa40/front-250', external_id = '39fe95eb-d883-4d21-909e-19ef0ecfaa40', external_source = 'musicbrainz' WHERE title = 'Love at the Greek' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/1ddfb715-1f12-3ce7-bf7d-b4d0d90b10db/front-250', external_id = '1ddfb715-1f12-3ce7-bf7d-b4d0d90b10db', external_source = 'musicbrainz' WHERE title = 'Hawks & Doves' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/d63755fb-f647-4561-8b46-75a960e5bc15/front-250', external_id = 'd63755fb-f647-4561-8b46-75a960e5bc15', external_source = 'musicbrainz' WHERE title = 'Sings the Blues' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/8631005a-2d76-43bd-9002-e077f01ca23f/front-250', external_id = '8631005a-2d76-43bd-9002-e077f01ca23f', external_source = 'musicbrainz' WHERE title = 'Pastel Blues' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/09572d67-e890-4133-a843-08c42dd68928/front-250', external_id = '09572d67-e890-4133-a843-08c42dd68928', external_source = 'musicbrainz' WHERE title = 'Xanadu 7" (Japanese)' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/f79909d4-3bec-4a11-b426-7a6bc6f2dd91/front-250', external_id = 'f79909d4-3bec-4a11-b426-7a6bc6f2dd91', external_source = 'musicbrainz' WHERE title = 'Otis Redding Sings Soul' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/40652ffa-678d-4f4f-9c9a-b32cb453fe92/front-250', external_id = '40652ffa-678d-4f4f-9c9a-b32cb453fe92', external_source = 'musicbrainz' WHERE title = 'Am' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/410dedc0-b6b8-4de3-80b1-a32b2e4669e7/front-250', external_id = '410dedc0-b6b8-4de3-80b1-a32b2e4669e7', external_source = 'musicbrainz' WHERE title = 'Tru' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/b30312b4-9a2f-47dd-898e-4707fec250d4/front-250', external_id = 'b30312b4-9a2f-47dd-898e-4707fec250d4', external_source = 'musicbrainz' WHERE title = 'Ghost Town' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/15f9482e-a4dc-3ac4-9f85-dbfc22d395b1/front-250', external_id = '15f9482e-a4dc-3ac4-9f85-dbfc22d395b1', external_source = 'musicbrainz' WHERE title = 'Old Pride' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0d1ccbc2-3677-4754-be7d-b648e7194726/front-250', external_id = '0d1ccbc2-3677-4754-be7d-b648e7194726', external_source = 'musicbrainz' WHERE title = 'Magic Isn''t Real' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/c315706a-a4ea-4d58-9d1c-689aff65e9f7/front-250', external_id = 'c315706a-a4ea-4d58-9d1c-689aff65e9f7', external_source = 'musicbrainz' WHERE title = 'Amperland, NY' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/36c47158-9b45-4138-a5ad-620c46112153/front-250', external_id = '36c47158-9b45-4138-a5ad-620c46112153', external_source = 'musicbrainz' WHERE title = 'Cardinal' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/b2d8402d-7147-41de-a09c-b2b840c70bbb/front-250', external_id = 'b2d8402d-7147-41de-a09c-b2b840c70bbb', external_source = 'musicbrainz' WHERE title = 'Atom Heart Mother' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/37ec9aeb-9d75-49b0-b537-bb3c1e173908/front-250', external_id = '37ec9aeb-9d75-49b0-b537-bb3c1e173908', external_source = 'musicbrainz' WHERE title = 'Feast of Love' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/5b446655-d10c-3639-ac3e-bc689efce811/front-250', external_id = '5b446655-d10c-3639-ac3e-bc689efce811', external_source = 'musicbrainz' WHERE title = 'Doolittle' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/29a14c78-74ad-44d0-9d51-1613701248cb/front-250', external_id = '29a14c78-74ad-44d0-9d51-1613701248cb', external_source = 'musicbrainz' WHERE title = 'Dummy' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/e9c991e2-2b60-4166-8fd1-875a0ab94613/front-250', external_id = 'e9c991e2-2b60-4166-8fd1-875a0ab94613', external_source = 'musicbrainz' WHERE title = 'Evil Empire' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/a898aa0f-c949-4945-9eec-c6bfdae0c43a/front-250', external_id = 'a898aa0f-c949-4945-9eec-c6bfdae0c43a', external_source = 'musicbrainz' WHERE title = 'Double Booked' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/92a6ec22-8838-46fa-b559-2c376772fe3c/front-250', external_id = '92a6ec22-8838-46fa-b559-2c376772fe3c', external_source = 'musicbrainz' WHERE title = 'Live at the Harlem Square Club' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/80cf0227-b96a-491c-9097-84c55d18f050/front-250', external_id = '80cf0227-b96a-491c-9097-84c55d18f050', external_source = 'musicbrainz' WHERE title = 'Winter Forever' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/c0464441-6494-4156-b110-dcc751b48b93/front-250', external_id = 'c0464441-6494-4156-b110-dcc751b48b93', external_source = 'musicbrainz' WHERE title = 'Reverie Lagoon' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/d44a4860-fa76-4418-b104-fedf7c7eb211/front-250', external_id = 'd44a4860-fa76-4418-b104-fedf7c7eb211', external_source = 'musicbrainz' WHERE title = 'Ghost' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0b1d5f0b-4ee8-42f7-abd1-e76641984c69/front-250', external_id = '0b1d5f0b-4ee8-42f7-abd1-e76641984c69', external_source = 'musicbrainz' WHERE title = 'Safe and Also No Fear' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/07d02411-6722-4071-8130-14fb8512288a/front-250', external_id = '07d02411-6722-4071-8130-14fb8512288a', external_source = 'musicbrainz' WHERE title = 'Souvlaki' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/dbba8345-1ec1-43af-9afa-085b818e826b/front-250', external_id = 'dbba8345-1ec1-43af-9afa-085b818e826b', external_source = 'musicbrainz' WHERE title = 'Goo' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/205952c4-e54f-35a5-a299-5d16e600b23f/front-250', external_id = '205952c4-e54f-35a5-a299-5d16e600b23f', external_source = 'musicbrainz' WHERE title = 'Little Creatures' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/ce108bca-02b1-4053-baff-19b2a6e1fd33/front-250', external_id = 'ce108bca-02b1-4053-baff-19b2a6e1fd33', external_source = 'musicbrainz' WHERE title = 'Folklore' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/16de0b2c-e92d-42c6-9d67-74cebcfac08f/front-250', external_id = '16de0b2c-e92d-42c6-9d67-74cebcfac08f', external_source = 'musicbrainz' WHERE title = 'Songs from the Big Chair' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/68aa7660-c196-3dea-9bce-a833ddc9fc11/front-250', external_id = '68aa7660-c196-3dea-9bce-a833ddc9fc11', external_source = 'musicbrainz' WHERE title = 'Hospice' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/af5a0881-b0f6-4abc-9a68-4ff6a36e7212/front-250', external_id = 'af5a0881-b0f6-4abc-9a68-4ff6a36e7212', external_source = 'musicbrainz' WHERE title = 'The Soft Parade' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/64026228-12c3-4532-b220-4da206ce02bd/front-250', external_id = '64026228-12c3-4532-b220-4da206ce02bd', external_source = 'musicbrainz' WHERE title = 'Strange Days' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/9e5f8261-6513-4a90-91c9-76c0562a27f5/front-250', external_id = '9e5f8261-6513-4a90-91c9-76c0562a27f5', external_source = 'musicbrainz' WHERE title = 'The Front Bottoms' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/962009fb-c141-4ac8-b182-2c32b4da4ab2/front-250', external_id = '962009fb-c141-4ac8-b182-2c32b4da4ab2', external_source = 'musicbrainz' WHERE title = 'Talon of the Hawk' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/c06f0039-80ea-422f-bf61-8f875c34b9be/front-250', external_id = 'c06f0039-80ea-422f-bf61-8f875c34b9be', external_source = 'musicbrainz' WHERE title = 'Emily''s Song 7" (Japanese)' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/aca37b88-1b36-4f4b-9601-a5cdce7b6016/front-250', external_id = 'aca37b88-1b36-4f4b-9601-a5cdce7b6016', external_source = 'musicbrainz' WHERE title = 'A Light for Attracting Attention' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/fd0da5e1-fbb4-3a6c-a575-929b78a272c3/front-250', external_id = 'fd0da5e1-fbb4-3a6c-a575-929b78a272c3', external_source = 'musicbrainz' WHERE title = 'The Queen is Dead' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/611e7b6f-fb9c-3780-ab89-db4ba377c146/front-250', external_id = '611e7b6f-fb9c-3780-ab89-db4ba377c146', external_source = 'musicbrainz' WHERE title = 'Strangeways, Here we Come' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0299e566-f951-440f-bb63-8d6608aff482/front-250', external_id = '0299e566-f951-440f-bb63-8d6608aff482', external_source = 'musicbrainz' WHERE title = 'The Smiths' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/9f37f4aa-603b-4a78-8aae-59f1e3a284e0/front-250', external_id = '9f37f4aa-603b-4a78-8aae-59f1e3a284e0', external_source = 'musicbrainz' WHERE title = 'Meat is Murder' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/46721ca0-b386-437a-a8ff-06e83e3e1cf1/front-250', external_id = '46721ca0-b386-437a-a8ff-06e83e3e1cf1', external_source = 'musicbrainz' WHERE title = 'Under Soil & Dirt' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/3b8be69f-1cde-4b6c-baad-8143ee8abe9b/front-250', external_id = '3b8be69f-1cde-4b6c-baad-8143ee8abe9b', external_source = 'musicbrainz' WHERE title = 'The Upsides' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/45e78083-86a8-4214-8ed7-e1255997598b/front-250', external_id = '45e78083-86a8-4214-8ed7-e1255997598b', external_source = 'musicbrainz' WHERE title = 'Wont Be Pathetic Forever 7"' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/561ae61b-110f-48b0-a50e-0b0f7a022bc9/front-250', external_id = '561ae61b-110f-48b0-a50e-0b0f7a022bc9', external_source = 'musicbrainz' WHERE title = 'Whenever, If Ever' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/5c5f8e18-52be-40fd-9a56-c02dde03aca2/front-250', external_id = '5c5f8e18-52be-40fd-9a56-c02dde03aca2', external_source = 'musicbrainz' WHERE title = 'Floral Green' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/9fc4104a-87c7-455a-a444-1baf30fc4910/front-250', external_id = '9fc4104a-87c7-455a-a444-1baf30fc4910', external_source = 'musicbrainz' WHERE title = 'Shed' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/7a12c5fb-8993-47a0-b987-c30348cd5a9d/front-250', external_id = '7a12c5fb-8993-47a0-b987-c30348cd5a9d', external_source = 'musicbrainz' WHERE title = 'Flood of 72' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/fd8de069-6b81-4417-b2a3-e21e31af8fb4/front-250', external_id = 'fd8de069-6b81-4417-b2a3-e21e31af8fb4', external_source = 'musicbrainz' WHERE title = 'Parting The Sea Between Brightness And Me' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/0500c425-43b8-3913-bcb5-e4855a11263f/front-250', external_id = '0500c425-43b8-3913-bcb5-e4855a11263f', external_source = 'musicbrainz' WHERE title = 'For the Sake of the Song' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/2275c414-1fbb-44f5-b2b9-e072d2199fbc/front-250', external_id = '2275c414-1fbb-44f5-b2b9-e072d2199fbc', external_source = 'musicbrainz' WHERE title = 'Listen & Forgive' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/a5b033ff-b0c9-4bc0-bc80-29b8135a6a0c/front-250', external_id = 'a5b033ff-b0c9-4bc0-bc80-29b8135a6a0c', external_source = 'musicbrainz' WHERE title = 'Turnover' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/dc32e7b2-a1d6-4486-994c-90dee42229b7/front-250', external_id = 'dc32e7b2-a1d6-4486-994c-90dee42229b7', external_source = 'musicbrainz' WHERE title = 'Goodbye Bread' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/edc445b6-9f7f-4f42-b855-57c3cf1cc65c/front-250', external_id = 'edc445b6-9f7f-4f42-b855-57c3cf1cc65c', external_source = 'musicbrainz' WHERE title = 'Goblin' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/ffc2f1f0-300e-43bc-a930-ffce7e457156/front-250', external_id = 'ffc2f1f0-300e-43bc-a930-ffce7e457156', external_source = 'musicbrainz' WHERE title = 'Purgatory' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/741453f9-1054-4588-9022-0766ddc81eb9/front-250', external_id = '741453f9-1054-4588-9022-0766ddc81eb9', external_source = 'musicbrainz' WHERE title = 'The Glamour Kills Tour' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/f240255e-9ecd-40b1-a539-049a5b8402ac/front-250', external_id = 'f240255e-9ecd-40b1-a539-049a5b8402ac', external_source = 'musicbrainz' WHERE title = 'Charlie Brown Christmas' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/07497a81-9635-4494-82be-3469f8137ed2/front-250', external_id = '07497a81-9635-4494-82be-3469f8137ed2', external_source = 'musicbrainz' WHERE title = 'Vince Staples' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/64dcc502-ff8b-4334-99fb-3a7617b13a16/front-250', external_id = '64dcc502-ff8b-4334-99fb-3a7617b13a16', external_source = 'musicbrainz' WHERE title = 'Violent Femmes' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/7b486ece-791b-4c15-9ec4-e4153da769d6/front-250', external_id = '7b486ece-791b-4c15-9ec4-e4153da769d6', external_source = 'musicbrainz' WHERE title = 'Wavvves' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/278bfd76-9fef-336d-a84a-12787fda5b17/front-250', external_id = '278bfd76-9fef-336d-a84a-12787fda5b17', external_source = 'musicbrainz' WHERE title = 'King of the Beach' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/b077a894-6632-481c-9e71-f2b1081def3d/front-250', external_id = 'b077a894-6632-481c-9e71-f2b1081def3d', external_source = 'musicbrainz' WHERE title = 'Pinkerton' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/d18b273a-4987-4594-a4db-419454c7e113/front-250', external_id = 'd18b273a-4987-4594-a4db-419454c7e113', external_source = 'musicbrainz' WHERE title = 'Being There' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/a0778e98-0dc2-4913-8860-02150234df52/front-250', external_id = 'a0778e98-0dc2-4913-8860-02150234df52', external_source = 'musicbrainz' WHERE title = 'The Music of Twin Peaks' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/5fd00792-9b66-44d8-942a-d16ce0db3266/front-250', external_id = '5fd00792-9b66-44d8-942a-d16ce0db3266', external_source = 'musicbrainz' WHERE title = 'American Heartbreak' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/2d9eee32-eb76-4309-a0af-46726bb7c403/front-250', external_id = '2d9eee32-eb76-4309-a0af-46726bb7c403', external_source = 'musicbrainz' WHERE title = 'Deann' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
  BEGIN
    UPDATE media SET cover_url = 'https://coverartarchive.org/release/cf4b363b-3000-4fae-9c58-4131a1769ddb/front-250', external_id = 'cf4b363b-3000-4fae-9c58-4131a1769ddb', external_source = 'musicbrainz' WHERE title = 'Summertime Blues' AND media_type = 'record';
  EXCEPTION WHEN unique_violation THEN NULL;
  END;
END;
$$;