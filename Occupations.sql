/*
Hackerrank Occupations challenge
Author: Luciano Andrade

Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Find the challenge:
https://www.hackerrank.com/challenges/occupations/problem
*/
 
SELECT 
    doctor.name,  
    professor.name, 
    singer.name, 
    actor.name 
FROM (SELECT RANK() Over(ORDER BY name ASC) AS id, name FROM occupations WHERE occupation = 'Doctor') AS doctor
FULL JOIN (SELECT RANK() Over(ORDER BY name ASC) AS id, name FROM occupations WHERE occupation = 'Professor') AS professor 
ON doctor.id = professor.id
FULL JOIN (SELECT RANK() Over(ORDER BY name ASC) AS id, name FROM occupations WHERE occupation = 'Singer') AS singer 
ON professor.id = singer.id
FULL JOIN (SELECT RANK() Over(ORDER BY name ASC) AS id, name FROM occupations WHERE occupation = 'Actor') AS actor
ON singer.id = actor.id;
