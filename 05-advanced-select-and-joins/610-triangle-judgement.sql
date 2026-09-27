-- LeetCode 610: Triangle Judgement
-- Difficulty: Easy

--Solution:
select
    x,
    y,
    z,
    case
        when x + y > z
        and x + z > y
        and y + z > x
        then 'Yes'
        else 'No'
    end as triangle from Triangle;

-- Approach:
-- Use a CASE expression to check the three triangle inequality conditions.
-- A valid triangle requires the sum of any two sides to be greater
-- than the remaining side.
-- Return 'Yes' when all three conditions are true; otherwise return 'No'.