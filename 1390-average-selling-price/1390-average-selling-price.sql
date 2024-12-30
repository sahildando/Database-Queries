# Write your MySQL query statement below
SELECT p.product_id,
COALESCE(round(sum((price * units))/sum(units),2),0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
and purchase_date BETWEEN start_date AND end_date
group by p.product_id