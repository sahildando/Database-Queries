# Write your MySQL query statement below
SELECT player_id, event_date as first_login FROM
(SELECT player_id, event_date,
 RANK() OVER (PARTITION BY player_id ORDER BY event_date asc) rnk 
 FROM activity) act
WHERE rnk = 1;