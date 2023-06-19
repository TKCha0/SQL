SELECT student.*, score.s_score AS 01_score
FROM student, score
WHERE student.s_id = score.s_id
AND c_id = 01
AND s_score < 60
ORDER BY s_score DESC
