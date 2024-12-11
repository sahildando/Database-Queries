# Write your MySQL query statement below
Select teacher_id, Count(Distinct subject_id) as Cnt
from Teacher
group by teacher_id

