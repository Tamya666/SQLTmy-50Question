# 查询姓“马”的老师的个数
SELECT
	count( DISTINCT t_id ) 
FROM
	teacher 
WHERE
	t_name LIKE "马%"