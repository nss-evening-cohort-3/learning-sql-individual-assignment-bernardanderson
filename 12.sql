--Provide a query that includes the track name with each invoice line item.

SELECT il.*, t.name FROM InvoiceLine il JOIN Track t WHERE il.TrackId == t.TrackId;