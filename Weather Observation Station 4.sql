/*
Hackerrank Weather Observation Station 4 challenge
Author: Luciano Andrade

Let N be the number of CITY entries in STATION, and let N' be the number of distinct CITY names in STATION; query the value of N-N' from STATION. In other words, find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

Find the challenge:
https://www.hackerrank.com/challenges/weather-observation-station-4/problem
*/

SELECT 
    COUNT(city) - COUNT(DISTINCT city) AS "Difference" 
FROM station;
