--Provide a query showing the invoices of customers who are from Brazil.

SELECT i.* FROM Invoice i JOIN Customer c ON c.CustomerId = i.CustomerId WHERE c.Country = 'Brazil';