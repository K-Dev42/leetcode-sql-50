-- LeetCode 619: Biggest Single Number
-- Difficulty: Easy

--Solution:
select
    max(n.num) as num
from
    MyNumbers n join (select num, count(*) as appearance
    from MyNumbers
    group by num) k on n.num = k.num
where
    appearance = 1;

-- Approach:
-- Use a subquery to count how many times each number appears.
-- Join those counts back to the original table and keep only numbers
-- that appear exactly once.
-- Use MAX to return the largest single number.