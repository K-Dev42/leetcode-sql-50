-- LeetCode 620: Not Boring Movies
-- Difficulty: Easy

--Solution:
select * 
from Cinema 
where id % 2 = 1 and description != 'boring' 
order by rating desc;

-- Approach:
-- Filter the Cinema table to keep only rows with odd-numbered IDs.
-- Exclude movies whose description is 'boring'.
-- Sort the remaining movies by rating from highest to lowest.