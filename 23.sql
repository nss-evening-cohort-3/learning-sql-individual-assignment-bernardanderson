--Provide a query that shows the total sales per country. Which country's customers spent the most?

SELECT BillingCountry AS "Purchasing Country", SUM(Total) AS "Total Sales in That Country"
FROM Invoice
GROUP BY BillingCountry;

SELECT "Purchasing Country", MAX("Total Sales in That Country") 
FROM 
(SELECT BillingCountry AS "Purchasing Country", SUM(Total) AS "Total Sales in That Country"
FROM Invoice
GROUP BY BillingCountry);