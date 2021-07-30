# Write your MySQL query statement below
SELECT Name AS Customers
FROM Customers
WHERE NOT Id = ANY (
    SELECT CustomerId 
    FROM Orders
);
