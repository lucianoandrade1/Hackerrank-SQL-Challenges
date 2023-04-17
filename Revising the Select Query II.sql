/*
Rackerrank Revising the Select Query II challenge
Author: Luciano Andrade

Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA.

Find the challenge:
https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
*/

SELECT 
    name 
FROM city 
WHERE countryCode='USA' 
AND population > 120000;
