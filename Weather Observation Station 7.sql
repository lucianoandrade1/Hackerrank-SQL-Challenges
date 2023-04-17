/*
Hackerrank Weather Observation Station 7 challenge
Author: Luciano Andrade

Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Find challenge:
https://www.hackerrank.com/challenges/weather-observation-station-7/problem
*/

SELECT DISTINCT 
    city 
FROM station 
WHERE RIGHT(city,1) IN ('a','e','i','o','u');
