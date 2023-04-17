/*HackerRank Weather Observation Station 13 challenge
Author: Luciano Andrade

Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and 137.2345 less than . Truncate your answer to  decimal places.

Find the challenge:
https://www.hackerrank.com/challenges/weather-observation-station-13/problem
*/

SELECT 
    CAST(SUM(lat_n) AS DECIMAL(10,4))
FROM station
WHERE lat_n BETWEEN 38.7880 AND 137.2345;
