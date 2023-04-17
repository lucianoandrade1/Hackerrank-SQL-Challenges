/*
Hackerrank Weather Observation Station 2 challenge
Author: Luciano Andrade

Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.

Find the challenge:
https://www.hackerrank.com/challenges/weather-observation-station-2/problem
*/

SELECT 
    CAST(SUM(lat_n) AS decimal (8,2)),
    CAST(SUM(long_w) AS decimal (8,2))
FROM station;

