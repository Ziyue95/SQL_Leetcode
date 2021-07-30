# Write your MySQL query statement below
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      
      # Write your MySQL query statement below.
      SELECT e1.Salary
      FROM (SELECT DISTINCT Salary FROM Employee) AS e1
      WHERE (SELECT COUNT(*) FROM (SELECT DISTINCT Salary FROM Employee) e2 WHERE e2.Salary > e1.Salary) = N - 1 

  );
END