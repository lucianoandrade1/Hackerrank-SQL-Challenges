/*
Hackerrank Weather Observation Station 6 challenge
Author: Luciano Andrade

Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Find the challenge:
https://www.hackerrank.com/challenges/weather-observation-station-6/problem
*/

SELECT DISTINCT 
    city 
FROM station 
WHERE LEFT(city,1) IN ('a','e','i','o','u');
