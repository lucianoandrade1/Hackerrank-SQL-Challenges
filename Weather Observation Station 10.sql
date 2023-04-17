/*
Hackerrank Weather Observation Station 10 challenge
Author: Luciano Andrade

Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

Find the challenge:
https://www.hackerrank.com/challenges/weather-observation-station-10/problem
*/

SELECT DISTINCT 
    city 
FROM station 
WHERE RIGHT(city,1) NOT IN ('a','e','i','o','u');
