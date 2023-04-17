/*
Hackerrank Binary Tree Nodes challenge
Author: Luciano Andrade

You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.

Find the challenge:
https://www.hackerrank.com/challenges/binary-search-tree-1/problem
*/

SELECT 
    n, 
    CASE
        WHEN p IS NULL THEN 'Root'
        WHEN n IN (SELECT p FROM bst) THEN 'Inner'
        ELSE 'Leaf'
        END
FROM bst
ORDER BY 1;

