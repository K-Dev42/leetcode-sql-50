-- LeetCode 1327: List the Products Ordered in a Period
-- Difficulty: Easy

--Solution:
select product_name, sum(unit) as unit
from
    Orders o left join Products p on o.product_id = p.product_id
where 
    order_date between '2020-02-01' and '2020-02-29'
group by product_name
having sum(unit) >= 100;

-- Approach:
-- Join the Orders table with the Products table to get each product's name.
-- Filter the orders to only include those placed during February 2020.
-- Group the rows by product_name and sum the number of units ordered.
-- Use HAVING to keep only products with at least 100 units ordered.