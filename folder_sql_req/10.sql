/* 10. Список курсов, которые определенному студенту читает определенный преподаватель. */
SELECT s.student_name as Name, l.lesson_name as Lesson, t.teacher_name as Teacher
FROM students s
	JOIN students_grade sg
	ON s.student_id = sg.student_id
	JOIN lessons l
	ON l.lesson_id = sg.lesson_id
	JOIN teachers t
	ON t.teacher_id  = l.teacher_id
WHERE s.student_name = "Deborah Mason" AND t.teacher_name = "Jason Gonzales"
GROUP BY l.lesson_name