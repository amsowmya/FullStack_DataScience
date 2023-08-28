drop table customer_info;
show tables;

create table customer_info(
id int auto_increment,
first_name varchar(30),
last_name varchar(30),
salary int,
primary key(id)
);

describe customer_info;

select * from customer_info;

insert into customer_info(first_name, last_name, salary) values("man", "bas", 343434);
insert into customer_info(first_name, last_name, salary) values("sana", "am", 898989);

insert into customer_info values(5, "sam", "am", 90000);
insert into customer_info(first_name, last_name, salary) values("jd", "deepak", 76876);

#===============================================================================-- 

show tables;

create table cust_info(
id int auto_increment,
first_name varchar(30),
last_name varchar(30),
salary int,
primary key(id)
);

## Constraint Not Null

describe cust_info;

insert into cust_info(first_name, last_name, salary) values
("sunny", "savita", 898989),
("krish", "naik", 232323),
("sowmya", "am", 342343),
("dhruv", "varu", null);

select * from cust_info;

#====================================================================
select * from cust_info where salary is null;

update cust_info 
set salary=45000 
where id=4;

alter table cust_info modify column salary float not null;

select * from cust_info;

describe cust_info;

############################# SQL Constraint Unique #################################

create table emp(
id int,
house_no int unique,
pancard int unique,
f_name varchar(25),
l_name varchar(12),
salary float not null,
primary key(id)
);

desc emp;

# combine two column and make it as unique
alter table emp 
add constraint uc_employee unique(pancard, l_name);

insert into emp(id, house_no, pancard, f_name, l_name, salary) values(1,1,1,"sam", "am", 20000);
insert into emp values(2,2,2,"sam1", "am", 29000);

select * from emp;

###################################

create table student(id int auto_increment,
f_name varchar(10),
l_name varchar(10),
primary key(id));

desc student;

# Add constraint
alter table student
add constraint uc_student unique(f_name, l_name);

insert into student(f_name, l_name)  values("sam", "am"), ("sam", "am");

# Delete constraint
alter table student
drop constraint uc_student;

##############################################################

create table person(
id int not null,
fname varchar(25),
lname varchar(12),
age int,
primary key(id)
);

describe person;

# Delete primary key
alter table person
drop primary key;

alter table person
add constraint pk_person primary key(id, lname);

insert into person values(1, "sam", "am", 28), (2, "sam", "am", 28);

alter table person
drop primary key;

desc person;



