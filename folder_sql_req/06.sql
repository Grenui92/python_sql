/* 6. Найти список студентов в определенной группе. */
SELECT sg.group_name as Group_nunmber, s.student_name as Name
FROM students s
	JOIN study_groups sg
	ON s.student_group_id = sg.group_id
/* WHERE sg.group_name = "first" */
ORDER BY sg.group_id