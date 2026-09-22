-- LeetCode 1378: Replace Employee ID With The Unique Identifier
-- Difficulty: Easy

--Solution:
select unique_id, name 
from Employees left join EmployeeUNI on Employees.id = EmployeeUNI.id;

-- Approach:
-- Use a LEFT JOIN to match each employee with their unique_id using the shared id column.
-- A LEFT JOIN keeps every employee from the Employees table, even if they do not
-- have a matching record in EmployeeUNI, in which case unique_id will be NULL.