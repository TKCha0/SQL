SELECT student.*
FROM student
WHERE s_id NOT IN 
(SELECT s_id
FROM score
JOIN course
ON score.c_id = course.c_id
WHERE course.t_id = (SELECT t_id FROM teacher WHERE t_name = " 张 三 ")
)