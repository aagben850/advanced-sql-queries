-- Return all artists and their average popularity, but only compute the average for artists who have at least 5 tracks. Artists with fewer than 5 tracks should still appear with NULL
-- for the average.

SELECT artists.artist_names,
       stats.avg_popularity
FROM (
    SELECT DISTINCT artist_names
    FROM liked_tracks
) artists
LEFT JOIN (
    SELECT artist_names,
           AVG(popularity) AS avg_popularity
    FROM liked_tracks
    GROUP BY artist_names
    HAVING COUNT(*) >= 5
) stats
ON stats.artist_names = artists.artist_names
ORDER BY artists.artist_names;
