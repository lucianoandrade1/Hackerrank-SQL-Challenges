/*
Hackerrank Weather Observation Station 3 challenge
Author: Luciano Andrade

Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, but must exclude duplicates from your answer.

Find the challenge:

https://www.hackerrank.com/challenges/weather-observation-station-3/problem
*/

SELECT DISTINCT
    city
FROM station
WHERE ID % 2 = 0;

