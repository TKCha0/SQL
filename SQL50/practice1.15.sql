SELECT s_name
FROM student
WHERE s_id NOT IN 
(SELECT student.s_id FROM student 
LEFT JOIN score
ON student.s_id = score.s_id
JOIN course
ON score.c_id = course.c_id
JOIN teacher
ON course.t_id = teacher.t_id WHERE teacher.t_name = ' 张 三 ')