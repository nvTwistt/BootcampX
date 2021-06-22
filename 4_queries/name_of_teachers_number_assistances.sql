SELECT teachers.name AS teacher, cohorts.name AS cohort, COUNT(assistance_requests.teacher_id)AS total_assistances
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN assistance_requests ON student_id = students.id
JOIN teachers ON teachers.id = teacher_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;
