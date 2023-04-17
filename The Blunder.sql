/*
HackerRank The Blunder challenge
Author: Luciano Andrade

Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeroes removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:actual - miscalculated average monthly salaries), and round it up to the next integer.

Find the challenge:
https://www.hackerrank.com/challenges/the-blunder/problem
*/

SELECT 
    CONVERT(INT,CEILING(AVG(CONVERT(float, salary)) - AVG(CONVERT(float, REPLACE(salary,'0','')))))
FROM employees;

