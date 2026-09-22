-- LeetCode 570: Managers with at Least 5 Direct Reports
-- Difficulty: Medium

--Solution:
select name from Employee where id in (select 
    managerId
from
    Employee
where
    managerId is not null
group by
    managerId
having 
    count(managerId) >= 5);

-- Approach:
-- Use a subquery to group employees by managerId and count how many direct reports
-- each manager has.
-- Keep only manager IDs that have at least 5 direct reports using HAVING.
-- Then return the names of employees whose id appears in that list of manager IDs.