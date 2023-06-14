SELECT student.s_id, student.s_name, ROUND(AVG(score.s_score),2) AS avg_score
FROM student
JOIN score
ON student.s_id = score.s_id
GROUP BY score.s_id
HAVING avg_score < 60
UNION
SELECT student.s_id, student.s_name, 0 AS avg_score
FROM student
WHERE student.s_id NOT IN (SELECT DISTINCT score.s_id FROM score)