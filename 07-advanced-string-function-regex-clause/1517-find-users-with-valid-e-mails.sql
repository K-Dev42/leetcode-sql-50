-- LeetCode 1517: Find Users With Valid E-Mails
-- Difficulty: Easy

--Solution:
select *
from Users
where regexp_like(
    mail,
    '^[A-Za-z][A-Za-z0-9_.-]*@leetcode[.]com$',
    'c'
);

-- Approach:
-- Use REGEXP_LIKE to validate the entire email address against the required format.
-- ^[A-Za-z] requires the email prefix to start with a letter.
-- [A-Za-z0-9_.-]* allows the remaining prefix characters to contain letters,
-- digits, underscores, periods, or hyphens.
-- @leetcode[.]com$ requires the email to end exactly with @leetcode.com.
-- The 'c' match type makes the comparison case-sensitive.