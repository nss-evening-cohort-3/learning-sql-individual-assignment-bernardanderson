--Provide a query that shows the top 3 best selling artists.

SELECT Composer, "Number of Tracks Purchased" FROM (SELECT Composer, COUNT(Composer) AS "Number of Tracks Purchased" FROM (SELECT TrackId AS "Tracks", COUNT(TrackId) AS CountedTracks FROM InvoiceLine GROUP BY TrackId)
JOIN Track t 
WHERE t.TrackId == "Tracks"
GROUP BY Composer)
ORDER BY "Number of Tracks Purchased"
DESC
LIMIT 3;