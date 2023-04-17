/*
HackerRank Challenges

Author: Luciano Andrade

Julia asked her students to create some coding challenges. 
Write a query to print the hacker_id, name, and the total number of challenges created by each student. 
Sort your results by the total number of challenges in descending order. 
If more than one student created the same number of challenges, then sort the result by hacker_id. 
If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, 
then exclude those students from the result.

Find the challenge:
https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
*/


SELECT 
    h.hacker_id,
    h.name,
    Count(c.challenge_id) AS challengesCount
INTO #ChallengesTemp
FROM Hackers AS h 
INNER JOIN Challenges AS c ON h.hacker_id = c.hacker_id 
GROUP BY h.hacker_id, h.name;

SELECT 
    MAX(challengesCount) AS ChallengesCount,
    1 AS NroChallengesCount
INTO #ChallengesTemp1
FROM #ChallengesTemp
UNION
SELECT 
    challengesCount  AS ChallengesCount,
    Count(challengesCount) AS NroChallengesCount
FROM #ChallengesTemp
GROUP BY challengesCount
HAVING Count(challengesCount) = 1;

SELECT 
    c.hacker_id,
    c.name,
    c.ChallengesCount
FROM #ChallengesTemp AS c
INNER JOIN #ChallengesTemp1 AS c1 ON c.challengesCount = c1.ChallengesCount
ORDER BY c.ChallengesCount DESC, c.hacker_id ASC;

