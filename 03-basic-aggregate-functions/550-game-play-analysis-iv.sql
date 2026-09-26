-- LeetCode 550: Game Play Analysis IV
-- Difficulty: Medium

--Solution:
select round(sum(case when next_log_in_date is not null then 1 else 0 end) / count(distinct(a.player_id)),2) as fraction
from Activity a left join (select player_id, date_add(min(event_date), interval 1 day) as next_log_in_date from Activity group by player_id) b on a.player_id = b.player_id and a.event_date = next_log_in_date;

-- Approach:
-- Use a subquery to find each player's first login date, then add 1 day
-- to determine the date they would need to return.
-- LEFT JOIN that date back to the Activity table for each player.
-- If a matching row exists, the player logged in again the next day.
-- Count those players, divide by the total number of distinct players,
-- and round the fraction to 2 decimal places.