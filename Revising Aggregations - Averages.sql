/*
HackerRank Revising Aggregations - Averages challenge
Author: Luciano Andrade

Query the average population of all cities in CITY where District is California.

Find the challenge:
https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
*/

SELECT 
    AVG(population)
FROM city
WHERE district = "California";

