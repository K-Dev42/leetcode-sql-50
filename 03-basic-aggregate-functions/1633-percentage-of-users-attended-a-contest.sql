-- LeetCode 1633: Percentage of Users Attended a Contest
-- Difficulty: Easy

--Solution:
select contest_id, round(count(user_id)/(select count(distinct(user_id)) from Users)*100,2) as percentage
from
    Register
group by
    contest_id
order by
    percentage desc, contest_id asc;

-- Approach:
-- Group the Register table by contest_id and count how many users registered
-- for each contest.
-- Use a subquery to count the total number of users in the Users table.
-- Divide the number of registered users by the total number of users,
-- multiply by 100, and round the percentage to 2 decimal places.
-- Finally, sort by percentage descending and contest_id ascending.