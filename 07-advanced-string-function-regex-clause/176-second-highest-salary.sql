-- LeetCode 176: Second Highest Salary
-- Difficulty: Medium

--Solution:
with sorted_salary as (select salary, dense_rank() over (order by salary desc) as rnk
from 
    Employee)

select max(salary) as SecondHighestSalary from sorted_salary where rnk = 2;

-- Approach:
-- Use DENSE_RANK to rank salaries from highest to lowest while giving
-- duplicate salaries the same rank.
-- Filter for rank 2 to get the second-highest distinct salary.
-- Use MAX so the query returns a single value and returns NULL if no
-- second-highest salary exists.