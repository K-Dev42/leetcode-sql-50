-- LeetCode 1321: Restaurant Growth
-- Difficulty: Medium

--Solution:
with daily_revenue as (
    select visited_on, sum(amount) as daily_amount
    from Customer
    group by visited_on
    order by visited_on
),

moving_revenue as (
    select visited_on, sum(daily_amount) over (
        order by visited_on
        rows between 6 preceding and current row
    ) as moving_sum, 
    row_number() over(order by visited_on) as rn
    from daily_revenue
    order by visited_on
)

select visited_on, moving_sum as amount, round(moving_sum/7,2) as average_amount from moving_revenue where rn >= 7;

-- Approach:
-- Approach:
-- First, use a CTE to calculate the total revenue for each day.
-- Then use a window function to calculate a 7-day moving sum using the current
-- day and the 6 previous days.
-- Use ROW_NUMBER to identify when a complete 7-day window becomes available.
-- Return only rows starting from the 7th day, and divide the moving sum by 7
-- to calculate the moving average rounded to 2 decimal places.