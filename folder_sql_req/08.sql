/* 8. Найти средний балл, который ставит определенный преподаватель по своим предметам.*/
SELECT t.teacher_name as Teacher, ROUND(AVG(sg.grade), 2) as Average_grade, l.lesson_name as Lesson
FROM teachers t
	JOIN students_grade sg
	ON sg.lesson_id = t.teacher_id
	JOIN lessons l
	ON sg.lesson_id = l.lesson_id
WHERE t.teacher_name = "Michelle Turner"