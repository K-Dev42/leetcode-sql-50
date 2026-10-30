-- LeetCode 585: Investments in 2016
-- Difficulty: Medium

--Solution:
with sum_by_2015 as (
    select round(sum(tiv_2016),2) as tiv_2016
    from Insurance 
    where (lat, lon) in (select lat, lon from Insurance group by lat, lon having count(*) =1) 
    and tiv_2015 in (select tiv_2015 from Insurance group by tiv_2015 having count(*) != 1)
    group by tiv_2015
)

select round(sum(tiv_2016),2) as tiv_2016 from sum_by_2015;

-- Approach:
-- Find policies whose latitude and longitude combination appears only once,
-- ensuring that each qualifying policy has a unique location.
-- Also keep only policies whose tiv_2015 value appears more than once.
-- Sum the tiv_2016 values for the qualifying policies and round the final
-- result to 2 decimal places.