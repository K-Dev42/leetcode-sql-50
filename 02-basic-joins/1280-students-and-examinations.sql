-- LeetCode 1280: Students and Examinations
-- Difficulty: Easy

--Solution:
select S.student_id, S.student_name ,  Sub.subject_name, count(Ex.subject_name) as attended_exams 
from Students S cross join Subjects Sub left join Examinations Ex on S.student_id = Ex.student_id and Sub.subject_name = Ex.subject_name 
group by S.student_id, Sub.subject_name 
order by S.student_id, Sub.subject_name;  

-- Approach:
-- Use a CROSS JOIN between Students and Subjects to create every possible
-- student-subject combination.
-- Then LEFT JOIN Examinations so combinations with no exams are still kept.
-- Count the matching examination rows for each student and subject,
-- then group and sort the results as required.