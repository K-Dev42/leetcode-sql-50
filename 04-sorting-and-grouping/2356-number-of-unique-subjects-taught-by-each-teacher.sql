-- LeetCode 2356: Number of Unique Subjects Taught by Each Teacher
-- Difficulty: Easy

--Solution:
select teacher_id, count(distinct(subject_id)) as cnt
from Teacher
group by
    teacher_id;

-- Approach:
-- Group the rows by teacher_id so each teacher is handled separately.
-- Count the distinct subject_id values for each teacher to avoid counting
-- the same subject more than once.