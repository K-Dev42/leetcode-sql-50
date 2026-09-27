-- LeetCode 1907: Count Salary Categories
-- Difficulty: Medium

--Solution:
select 'High Salary' as category, count(*) as accounts_count
from
    Accounts
where
    income > 50000

union all 

select 'Low Salary' as category, count(*) as accounts_count
from
    Accounts
where
    income < 20000

union all

select 'Average Salary' as category, count(*) as accounts_count
from
    Accounts
where
    income >= 20000 and income <= 50000;

-- Approach:
-- Split the accounts into the three required salary categories.
-- Count the number of accounts in each category using separate SELECT statements.
-- Use UNION ALL to combine the three results while keeping every category,
-- even when its count is 0.