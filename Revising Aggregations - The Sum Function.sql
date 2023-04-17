/*
HackerRank Revising Aggregations - The Sum Function challenge
Author: Luciano Andrade

Query the total population of all cities in CITY where District is California.

Find the challenge:
https://www.hackerrank.com/challenges/revising-aggregations-sum/problem
*/

SELECT 
    SUM(population)
FROM city
WHERE district = 'California';

