/*
HackerRank Weather Observation Station 20 challenge
Author: Luciano Andrade

A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

Find challenge:
https://www.hackerrank.com/challenges/weather-observation-station-20/problem
*/

SELECT
    CAST(MEDIAN(lat_n) AS DECIMAL(7,4))
FROM station;

