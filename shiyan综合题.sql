--学生表（学号、姓名、年龄、性别）
create table student(
sno varchar(10) primary key,
sname varchar(20),
sage int,
ssex varchar(5)
)
--教师表（教师工号、姓名）
create table teacher(
tno varchar(10) primary key,
tname varchar(20)
)
--课程表（课程号、课程名、教师工号）
create table course(
cno varchar(10),
cname varchar(20),
tno varchar(10),
constraint pk_course primary key (cno,tno)
)
--成绩表（学号、课程号、分数）
create table sc(
sno varchar(10),
cno varchar(10),
score real,
constraint pk_sc primary key (sno,cno)
)
--初始化学生表
insert into student values ('s001','张三',23,'男');
insert into student values ('s002','李四',23,'男');
insert into student values ('s003','吴鹏',25,'男');
insert into student values ('s004','琴沁',20,'女');
insert into student values ('s005','王丽',20,'女');
insert into student values ('s006','李波',21,'男');
insert into student values ('s007','刘玉',21,'男');
insert into student values ('s008','萧蓉',21,'女');
insert into student values ('s009','陈萧晓',23,'女');
insert into student values ('s010','陈美',22,'女');
--初始化教师表
insert into teacher values ('t001', '刘阳');
insert into teacher values ('t002', '谌燕');
insert into teacher values ('t003', '胡明星');
--初始化课程表
insert into course values ('c001','J2SE','t002');
insert into course values ('c002','Java Web','t002');
insert into course values ('c003','SSH','t001');
insert into course values ('c004','Oracle','t001');
insert into course values ('c005','SQL SERVER 2005','t003');
insert into course values ('c006','C#','t003');
insert into course values ('c007','JavaScript','t002');
insert into course values ('c008','DIV+CSS','t001');
insert into course values ('c009','PHP','t003');
insert into course values ('c010','EJB3.0','t002');
--初始化成绩表
insert into sc values ('s001','c001',78.9);
insert into sc values ('s002','c001',80.9);
insert into sc values ('s003','c001',81.9);
insert into sc values ('s004','c001',60.9);
insert into sc values ('s001','c002',82.9);
insert into sc values ('s002','c002',72.9);
insert into sc values ('s003','c002',81.9);
insert into sc values ('s001','c003',59);