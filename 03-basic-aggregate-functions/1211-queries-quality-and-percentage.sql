-- LeetCode 1211: Queries Quality and Percentage
-- Difficulty: Easy

--Solution:
select query_name, round(avg(rating/position),2) as quality, round(sum(rating<3)/count(rating)*100,2) as poor_query_percentage
from Queries
group by
    query_name;

-- Approach:
-- Group the rows by query_name so each query can be evaluated separately.
-- Calculate quality as the average of rating divided by position.
-- Count poor queries by summing rows where rating is less than 3.
-- Divide that count by the total number of queries, multiply by 100,
-- and round both results to 2 decimal places.