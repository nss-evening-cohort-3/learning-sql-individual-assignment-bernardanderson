--Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT * FROM
(SELECT e.FirstName || ' ' || e.LastName AS SalesRep , i.* 
FROM Employee e 
JOIN Customer c ON c.SupportRepId = e.EmployeeId 
JOIN Invoice i ON c.CustomerId = i.CustomerId) AS comb 
ORDER BY SalesRep;