-- LeetCode 1527: Patients With a Condition
-- Difficulty: Easy

--Solution:
select patient_id, patient_name, conditions
from Patients
where conditions like 'DIAB1%' or conditions like '% DIAB1%'

-- Approach:
-- Use LIKE to find condition codes that start with the DIAB1 prefix.
-- The first condition checks when DIAB1 appears at the beginning of the string.
-- The second condition checks when DIAB1 appears after a space, meaning it starts
-- another condition code later in the list.