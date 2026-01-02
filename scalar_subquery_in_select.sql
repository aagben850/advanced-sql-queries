-- Return the track name, duration in milliseconds, and an additional column showing the overall average duration of all tracks, repeated on every row, using a single row subquery in SELECT.

SELECT track_name, duration_ms,
    (SELECT AVG(duration_ms)
    FROM liked_tracks) AS overall_avg_duration
FROM liked_tracks;
