-- LeetCode 197: Rising Temperature
-- Difficulty: Easy

--Solution:
select today.id 
from Weather today join Weather yesterday on today.recordDate = date_add(yesterday.recordDate, interval 1 day) 
where today.temperature > yesterday.temperature;

-- Approach:
-- Join the Weather table to itself so each row for today can be matched
-- with the row from exactly one day earlier.
-- Use DATE_ADD to identify yesterday's date, then compare the temperatures.
-- Return today's id only when today's temperature is higher than yesterday's.