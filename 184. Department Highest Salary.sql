# Write your MySQL query statement below
WITH DepartmentMaxSalary AS (
    SELECT DepartmentId AS Id, Department.Name AS CName, MAX(Salary) AS MaxSalary
    FROM Employee INNER JOIN Department
    ON Employee.DepartmentId = Department.Id
    GROUP BY DepartmentId
)
SELECT DepartmentMaxSalary.CName AS Department, Employee.Name AS Employee, Employee.Salary 
FROM Employee INNER JOIN DepartmentMaxSalary
ON Employee.DepartmentId = DepartmentMaxSalary.Id
WHERE Employee.Salary = DepartmentMaxSalary.MaxSalary;

