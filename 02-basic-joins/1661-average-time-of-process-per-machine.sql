-- LeetCode 1661: Average Time of Process per Machine
-- Difficulty: Easy

--Solution:
select s.machine_id, round(avg(e.timestamp - s.timestamp),3) as processing_time 
from Activity s join Activity e on s.machine_id = e.machine_id and s.process_id = e.process_id 
where s.activity_type = 'start' and e.activity_type = 'end' 
group by s.machine_id;

-- Approach:
-- Join the Activity table to itself so each process start row can be matched
-- with its corresponding end row using machine_id and process_id.
-- Subtract the start timestamp from the end timestamp to get each process duration.
-- Then calculate the average duration for each machine and round it to 3 decimal places.