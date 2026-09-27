-- LeetCode 180: Consecutive Numbers
-- Difficulty: Medium

--Solution:
select l1.num as ConsecutiveNums 
from 
    Logs l1 left join Logs l2 on l1.id + 1 = l2.id left join Logs l3 on l1.id + 2 = l3.id 
where
    l1.num = l2.num and l1.num = l3.num
group by
    l1.num;

-- Approach:
-- Join the Logs table to itself twice so each row can be compared
-- with the next two consecutive rows based on id.
-- Keep only rows where all three numbers are equal.
-- Group by num so each consecutive number appears only once in the result.