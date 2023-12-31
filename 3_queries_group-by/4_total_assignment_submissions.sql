--Total Assignment Submissions
--Instruction
--Get the total number of assignment submissions for each cohort.
--Select the cohort name and total submissions.
--Order the results from greatest to least submissions.

SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submissions 
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id 
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC; 