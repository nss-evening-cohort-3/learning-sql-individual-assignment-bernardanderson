--Which sales agent made the most in sales in 2010?

SELECT "Employee Name", MAX("Total Sales") AS "Top Salesperson 2010" 
FROM 
(SELECT e.FirstName || " " || e.LastName AS "Employee Name", SUM(i.total) AS "Total Sales"
FROM Customer c JOIN Employee e JOIN Invoice i 
WHERE c.SupportRepId == e.EmployeeId AND c.CustomerId == i.CustomerId AND i.InvoiceDate LIKE "2010%"
GROUP BY e.EmployeeId);