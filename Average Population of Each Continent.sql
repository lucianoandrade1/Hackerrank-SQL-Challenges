/*
HackerRank Average Population of Each Continent challenge
Author: Luciano Andrade

Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Find the challenge:
https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
*/

SELECT 
    o.continent,
    AVG(c.population)
FROM city AS c
INNER JOIN country AS o
ON c.countryCode = o.code
GROUP BY o.continent;
