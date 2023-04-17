/*
Hackerrank Weather Observation Station 17 challenge
Author: Luciano Andrade

Query the Western Longitude (LONG_W) where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.

Find the challenge:
https://www.hackerrank.com/challenges/weather-observation-station-17/problem
*/

SELECT TOP 1
    CAST(long_w AS DECIMAL(7,4))
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n ASC;

