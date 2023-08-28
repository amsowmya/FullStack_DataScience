CREATE DEFINER=`root`@`localhost` PROCEDURE `ranked_students`(in marks float)
BEGIN
select * from student_info where student_info.marks>=marks;
select count(id) as total_students from student_info;
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student`(in n_students int)
BEGIN
select * from student_info limit n_students;
select count(student_code) as total_students from student_info;
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `top_marks`(out highestmarks float)
BEGIN
select max(marks) into highestmarks from student_info;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `display_marks`(inout student_code varchar(20))
BEGIN
select marks into student_code from student_info where student_info.student_code=student_code;
END