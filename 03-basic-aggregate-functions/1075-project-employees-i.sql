-- LeetCode 1075: Project Employees I
-- Difficulty: Easy

--Solution:
select project_id, round(avg(experience_years),2) as average_years
from Project P left join Employee E on P.employee_id = E.employee_id
group by
    project_id;

-- Approach:
-- Join the Project table with the Employee table using employee_id.
-- Group the rows by project_id, then calculate the average experience
-- of the employees working on each project.
-- Round the average to 2 decimal places.