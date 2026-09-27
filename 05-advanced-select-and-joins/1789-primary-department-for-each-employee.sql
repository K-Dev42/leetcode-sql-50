-- LeetCode 1789: Primary Department for Each Employee
-- Difficulty: Easy

--Solution:
select E.employee_id, department_id 
from
    Employee E left join (select employee_id, count(department_id) as department_count from Employee group by employee_id) T on E.employee_id = T.employee_id
where
    primary_flag = 'Y' or department_count = 1;

-- Approach:
-- Use a subquery to count how many departments each employee belongs to.
-- Join that count back to the Employee table.
-- Return the row marked as the primary department, or if the employee belongs
-- to only one department, return that department even if it is not marked primary.