# Write your MySQL query statement below
(select employee_id, salary as bonus from Employees where name NOT LIKE "M%" and employee_id%2 !=0

Union

select employee_id, 0 as bonus from employees where employee_id%2 =0 or name like "M%") order by employee_id



