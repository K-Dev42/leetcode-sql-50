-- LeetCode 1484: Group Sold Products By The Date
-- Difficulty: Easy

--Solution:
select sell_date, count(distinct product) as num_sold, group_concat(
    distinct product order by product separator ","
) as products
from Activities 
group by sell_date;

-- Approach:
-- Group the rows by sell_date so each date is handled separately.
-- Count the distinct products sold on each date.
-- Use GROUP_CONCAT to combine the distinct product names into one string,
-- sorting them alphabetically and separating them with commas.