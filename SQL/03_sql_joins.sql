create database sales;
use sales;

create table person(
id int,
fname varchar(10),
lname varchar(10),
primary key(id)
);

alter table person add age int;

desc person;

create table orders(
orderid int not null,
orderno int not null,
id int,
primary key(orderid),
foreign key(id) references person(id)
);

select * from person;

insert into person values(1, "sam", "am", 22), (2, "sam1", "am1", 44), (3, "sana", "alfo", 1);

insert into orders values(11, 11, 3);

select * from orders;

########## INNER JOIN #################

select * from person as ps inner join orders as od
on ps.id = od.id;

############ LEFT JOIN ################## (The preference is givent to left table, basically it match the data with the left table)
#### LEFT JOIN & LEFT OUTER JOIN are same

select * from person as ps left join orders as od
on ps.id = od.id;

select * from person as ps right join orders as od
on ps.id = od.id;


select * from person as ps left join orders as od
on ps.id= od.id
order by age;

select * from person as ps left join orders as od
on ps.id = od.id
order by age desc;
