-- LeetCode 602: Friend Requests II: Who Has the Most Friends
-- Difficulty: Medium

--Solution:
with friend_accepted as (
    select accepter_id, count(accepter_id) as accepted_request 
    from RequestAccepted
    group by accepter_id
    order by accepter_id
),

request_num as (
    select requester_id, count(requester_id) as request_amount
    from RequestAccepted
    group by requester_id
    order by requester_id
),

action_count as (
    select * from friend_accepted
    union all
    select * from request_num
)

select accepter_id as id, sum(accepted_request) as num
from action_count
group by id
order by num desc
limit 1;

-- Approach:
-- Count how many accepted requests each user received and how many requests
-- each user sent.
-- Combine both sets of counts with UNION ALL because either side of a friendship
-- contributes to the user's total number of friends.
-- Group the combined results by user, sum their total friendships,
-- then sort descending and return the user with the highest count.