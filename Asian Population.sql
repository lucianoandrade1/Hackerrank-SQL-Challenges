/*
HackerRank Asian Population challenge
Author: Luciano Andrade

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Find the challenge:
https://www.hackerrank.com/challenges/asian-population/problem
*/

SELECT 
    SUM(c.population)
FROM city AS c 
INNER JOIN country AS o ON c.countryCode = o.code
WHERE o.continent = 'Asia';
