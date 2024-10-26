# Write your MySQL query statement below
Select *,
IF ( x+y>z AND x+z>y AND y+z>x, "Yes", "No") AS triangle
from  Triangle