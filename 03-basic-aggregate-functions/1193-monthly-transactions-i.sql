-- LeetCode 1193: Monthly Transactions I
-- Difficulty: Medium

--Solution:
select date_format(trans_date, '%Y-%m') as month, country, count(id) as trans_count, sum(state = 'approved') as approved_count, sum(amount) as trans_total_amount, sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
from transactions
group by
    month, country;

-- Approach:
-- Group transactions by month and country.
-- Count all transactions and use SUM(state = 'approved') to count approved ones.
-- Sum the transaction amounts for the total amount.
-- Use CASE WHEN to sum only the amounts from approved transactions.