SELECT student.*
FROM student
WHERE student.s_id IN 
	(SELECT s_id FROM score WHERE s_id IN 
		(SELECT s_id FROM score WHERE c_id= 01)
	AND c_id = 02)



