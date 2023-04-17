
/*
HackerRank The Report challenge

Author: Luciano Andrade

You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.

Grades contains three columns Grade, Min_Mark, Max_Mark

Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty 
doesn't want the NAMES of those students who received a grade lower than 8. The report must be in 
descending order by grade -- i.e. higher grades are entered first. If there is more than one student 
with the same grade (8-10) assigned to them, order those particular students by their name 
alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by 
their grades in descending order. If there is more than one student with the same grade (1-7) 
assigned to them, order those particular students by their marks in ascending order.

Find the challenge:
https://www.hackerrank.com/challenges/the-report/problem
*/

SELECT 
    CASE  
        WHEN grade >= 8 THEN name   
        ELSE NULL
    END AS name,
    grade,
    marks
FROM Students AS s
LEFT JOIN Grades AS g ON marks BETWEEN min_mark AND max_mark
ORDER BY grade DESC, name;


