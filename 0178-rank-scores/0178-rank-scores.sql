# Write your MySQL query statement below
select Score, dense_rank() over(order by Score desc) as 'Rank' from Scores