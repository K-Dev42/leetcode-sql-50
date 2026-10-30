-- LeetCode 196: Delete Duplicate Emails
-- Difficulty: Easy

--Solution:
delete p1.*
from
    Person p1 join Person p2 on p1.email = p2.email and p1.id > p2.id;

-- Approach:
-- Join the Person table to itself using matching email addresses.
-- For duplicate emails, compare the IDs and identify the row with the larger ID.
-- Delete that larger-ID row so only the duplicate record with the smallest ID remains.