# Write your MySQL query statement below
SELECT E.Name AS Employee 
FROM
    (
     SELECT E1.Name, E1.Salary, E2.Salary AS MSalary 
     FROM Employee E1 JOIN Employee E2
     ON E1.ManagerId = E2.Id
    ) E
WHERE E.Salary > E.MSalary;