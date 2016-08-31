--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT(*) AS "Line Items InvoiceID 37" FROM InvoiceLine WHERE InvoiceLine.InvoiceId = 37;