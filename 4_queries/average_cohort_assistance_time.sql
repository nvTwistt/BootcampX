SELECT cohorts.name AS name, AVG(completed_at-started_at) AS average_assistance_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts on cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time ASC;