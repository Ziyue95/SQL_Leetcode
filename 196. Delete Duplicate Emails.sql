# Write your MySQL query statement below
WITH Did AS (
    SELECT P2.Id 
    FROM Person P1, Person P2
    WHERE P1.Email = P2.Email and P1.Id < P2.Id
)
DELETE FROM Person
WHERE EXISTS (
    SELECT Id FROM Did WHERE Did.Id = Person.Id
);

