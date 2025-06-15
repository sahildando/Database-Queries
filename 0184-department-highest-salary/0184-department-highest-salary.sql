# Write your MySQL query statement below
SELECT Department.name AS Department,Employee.name AS Employee,salary
FROM Employee
INNER JOIN Department ON Employee.departmentId=Department.id
WHERE(departmentId,Salary) IN
(
SELECT departmentId, MAX(Salary) FROM Employee
GROUP BY departmentId
)