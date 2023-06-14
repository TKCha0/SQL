SELECT student.*
FROM student
JOIN score
ON student.s_id = score.s_id
JOIN course
ON score.c_id = course.c_id
JOIN teacher
ON course.t_id = teacher.t_id
WHERE teacher.t_name LIKE " 张 三 ";
