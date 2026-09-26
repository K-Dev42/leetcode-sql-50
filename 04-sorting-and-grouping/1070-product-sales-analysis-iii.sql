-- LeetCode 1070: Product Sales Analysis III
-- Difficulty: Medium

--Solution:
select s.product_id, first_year, quantity, price
from
    Sales s join (select product_id, min(year) as first_year from Sales group by product_id) p on s.product_id = p.product_id and s.year = p.first_year;

-- Approach:
-- Use a subquery to find the earliest sale year for each product with MIN(year).
-- Join that result back to the Sales table using product_id and the first sale year.
-- Return the product_id, first_year, quantity, and price from that first year.