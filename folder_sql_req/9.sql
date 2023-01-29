/* 9. Найти список курсов, которые посещает определенный студент. */
SELECT s.student_name as Name, l.lesson_name as Lesson
FROM students s
	JOIN students_grade sg
	ON s.student_id = sg.student_id
	JOIN lessons l
	ON l.lesson_id = sg.lesson_id
WHERE s.student_name = "Deborah Mason"
GROUP BY l.lesson_name