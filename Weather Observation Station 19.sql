/*
HackerRank Weather Observation Station 19 challenge
Author: Luciano Andrade

Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and P2 and format your answer to display  decimal digits.

Find the challenge:
https://www.hackerrank.com/challenges/weather-observation-station-19/problem
*/

SELECT 
    CAST(SQRT(POWER(MIN(lat_n) - MAX(lat_n),2) + POWER(MIN(long_w) - MAX(long_w),2)) AS DECIMAL(8,4))
FROM station;

