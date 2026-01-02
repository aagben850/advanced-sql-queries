-- Return all artists and the track names for tracks released after 2020, including artists who have no tracks released after 2020. Write two versions: one that incorrectly collapses the outer
-- join, and one that preserves the outer join correctly.

-- Version 1: incorrect (collapses the outer join)
SELECT a.artist_names,
       t.track_name
FROM (SELECT DISTINCT artist_names FROM liked_tracks) a
LEFT JOIN liked_tracks t
  ON t.artist_names = a.artist_names
WHERE SUBSTR(t.album_release_date, 1, 4) > '2020';

-- Version 2: correct (preserves the outer join)
SELECT a.artist_names,
       t.track_name
FROM (SELECT DISTINCT artist_names FROM liked_tracks) a
LEFT JOIN liked_tracks t
  ON t.artist_names = a.artist_names
 AND SUBSTR(t.album_release_date, 1, 4) > '2020';
