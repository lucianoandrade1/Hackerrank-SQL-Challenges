/*HackerRank Draw The Triangle 2

Author: Luciano Andrade

P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *

Write a query to print the pattern P(20).


Find the challenge:
https://www.hackerrank.com/challenges/draw-the-triangle-2/problem

*/


DECLARE @Counter INT 
SET @Counter=20
WHILE ( @Counter > 0)
BEGIN
    PRINT REPLICATE ('* ', @Counter)
    SET @Counter  = @Counter  - 1
END;


