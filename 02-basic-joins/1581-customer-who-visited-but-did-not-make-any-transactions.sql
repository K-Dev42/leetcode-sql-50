-- LeetCode 1581: Customer Who Visited but Did Not Make Any Transactions
-- Difficulty: Easy

--Solution:
select customer_id, count(*) as count_no_trans 
from Visits left join Transactions on Visits.visit_id = Transactions.visit_id 
where transaction_id is null 
group by customer_id;

-- Approach:
-- Use a LEFT JOIN to keep every visit, including visits with no matching transaction.
-- Rows with no transaction will have a NULL transaction_id.
-- Filter for those NULL values, then group by customer_id and count how many
-- transaction-free visits each customer made.