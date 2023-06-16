SELECT student.*
FROM student
WHERE s_id IN 
(SELECT s_id
FROM score
GROUP BY s_id
HAVING GROUP_CONCAT(c_id) = (SELECT GROUP_CONCAT(c_id) FROM score WHERE s_id = 01))
AND s_id != 01