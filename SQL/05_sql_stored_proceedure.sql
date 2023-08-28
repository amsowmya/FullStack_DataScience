create database sowmya;
use sowmya;

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

call ranked_students(85);

call get_student(3);

call top_marks(@output);
select @output;

set @stu_code='107';
call display_marks(@stu_code);
select @stu_code;