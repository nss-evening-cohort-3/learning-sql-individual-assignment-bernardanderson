--Provide a query that shows the top 5 most purchased tracks over all.

SELECT t.Name, "Tracks", CountedTracks
FROM 
(SELECT TrackId AS "Tracks", COUNT(TrackId) AS CountedTracks FROM InvoiceLine GROUP BY TrackId)
JOIN Track t 
WHERE t.TrackId == "Tracks" 
ORDER BY CountedTracks 
DESC 
LIMIT 5;