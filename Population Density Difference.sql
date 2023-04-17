/*HackerRank Population Density Difference challenge
Author: Luciano Andrade

Query the difference between the maximum and minimum populations in CITY.

Find the challenge:
https://www.hackerrank.com/challenges/population-density-difference/problem
*/

SELECT 
    MAX(population) - MIN(population)
FROM city;
