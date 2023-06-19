SELECT student.s_name, student.s_id, AVG(score.s_score) avg_s
FROM student
JOIN score
ON student.s_id = score.s_id 
WHERE s_score < 60 
GROUP BY s_id 
HAVING COUNT(s_score) > 1