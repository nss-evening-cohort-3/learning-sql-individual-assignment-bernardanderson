--Which sales agent made the most in sales in 2009?

SELECT "Employee Name", MAX("Total Sales in 2009") AS "Top Salesperson 2009" 
FROM 
(SELECT e.FirstName || " " || e.LastName AS "Employee Name", SUM(i.total) AS "Total Sales in 2009"
FROM Customer c JOIN Employee e JOIN Invoice i 
WHERE c.SupportRepId == e.EmployeeId AND c.CustomerId == i.CustomerId AND i.InvoiceDate LIKE "2009%"
GROUP BY e.EmployeeId);