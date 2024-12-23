# Write your MySQL query statement below
Select sell_date , Count(distinct product) as num_sold,
Group_Concat(distinct product order by product) as products
from activities
group by sell_date