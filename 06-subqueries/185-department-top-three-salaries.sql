-- LeetCode 185: Department Top Three Salaries
-- Difficulty: Hard

--Solution:
with ranked_table as (select e.name as Employee, e.salary, e.departmentId, d.name, dense_rank() over (
    partition by departmentId
    order by salary desc
) as rnk 
from
    Employee e left join Department d on e.departmentId = d.id)

select name as Department, Employee, salary as Salary
from ranked_table
where rnk <= 3;

-- Approach:
-- Join the Employee and Department tables so each employee can be associated
-- with their department name.
-- Use DENSE_RANK to rank salaries from highest to lowest within each department.
-- Employees with the same salary receive the same rank.
-- Return only employees whose salary rank is 3 or less.