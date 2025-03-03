# Write your MySQL query statement below
with cte as
(SELECT *,
id-dense_rank() OVER(partition BY num
ORDER BY id) AS grp
FROM logs)
SELECT DISTINCT num AS ConsecutiveNums
from cte
group by num, grp
having count(1) >=3;