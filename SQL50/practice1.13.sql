SELECT DISTINCT student.*
FROM student
JOIN score
ON student.s_id = score.s_id
WHERE c_id IN 
(SELECT c_id FROM score WHERE s_id = 01)
AND student.s_id != 1
