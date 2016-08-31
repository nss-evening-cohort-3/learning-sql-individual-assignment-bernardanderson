--Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT il.*, t.name, t.Composer FROM InvoiceLine il JOIN Track t WHERE il.TrackId == t.TrackId;