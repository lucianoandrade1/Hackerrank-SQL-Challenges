/*HackerRank Revising Aggregations - The Count Function challenge
Author: Luciano Andrade

Query a count of the number of cities in CITY having a Population larger than 100,000.

Find the challenge:
https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
*/

SELECT 
    COUNT(name)
FROM city
WHERE population > 100000;

