-- LeetCode 1204: Last Person to Fit in the Bus
-- Difficulty: Medium

--Solution:
select q.person_name
from 
    Queue q left join (select turn, person_name, sum(weight) over (order by turn) as Total_weight from Queue) t on q.turn = t.turn
where
    Total_weight <= 1000
order by
    q.turn desc limit 1;

-- Approach:
-- Use a window function to calculate the running total of passenger weight
-- in boarding order.
-- Keep only rows where the cumulative weight is at most 1000.
-- Sort those valid passengers by turn in descending order and return the last one.