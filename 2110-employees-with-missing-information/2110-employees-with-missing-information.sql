# Write your MySQL query statement below
Select employee_id from Employees where employee_id not in (select employee_id from Salaries)
Union
Select employee_id from Salaries where employee_id not in (select employee_id from Employees)
order by employee_id