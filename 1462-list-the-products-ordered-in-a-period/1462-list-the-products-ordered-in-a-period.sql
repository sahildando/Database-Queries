# Write your MySQL query statement below
Select product_name,unit from Products Join (select product_id,sum(unit)
as 'unit' from orders

where month(order_date) = 2 and year(order_date) = 2020
group by product_id

having sum(unit) >=100)T on Products.product_id = T.product_id