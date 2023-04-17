--HackerRank Symmetric Pairs challenge
--Author: Luciano Andrade

--You are given a table, Functions, containing two columns: X and Y.

--Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

--Write a query to output all such symmetric pairs in ascending order by the value of X. 

--List the rows such that X1 ≤ Y1.

--Find the challenge:
--https://www.hackerrank.com/challenges/symmetric-pairs/problem

DECLARE @FunctionsTemp TABLE
(
    X INT, Y INT, I INT
);

INSERT INTO @FunctionsTemp (X, Y, I)
SELECT 
    X, 
    Y, 
    ROW_NUMBER() OVER(ORDER BY (SELECT 1)) AS I 
FROM Functions;

SELECT DISTINCT 
    f1.X, 
    f1.Y
FROM @FunctionsTemp AS f1
INNER JOIN @FunctionsTemp AS f2 ON f1.X = f2.Y AND f1.Y = f2.X
WHERE f1.I <> f2.I AND f1.X <= f1.Y
ORDER BY f1.X;


