--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT  Total, c.FirstName || " " || c.LastName AS "Full Customer Name", 
c.Country, e.FirstName || " " || e.LastName AS "Sales Person" 
FROM Invoice i JOIN Customer c JOIN Employee e 
WHERE i.CustomerId == c.CustomerId AND c.SupportRepId == e.EmployeeId;