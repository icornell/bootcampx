--Non Gmail Students
--Get all of the students without a gmail.com account and a phone number.
--Get their name, email, id, and cohort_id.

SELECT name, email, id, cohort_id
FROM students
WHERE phone IS NULL
AND email NOT LIKE '%gmail.com'