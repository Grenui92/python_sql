/* 4. Найти средний балл на потоке (по всей таблице оценок) */
SELECT s.student_name as Name, AVG(sg.grade) as 'Averege grade'
FROM students_grade sg
	JOIN students s
	ON sg.student_id = s.student_id
GROUP BY s.student_name