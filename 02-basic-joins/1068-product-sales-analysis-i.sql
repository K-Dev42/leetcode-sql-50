-- LeetCode 1068: Product Sales Analysis I
-- Difficulty: Easy

--Solution:
select product_name, year, price 
from Sales left join Product on Sales.product_id = Product.product_id;

-- Approach:
-- Join the Sales table with the Product table using product_id.
-- This allows each sale to include the corresponding product name
-- while keeping the year and price information from the Sales table.