--学生表
CREATE TABLE `Student`(
`s_id` VARCHAR(20),
`s_name` VARCHAR(20) NOT NULL DEFAULT '',
`s_birth` VARCHAR(20) NOT NULL DEFAULT '',
`s_sex` VARCHAR(10) NOT NULL DEFAULT '',
PRIMARY KEY(`s_id`)
);
--课程表
CREATE TABLE `Course`(
`c_id` VARCHAR(20),
`c_name` VARCHAR(20) NOT NULL DEFAULT '',
`t_id` VARCHAR(20) NOT NULL,
PRIMARY KEY(`c_id`)
);
--教师表
CREATE TABLE `Teacher`(
`t_id` VARCHAR(20),
`t_name` VARCHAR(20) NOT NULL DEFAULT '',
PRIMARY KEY(`t_id`)
);
--成绩表
CREATE TABLE `Score`(
`s_id` VARCHAR(20),
`c_id` VARCHAR(20),
`s_score` INT(3),
PRIMARY KEY(`s_id`,`c_id`)
);
--插入学生表测试数据
insert into student(s_id,s_name,s_birth,s_sex) 
values('0001' , '猴子' , '1989-01-01' , '男');

insert into student(s_id,s_name,s_birth,s_sex) 
values('0002' , '猴子' , '1990-12-21' , '女');

insert into student(s_id,s_name,s_birth,s_sex) 
values('0003' , '马云' , '1991-12-21' , '男');

insert into student(s_id,s_name,s_birth,s_sex) 
values('0004' , '王思聪' , '1990-05-20' , '男');

--课程表测试数据
INSERT INTO course ( c_id, c_name, t_id )
VALUES
	( '0001', '语文', '0002' );
INSERT INTO course ( c_id, c_name, t_id )
VALUES
	( '0002', '数学', '0001' );
INSERT INTO course ( c_id, c_name, t_id )
VALUES
	( '0003', '英语', '0003' );

--教师表测试数据
-- 教师表：添加数据
 insert into teacher(t_id,t_name) 
values('0001' , '孟扎扎');
-- 
insert into teacher(t_id,t_name) 
values('0002' , '马化腾');

-- 这里的教师姓名是空值（null）
insert into teacher(t_id,t_name) 
values('0003' , null);

-- 这里的教师姓名是空字符串（''）
insert into teacher(t_id,t_name) 
values('0004' , '');

--成绩表测试数据
INSERT INTO score ( s_id, c_id, s_score )
VALUES
	( '0001', '0001', 80 );
INSERT INTO score ( s_id, c_id, s_score )
VALUES
	( '0001', '0002', 90 );
INSERT INTO score ( s_id, c_id, s_score )
VALUES
	( '0001', '0003', 99 );
INSERT INTO score ( s_id, c_id, s_score )
VALUES
	( '0002', '0002', 60 );
INSERT INTO score ( s_id, c_id, s_score )
VALUES
	( '0002', '0003', 80 );
INSERT INTO score ( s_id, c_id, s_score )
VALUES
	( '0003', '0001', 80 );

