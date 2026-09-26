-- LeetCode 1141: User Activity for the Past 30 Days I
-- Difficulty: Easy

--Solution:
select activity_date as day, count(distinct(user_id)) as active_users
from Activity
where activity_date between date_sub('2019-07-27', interval 29 day) and '2019-07-27'
group by activity_date; 

-- Approach:
-- Filter the Activity table to the 30-day period ending on 2019-07-27.
-- Group the rows by activity_date.
-- Count the distinct user_id values for each day to get the number
-- of active users on that date.