-- LeetCode 1045: Customers Who Bought All Products
-- Difficulty: Medium

--Solution:
select a.customer_id
from 
    (select customer_id, count(distinct(product_key)) as type_amount from Customer group by customer_id) a
where type_amount = (select count(product_key) from Product);

-- Approach:
-- Use a subquery to count how many distinct products each customer has purchased.
-- Compare that count with the total number of products in the Product table.
-- Return only customers whose purchased product count matches the total product count.