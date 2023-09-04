--Large Cohorts
--Get all cohorts with 18 or more students.
--Select the cohort name and the total students.
--Order by total students from smallest to greatest.

SELECT cohorts.name AS cohort_name, COUNT(*) AS total_students
FROM students
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING COUNT(*) >= 18
ORDER BY total_students;
