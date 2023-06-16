SELECT student.*
FROM student
LEFT JOIN score
ON student.s_id = score.s_id
GROUP BY score.s_id
HAVING COUNT(score.c_id) < 3
