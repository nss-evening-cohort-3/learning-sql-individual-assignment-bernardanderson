--Provide a query that shows the most purchased Media Type.

SELECT "Most Purchased Media Type" FROM 
(SELECT mt.Name AS "Most Purchased Media Type", MAX("Number of Media Type")  FROM 
(SELECT MediaTypeId AS "Media Type", COUNT(MediaTypeId) AS "Number of Media Type" 
FROM (SELECT TrackId AS "Tracks", COUNT(TrackId) AS CountedTracks FROM InvoiceLine GROUP BY TrackId)
JOIN Track t 
WHERE t.TrackId == "Tracks"
GROUP BY MediaTypeId) JOIN MediaType mt WHERE mt.MediaTypeId == "Media Type");