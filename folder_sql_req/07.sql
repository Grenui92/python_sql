/* 7. Найти оценки студентов в отдельной группе по определенному предмету. */
SELECT s.student_name as Name, sg.group_name, sg2.grade, l.lesson_name
FROM students s
	JOIN study_groups sg
	ON s.student_group_id = sg.group_id
	JOIN students_grade sg2
	ON s.student_id = sg2.student_id
	JOIN lessons l
	ON sg2.lesson_id = l.lesson_id
WHERE l.lesson_name = "mathematics" AND sg.group_name = "first"