# Write your MySQL query statement below

SELECT S1.Score AS score, COUNT(DISTINCT S2.score) AS 'Rank'
FROM Scores S1 
INNER JOIN Scores S2 
ON S1.Score <= S2.Score
GROUP BY S1.Id
ORDER BY S1.Score DESC;