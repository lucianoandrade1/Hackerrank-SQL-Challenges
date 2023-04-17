/*
Hackerrank Weather Observation Station 15 challenge
Author: Luciano Andrade

Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.

Find the challenge:
https://www.hackerrank.com/challenges/weather-observation-station-15/problem
*/

SELECT TOP 1
    CAST(long_w AS DECIMAL(8,4))
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC;
