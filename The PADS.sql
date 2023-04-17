/*
Hackerrank The PADS challenge
Author: Luciano Andrade

Generate the following two result sets:

1. Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

2. There are a total of [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

Note: There will be at least two entries in the table for each type of occupation.

Find the challenge:
https://www.hackerrank.com/challenges/the-pads/problem
*/

SELECT * FROM (SELECT name + '(' + LEFT(occupation,1) + ')' AS names FROM occupations) names
UNION
SELECT * FROM (SELECT TOP 4 'There are a total of ' + STR(COUNT(occupation))+ ' ' + LOWER(occupation) + 's.' AS totals FROM occupations GROUP BY occupation ORDER BY COUNT(occupation)) totals;
