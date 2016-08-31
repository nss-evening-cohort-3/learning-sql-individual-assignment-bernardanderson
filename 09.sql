--How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?

SELECT COUNT (InvoiceDate) AS 'Invoices From 2011', Sum(Total) AS 'Summed Total - 2011' 
FROM Invoice WHERE InvoiceDate < '2012-01-01' AND InvoiceDate > '2010-12-31';

SELECT COUNT (InvoiceDate) AS 'Invoices From 2009', Sum(Total) AS 'Summed Total - 2009' 
FROM Invoice WHERE InvoiceDate < '2010-01-01' AND InvoiceDate > '2008-12-31';