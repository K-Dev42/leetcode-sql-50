-- LeetCode 1934: Confirmation Rate
-- Difficulty: Medium

--Solution:
select S.user_id, round(ifnull(sum(C.action = 'confirmed')/count(S.user_id),0),2) as confirmation_rate
from Signups S left join Confirmations C on S.user_id = C.user_id
group by
    S.user_id

-- Approach:
-- Use a LEFT JOIN so every signed-up user is included, even if they have
-- no confirmation records.
-- SUM(C.action = 'confirmed') counts how many confirmation attempts were successful.
-- Divide that by the total number of confirmation records for each user.
-- Use IFNULL to return 0 for users with no confirmations, then round the result
-- to 2 decimal places.