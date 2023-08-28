create table student_info(
id int,
student_code varchar(20),
fname varchar(20),
subjects varchar(30),
marks float);


show tables;

insert into student_info values(10, "100", "sam", "Data Science", 99), 
(11, "101", "sana", "Machine learning", 100),
(12, "102", "pooja", "Deep learning", 45),
(13, "103", "dev", "Physics", 66),
(14, "104", "jd", "Chemistry", 90),
(15, "105", "vikram", "Biology", 76),
(16, "106", "vikas", "Maths", 34),
(17, "107", "tushar", "Machine learning", 72);

select * from student_info;


create index idx_firstname
on student_info(fname);

select * from student_info where fname='sam';

alter table student_info
drop index idx_firstname;