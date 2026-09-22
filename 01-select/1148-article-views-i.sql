-- LeetCode 1148: Article Views I
-- Difficulty: Easy

--Solution:
select author_id as id 
from Views 
where author_id = viewer_id 
group by author_id 
order by author_id;

-- Approach:
-- Filter the Views table to rows where the author and viewer are the same person.
-- Group by author_id so each author appears only once, even if they viewed
-- their own articles multiple times.
-- Rename author_id to id and sort the result in ascending order.