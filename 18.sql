--Provide a query that shows total sales made by each sales agent.

SELECT e.FirstName || " " || e.LastName AS "Employee Name", SUM(i.total) AS "Total Sales"
FROM Customer c JOIN Employee e JOIN Invoice i 
WHERE c.SupportRepId == e.EmployeeId AND c.CustomerId == i.CustomerId
GROUP BY e.EmployeeId;
