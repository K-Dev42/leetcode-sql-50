-- LeetCode 1757: Recyclable and Low Fat Products
-- Difficulty: Easy

--Solution:
select product_id 
from Products 
where low_fats = 'Y' and recyclable = 'Y';


-- Approach:
-- Filter the Products table for rows where the product is both
-- low fat and recyclable, then return the matching product IDs.