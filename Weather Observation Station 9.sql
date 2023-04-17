/*
Hackerrank Weather Observation Station 9 challenge
Author: Luciano Andrade

Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

Find the challenge:
https://www.hackerrank.com/challenges/weather-observation-station-9/problem
*/


SELECT DISTINCT 
    city 
FROM station 
WHERE LEFT(city,1) NOT IN ('a','e','i','o','u');

