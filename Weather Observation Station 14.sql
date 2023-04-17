/*
HackerRank Weather Observation Station 14 challenge
Author: Luciano Andrade

Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to  decimal places.

Find challenge:
https://www.hackerrank.com/challenges/weather-observation-station-14/problem
*/

SELECT TOP 1
    CAST(lat_n AS DECIMAL(8,4))
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC;

