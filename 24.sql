--Provide a query that shows the most purchased track of 2013.
--They are all 1 

SELECT * 
FROM 
(SELECT t.Name, TrackIdCount
FROM 
(SELECT TrackId AS TrackId, COUNT(TrackId) AS "TrackIdCount" 
FROM 
(SELECT * FROM Invoice WHERE InvoiceDate LIKE "2013%") 
AS "Invoice2013" 
JOIN InvoiceLine il 
WHERE il.InvoiceId == "Invoice2013".InvoiceId 
GROUP BY TrackId) AS TrackInv
JOIN Track t WHERE t.TrackId == TrackInv.TrackId)
DESC 
LIMIT 1;

