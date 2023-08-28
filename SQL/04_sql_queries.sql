create table customers(
id int auto_increment,
fname varchar(10),
lname varchar(10),
country varchar(11),
capital varchar(12),
primary key(id)
);

insert into customers(fname, lname, country, capital) values("sam", "am", "india", "delhi"), ("sana", "alfonso", "Aus", "canberra"), ("jd", "deepak", "japan", "tokyo"),
("manj", "anekonda", "maldives", "male"), ("suguna", "mary", "India", "delhi");

select * from customers;

select * from customers
where country='india' or country='maldives';

select * from customers
where country!='india';

select * from customers
where not country='india';

####################################################
# select all the details whose age is between 13 to 35

select * from bank_details
where age >= 13 and age <= 35;

select * from bank_details
where age = 13 between age = 35;

# take out all the age is 60 and job is retired
select * from bank_details
where age<=60 and job='retired';

# education is unknown, marital status is single and balance < 1000
select * from bank_details
where educaton='unknown' and marital='single' and balance<=1000;

# Try ti findout average of balance
# tRY TO Findoput min balance
# max balance
# find out who is having a amx 10 balance (top 10)

select * from bank_details
where max(balance) limit 10;



# Stored procedures, Views, Indexes, CTE, Windows function

