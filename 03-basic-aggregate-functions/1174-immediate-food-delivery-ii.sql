-- LeetCode 1174: Immediate Food Delivery II
-- Difficulty: Medium

--Solution:
select round(sum(case when d.customer_pref_delivery_date = first_order then 1 else 0 end) / count(first_order) * 100,2) as immediate_percentage
from Delivery d right join (select customer_id, min(order_date) as first_order from Delivery group by customer_id) b on d.customer_id = b.customer_id and d.order_date = first_order;

-- Approach:
-- Use a subquery to find the first order date for each customer using MIN(order_date).
-- Join those first-order dates back to the Delivery table to retrieve each customer's
-- first delivery record.
-- Count a first order as immediate when its preferred delivery date equals its order date.
-- Divide the number of immediate first orders by the total number of first orders,
-- multiply by 100, and round the result to 2 decimal places.