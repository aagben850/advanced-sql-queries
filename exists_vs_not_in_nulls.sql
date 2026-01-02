-- Return the track name for tracks whose artist has never released a track with NULL popularity. Provide one solution using NOT IN and one solution using NOT EXISTS, and note why one can fail
-- when NULLs are present.

-- Version 1: NOT IN (safe only if the subquery column cannot return NULL)
-- This is safe here because the subquery selects ARTIST_NAMES, not POPULARITY.
-- Still, NOT EXISTS is generally the safer pattern for exclusion logic.
SELECT track_name
FROM liked_tracks
WHERE artist_names NOT IN
    (SELECT artist_names
    FROM liked_tracks
    WHERE popularity IS NULL);

-- Version 2: NOT EXISTS (NULL safe and preferred)
SELECT t.track_name
FROM liked_tracks t
WHERE NOT EXISTS 
  (SELECT 1
  FROM liked_tracks t2
  WHERE t2.artist_names = t.artist_names
  AND t2.popularity IS NULL);
