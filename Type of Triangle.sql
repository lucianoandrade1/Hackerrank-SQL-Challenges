/*
Hackerrank Type of Triangle challenge
Author: Luciano Andrade

Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

Find the challenge:
https://www.hackerrank.com/challenges/what-type-of-triangle/problem
*/

SELECT 
    CASE
        WHEN (A+B<=C) OR (B+C<=A) OR (A+C<=B) THEN 'Not A Triangle'
        WHEN A=B AND B=C THEN 'Equilateral'
        WHEN (A=B AND A<>C) OR (A=C AND A<>B) THEN 'Isosceles'
        WHEN A<>B AND A<>C AND B<>C THEN 'Scalene'
    END
FROM triangles;

