/*
Hackerrank Weather Observation Station 5 challenge
Author: Luciano Andrade

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered.

Find the challenge:
https://www.hackerrank.com/challenges/weather-observation-station-5/problem
*/

SELECT * FROM (SELECT TOP 1 city, LEN(city) AS lenCity FROM station ORDER BY LEN(city) ASC, city ASC) min_len
UNION
SELECT * FROM (SELECT TOP 1 city, LEN(city) AS lenCity FROM station ORDER BY LEN(city) DESC, city ASC) max_len;

