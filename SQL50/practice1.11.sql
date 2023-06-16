SELECT student.*
FROM student 
WHERE s_id IN 
(SELECT s_id FROM score WHERE s_id NOT IN 
(SELECT s_id FROM score WHERE c_id = 02) 
AND c_id = 1)