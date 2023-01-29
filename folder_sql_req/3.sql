/*Найти средний балл в группах по определенному предмету. Общая таблица для всех групп по всем предметам*/
SELECT sg2.group_name as Group_name, ROUND(AVG(sg.grade), 2) as Averege, l.lesson_name as Lesson_name
FROM students_grade sg
	  JOIN students s
	  ON sg.student_id = s.student_id
	  JOIN study_groups sg2
	  ON sg2.group_id = s.student_group_id
	  JOIN lessons l
	  ON sg.lesson_id = l.lesson_id
/* WHERE sg2.group_name = "second" AND l.lesson_name = "mathematics"  якщо потрибна одна группа або один предмет */
GROUP BY sg2.group_name, l.lesson_name