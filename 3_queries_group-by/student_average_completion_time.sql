SELECT students.name AS student, (assignment_submissions.duration) as average_assignment_duration 
FROM assignment_submissions 
JOIN students ON students.id = student_id 
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;