/*
HackerRank Japan Population challenge
Author: Luciano Andrade

Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

Find the challenge:
https://www.hackerrank.com/challenges/japan-population/problem
*/


SELECT
    SUM(population)
FROM city
WHERE countrycode = "JPN";

