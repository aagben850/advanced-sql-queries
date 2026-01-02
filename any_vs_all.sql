-- Return the track name and duration for tracks whose duration is greater than at least one track duration among tracks with popularity below 50.

SELECT track_name,
       duration_ms
FROM liked_tracks
WHERE duration_ms > ANY 
    (SELECT duration_ms
    FROM liked_tracks
    WHERE popularity < 50
    AND duration_ms IS NOT NULL);
