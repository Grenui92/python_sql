/* 1. Найти 5 студентов с наибольшим средним баллом по всем предметам. */
SELECT s.student_name as 'Name', AVG(sg.grade)  as 'Average mark'
FROM students_grade sg INNER JOIN students s
ON sg.student_id = s.student_id
GROUP BY s.student_id
ORDER BY AVG(sg.grade) DESC LIMIT 5