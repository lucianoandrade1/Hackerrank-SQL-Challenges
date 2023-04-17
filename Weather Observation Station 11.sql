/*
Hackerrank Weather Observation Station 11 challenge
Author: Luciano Andrade

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Find the challenge:
https://www.hackerrank.com/challenges/weather-observation-station-11/problem
*/

SELECT DISTINCT
    city 
FROM station 
WHERE LEFT(city,1) NOT IN ('a','e','i','o','u')
OR RIGHT(city,1) NOT IN ('a','e','i','o','u');
