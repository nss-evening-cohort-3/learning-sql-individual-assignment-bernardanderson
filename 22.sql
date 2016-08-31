--Provide a query that shows the # of customers assigned to each sales agent.

SELECT e.FirstName || " " || e.LastName AS "Employee Name", COUNT(c.CustomerId) AS "Total Customers"
FROM Customer c JOIN Employee e
WHERE c.SupportRepId == e.EmployeeId
GROUP BY c.SupportRepId;
