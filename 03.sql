# 查询所有学生的学号、姓名、选课数、总成绩
SELECT
	a.s_id,
	a.s_name,
	count( b.c_id ),
 	sum( CASE WHEN b.s_score IS NULL THEN 0 ELSE b.s_score END ) 
FROM
	student AS a
	LEFT JOIN score AS b ON a.s_id = b.s_id 
GROUP BY
	s_id,
	a.s_name