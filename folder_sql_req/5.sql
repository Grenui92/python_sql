/* 5. Найти какие курсы читает определенный преподаватель. */
SELECT t.teacher_name as Teacher, l.lesson_name as Lesson
	FROM teachers t
	JOIN lessons l
	ON t.teacher_id = l.lesson_id
/* WHERE t.teacher_name = 'Michelle Turner' */