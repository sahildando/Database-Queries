/* Write your PL/SQL query statement below */
select e1.employee_id, e1.name, count(e2.reports_to) reports_count,
round(avg(e2.age)) average_age
from employees e1 , employees e2
where e1.employee_id = e2.reports_to
group by e1.employee_id, e1.name
order by e1.employee_id