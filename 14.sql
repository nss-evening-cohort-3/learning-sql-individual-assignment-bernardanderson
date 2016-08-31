--Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT BillingCountry, COUNT(BillingCountry) FROM Invoice Group BY BillingCountry;