-- LeetCode 584: Find Customer Referee
-- Difficulty: Easy

--Solution:
select name 
from Customer 
where referee_id is null or referee_id != 2; 

-- Approach:
-- Return customers whose referee_id is not 2.
-- Customers with no referee have a NULL referee_id, so they must
-- be included separately using IS NULL.