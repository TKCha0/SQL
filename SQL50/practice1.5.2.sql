SELECT student.s_id, student.s_name, ROUND(AVG(IFNULL(score.s_score,0)),2) AS avg_score
FROM student
LEFT JOIN score
ON student.s_id = score.s_id
GROUP BY score.s_id
HAVING avg_score < 60