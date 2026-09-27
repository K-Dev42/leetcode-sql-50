-- LeetCode 1731: The Number of Employees Which Report to Each Employee
-- Difficulty: Easy

--Solution:
select e.employee_id, name, reports_count, average_age
from
    Employees e left join (select reports_to, count(reports_to) as reports_count, round(avg(age)) as average_age from Employees where reports_to is not null group by reports_to) m on e.employee_id = m.reports_to
where 
    m.reports_to is not null
order by
    e.employee_id;

-- Approach:
-- Use a subquery to group employees by reports_to and calculate
-- how many employees report to each manager and their average age.
-- Join those aggregated results back to the Employees table so each
-- manager's name can be included.
-- Filter out employees with no direct reports, then sort by employee_id.