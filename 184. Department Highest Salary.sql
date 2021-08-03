# Write your MySQL query statement below
SELECT E.Name AS Department, Employee.Name AS Employee, Employee.Salary AS Salary
FROM Employee JOIN (
    SELECT Department.Id, Department.Name, MAX(Employee.Salary) AS MSalary 
    FROM Department JOIN Employee
    ON Department.Id = Employee.DepartmentId
    GROUP BY Department.Name
) E
ON Employee.DepartmentId = E.Id
WHERE Employee.Salary = E.MSalary;

