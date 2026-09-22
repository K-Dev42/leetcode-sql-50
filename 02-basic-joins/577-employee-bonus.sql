-- LeetCode 577: Employee Bonus
-- Difficulty: Easy

--Solution:
select name, bonus 
from Employee left join Bonus on Employee.empId = Bonus.empId 
where bonus <1000 or bonus is null;

-- Approach:
-- Use a LEFT JOIN to keep every employee, including employees who do not
-- have a matching bonus record.
-- Filter for employees whose bonus is less than 1000 or whose bonus is NULL,
-- which represents employees who did not receive a bonus.