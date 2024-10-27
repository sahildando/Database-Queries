# Write your MySQL query statement below
Select * from cinema 
Where(id % 2 = 1)
And (description != "boring")
Order By rating Desc;