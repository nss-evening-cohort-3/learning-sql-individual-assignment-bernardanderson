--Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT i.*, COUNT(il.InvoiceLineId)
FROM Invoice i JOIN InvoiceLine il 
WHERE i.InvoiceId == il.InvoiceId 
GROUP BY i.InvoiceId;