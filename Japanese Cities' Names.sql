/*
Hackerrank Japanese Cities' Names challenge
Author: Luciano Andrade

Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

Find the challenge:
https://www.hackerrank.com/challenges/japanese-cities-name/problem
*/

SELECT 
    name
FROM city
WHERE countryCode='JPN';

