/* 2.2 Оценки студентов в определенной группе по определенному предмету на последнем занятии. */
SELECT s.student_name as Name, l.lesson_name as Lesson, sg.group_name as Group_name, MAX(sg2.create_at) as Create_time
FROM students s
	JOIN study_groups sg
	ON s.student_group_id = sg.group_id
	JOIN students_grade sg2
	ON s.student_id = sg2.student_id
	JOIN lessons l
	ON l.lesson_id = sg2.lesson_id
WHERE l.lesson_name = "mathematics" AND sg.group_name = "first"
GROUP BY s.student_name
