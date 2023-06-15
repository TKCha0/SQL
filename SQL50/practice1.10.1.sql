SELECT student.*
FROM student, score AS s1, score AS s2
WHERE s1.c_id = 01 
AND s2.c_id = 02
AND s1.s_id = s2.s_id
AND student.s_id = s1.s_id