SELECT student.s_id, student.s_name, COUNT(score.c_id) AS course_num, SUM(score.s_score) AS score_num
FROM student
LEFT JOIN score
ON student.s_id = score.s_id
GROUP BY score.s_id;