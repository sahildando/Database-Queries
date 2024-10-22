# Write your MySQL query statement below
SELECT C.name AS Customers
FROM Customers C
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.id is NULL
