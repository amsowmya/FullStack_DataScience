create database iNeuron;

use iNeuron;

create table employees(emp_id int, 
first_name varchar(50),
last_name varchar(50), 
dob date, 
hire_date date,
position varchar(30),
salary float);

select * from employees;

select emp_id from employees;

insert into employees values(1, "sowmya", "am", "2000-10-22", "2023-01-16", "data scientist", 600000);
insert into employees values(2, "sana", "alfonso", "2000-10-22", "2023-01-16", "data scientist", 50000);
insert into employees values(3, "jd", "am", "2003-10-22", "2023-01-16", "data scientist", 600000);
insert into employees values(4, "deepak", "jeevan", "2010-10-22", "2023-01-16", "data scientist", 400000);
insert into employees values(5, "alfonso", "am", "2022-10-22", "2023-01-16", "data scientist", 4787654);

select first_name, last_name, salary from employees;

select first_name, salary from employees
where salary > 50000;

select * from employees order by first_name asc;

SET SQL_SAFE_UPDATES = 0;

update employees set salary=90000 where last_name="jeevan";

alter table employees add dept varchar(30);

delete from employees where emp_id="deepak";

drop table if exists employees;