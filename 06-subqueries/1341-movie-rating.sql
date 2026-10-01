-- LeetCode 1341: Movie Rating
-- Difficulty: Medium

--Solution:
(select name as results
from MovieRating mr1 left join Users u on mr1.user_id = u.user_id
group by mr1.user_id 
order by count(mr1.user_id) desc, name asc limit 1)

union all

(select title as results
from MovieRating mr2 left join Movies m on mr2.movie_id = m.movie_id
where year(created_at) = 2020 and month(created_at) = 02
group by mr2.movie_id
order by avg(rating) desc, title asc limit 1);

-- Approach:
-- In the first query, group ratings by user and count how many movies each user rated.
-- Sort by rating count descending and name ascending to handle ties, then return the top user.
-- In the second query, filter ratings to February 2020 and group them by movie.
-- Sort by average rating descending and title ascending to handle ties, then return the top movie.
-- Use UNION ALL to combine both results into a single column.