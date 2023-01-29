/* 2. Найти студента с наивысшим средним баллом по определенному предмету.*/
SELECT Name, Lesson,  MAX(Average) as Maximum_avg_grade
FROM (SELECT AVG(sg.grade) as Average, s.student_name as Name, l.lesson_name as Lesson
	  from students_grade sg
		  JOIN students s
		  ON sg.student_id = s.student_id
	  	  JOIN lessons l
		  ON sg.lesson_id = l.lesson_id
	  /* WHERE l.lesson_name = "mathematics" */
	  GROUP BY s.student_name, l.lesson_name)
GROUP BY Lesson