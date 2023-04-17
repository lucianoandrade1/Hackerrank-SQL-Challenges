
/*
HackerRank Print Prime Numbers challenge

Author: Luciano Andrade

Write a query to print all prime numbers less than or equal to 1000. Print your result on a single line, 
and use the ampersand (&) character as your separator (instead of a space).

For example, the output for all prime numbers <=10 would be:

2&3&5&7

Find the challenge:
https://www.hackerrank.com/challenges/print-prime-numbers/problem

*/

DECLARE @AllN int = 1000, @aux1 INT = 2, @aux2 INT = 2;
DECLARE @PrimeN AS VARCHAR(1500);
SET @PrimeN = '';

WHILE (@aux2 <= @AllN)
BEGIN
 WHILE (@aux1 <= @aux2) 
 BEGIN
    IF ((@aux2%@aux1) =0) 
    BEGIN
      IF (@aux1 = @aux2) 
        SET @PrimeN = @PrimeN + CAST(@aux2 AS VARCHAR(20))+'&'
        break
    END
 IF ((@aux2%@aux1)<>0)   
   SET @aux1 = @aux1 + 1
 END
 SET @aux1 = 2
 SET @aux2 = @aux2+1 
END;

SELECT SUBSTRING(@PrimeN,0,LEN(@PrimeN));

