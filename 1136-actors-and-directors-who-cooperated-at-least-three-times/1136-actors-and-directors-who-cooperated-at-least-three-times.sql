# Write your MySQL query statement below
Select actor_id,director_id
From ActorDirector 
Group By actor_id,director_id
Having count(timestamp)>=3