-- LeetCode 626: Exchange Seats
-- Difficulty: Medium

--Solution:
select 
    case
        when id % 2 = 1 and id != (select max(id) from Seat) then id + 1
        when id % 2 = 0 then id - 1
        else id
    end as id, student
from
    Seat
order by
    id;

-- Approach:
-- Use a CASE expression to swap each pair of consecutive seat IDs.
-- Odd IDs move forward by 1, while even IDs move back by 1.
-- If the total number of students is odd, keep the final odd seat unchanged
-- by checking it against the maximum id in the table.
-- Sort the result by the updated id.