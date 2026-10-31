-- LeetCode 185: Department Top Three Salaries
-- Difficulty: Hard

--Solution:


-- Approach:
-- Join the Employee and Department tables so each employee can be associated
-- with their department name.
-- Use DENSE_RANK to rank salaries from highest to lowest within each department.
-- Employees with the same salary receive the same rank.
-- Return only employees whose salary rank is 3 or less.