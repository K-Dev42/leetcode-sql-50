-- LeetCode 595: Big Countries
-- Difficulty: Easy

--Solution:
select name, population, area 
from World 
where area >= 3000000 or population >= 25000000;

-- Approach:
-- Select the country's name, population, and area from the World table.
-- A country is considered big if its area is at least 3,000,000
-- or its population is at least 25,000,000.