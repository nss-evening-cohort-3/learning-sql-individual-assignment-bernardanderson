--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

SELECT InvoiceId AS "Invoice IDs", COUNT(InvoiceLineId) AS "Number of Line Items" FROM InvoiceLine GROUP BY InvoiceId;