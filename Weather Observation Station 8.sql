/*
Hackerrank Weather Observation Station 8 challenge
Author: Luciano Andrade

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

Find the challenge:
https://www.hackerrank.com/challenges/weather-observation-station-8/problem
*/

SELECT DISTINCT
    city 
FROM station 
WHERE LEFT(city,1) IN ('a','e','i','o','u') 
AND RIGHT (city,1) IN ('a','e','i','o','u');
