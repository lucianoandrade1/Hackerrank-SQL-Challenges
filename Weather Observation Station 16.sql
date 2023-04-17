/*
HackerRank Weather Observation Station 16 challenge
Author: Luciano Andrade

Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.

Find the challenge:
https://www.hackerrank.com/challenges/weather-observation-station-16/problem
*/

SELECT 
    CAST(MIN(lat_n) AS DECIMAL(7,4))
FROM station
WHERE lat_n > 38.7780;

