-- LeetCode 1683: Invalid Tweets
-- Difficulty: Easy

--Solution:
select tweet_id 
from Tweets 
where length(content) > 15;

-- Approach:
-- Use the LENGTH function to count the number of characters in each tweet.
-- Return the tweet_id for tweets where the content contains more than 15 characters.