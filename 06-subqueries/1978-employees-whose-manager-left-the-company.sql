-- LeetCode 1978: Employees Whose Manager Left the Company
-- Difficulty: Easy

--Solution:
select employee_id
from
    Employees
where
    salary < 30000 and manager_id not in (select employee_id from Employees)
order by
    employee_id;

-- Approach:
-- Filter for employees whose salary is less than 30000.
-- Use a subquery to get all current employee IDs in the company.
-- Keep only employees whose manager_id does not appear in that list,
-- which means their manager has left the company.
-- Sort the result by employee_id.