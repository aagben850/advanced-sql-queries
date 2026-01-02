Prompt
-- Return the track name, artist name, and popularity for tracks where the track’s popularity is greater than the average popularity for that same artist.

-- Version 1: correlated subquery
SELECT l1.track_name,
       l1.artist_names,
       l1.popularity
FROM liked_tracks l1
WHERE l1.popularity >
      (SELECT AVG(l2.popularity)
       FROM liked_tracks l2
       WHERE l2.artist_names = l1.artist_names);

-- Version 2: inline view join
SELECT l1.track_name,
       l1.artist_names,
       l1.popularity
FROM liked_tracks l1 JOIN 
       (SELECT artist_names,
       AVG(popularity) AS avg_popularity
       FROM liked_tracks
       GROUP BY artist_names) a
ON a.artist_names = l1.artist_names
WHERE l1.popularity > a.avg_popularity;

