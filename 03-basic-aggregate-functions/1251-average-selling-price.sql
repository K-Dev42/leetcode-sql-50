-- LeetCode 1251: Average Selling Price
-- Difficulty: Easy

--Solution:
select P.product_id, ifnull(round(sum(price*units) / sum(units),2),0) as average_price
from Prices P left join UnitsSold U on P.product_id = U.product_id and purchase_date between start_date and end_date
group by
    P.product_id;

-- Approach:
-- Join each product price period with the units sold during that date range.
-- Multiply price by units to calculate the total revenue for each sale period.
-- Divide total revenue by total units sold to get the weighted average selling price.
-- Use IFNULL to return 0 for products with no sales, then round to 2 decimal places.