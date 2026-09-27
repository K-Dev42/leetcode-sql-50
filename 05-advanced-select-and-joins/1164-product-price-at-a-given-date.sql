-- LeetCode 1164: Product Price at a Given Date
-- Difficulty: Medium

--Solution:
select p.product_id, ifnull(
    (select new_price
    from
        Products p2
    where p2.product_id = p.product_id and p2.change_date <= '2019-08-16'
    order by
        change_date desc
    limit 1)
,10) as price
from
    Products p
group by
    p.product_id;

-- Approach:
-- For each product, use a correlated subquery to find the most recent
-- price change on or before 2019-08-16.
-- Sort the matching price changes by change_date descending and take the latest one.
-- If no price change exists before that date, use the default starting price of 10.