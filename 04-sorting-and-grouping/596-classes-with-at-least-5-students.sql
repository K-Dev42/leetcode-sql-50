-- LeetCode 596: Classes With at Least 5 Students
-- Difficulty: Easy

--Solution:
select class
from Courses
group by class having count(*) >= 5;

-- Approach:
-- Group the rows by class so each class is evaluated separately.
-- Count how many students are enrolled in each class.
-- Use HAVING to keep only classes with at least 5 students.