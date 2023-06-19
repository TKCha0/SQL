SELECT student.*
, (SELECT s_score FROM score WHERE student.s_id = score.s_id AND c_id = 01) AS '語文'
, (SELECT s_score FROM score WHERE student.s_id = score.s_id AND c_id = 02) AS '數學'
, (SELECT s_score FROM score WHERE student.s_id = score.s_id AND c_id = 03) AS '英文'
, ROUND(AVG(s_score),2) AS avg_score
FROM student
LEFT JOIN score
ON student.s_id = score.s_id
GROUP BY score.s_id
ORDER BY avg_score DESC
