-- LeetCode 1729: Find Followers Count
-- Difficulty: Easy

--Solution:
select user_id, count(*) as followers_count
from Followers
group by
    user_id
order by
    user_id asc;

-- Approach:
-- Group the rows by user_id so each user is evaluated separately.
-- Count the number of follower records for each user.
-- Sort the result by user_id in ascending order.