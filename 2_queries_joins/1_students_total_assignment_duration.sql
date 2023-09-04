--Student's Total Assignment Duration
--Get the total amount of time that a student has spent on all assignments.
--This should work for any student but use 'Ibrahim Schimmel' for now.
--Select only the total amount of time as a single column.

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';


--alternative answer: 
-- SELECT  SUM(assignment_submissions.duration) as total_duration
-- FROM students 
-- JOIN assignment_submissions ON  assignment_submissions.student_id = students.id
-- WHERE students.name = 'Ibrahim Schimmel';