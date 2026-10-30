-- LeetCode 1667: Fix Names in a Table
-- Difficulty: Easy

--Solution:
select user_id,
concat(
    upper(substring(name,1,1)),
    lower(substring(name,2))) as name from Users order by user_id;

-- Approach:
-- Use SUBSTRING(name, 1, 1) to extract the first character of the name
-- and convert it to uppercase.
-- Use SUBSTRING(name, 2) to take the rest of the name starting from
-- the second character and convert it to lowercase.
-- Combine both parts with CONCAT, then sort the result by user_id.