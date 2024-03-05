/*
HackerRank African Cities challenge
Author: Luciano Andrade

Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Find the challenge:
https://www.hackerrank.com/challenges/african-cities/problem
*/

SELECT 
    c.name
FROM city AS c 
INNER JOIN country AS o
ON c.countryCode = o.code
WHERE o.continent = 'Africa';
