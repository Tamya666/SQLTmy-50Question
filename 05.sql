# 查询没学过“马化腾”老师课的学生的学号、姓名
# method 1:
select s_id,s_name from Student where s_id not in(
	select s_id from Score 
		where c_id = (
			select c_id from Course where t_id = (
				select t_id from Teacher where t_name = '马化腾'
			)
	)
)

# method 2:
select s_id,s_name from Student where s_id not in(
	select s_id from Score as a inner join Course as b
	on a.c_id = b.c_id 
		inner join Teacher as c
		on b.t_id = c.t_id  where t_name = "马化腾"
)