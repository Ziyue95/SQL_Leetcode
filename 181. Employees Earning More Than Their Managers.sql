# Write your MySQL query statement below
WITH SalaryComp AS (
    SELECT E1.Name, E1.Salary, E2.Salary AS MSalary
    FROM Employee E1, Employee E2
    WHERE E1.ManagerId = E2.Id
)
SELECT Name as Employee
FROM SalaryComp
WHERE Salary > MSalary;