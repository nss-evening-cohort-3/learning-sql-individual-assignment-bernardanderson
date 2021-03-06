--Which sales agent made the most in sales over all?

SELECT "Employee Name", MAX("Total Sales") AS "Top Salesperson Overall" 
FROM 
(SELECT e.FirstName || " " || e.LastName AS "Employee Name", SUM(i.total) AS "Total Sales"
FROM Customer c JOIN Employee e JOIN Invoice i 
WHERE c.SupportRepId == e.EmployeeId AND c.CustomerId == i.CustomerId
GROUP BY e.EmployeeId);