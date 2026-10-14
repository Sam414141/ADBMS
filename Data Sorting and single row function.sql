create database user;

use user;

create table customer(Custid int, custname varchar(15), City varchar(10), product varchar(15), Price int);

desc customer;

alter table customer add primary key(Custid);

insert into customer values(1,"Sam","Satara","Mobile",500000);
insert into customer values(2,"Sahil","Mumbai","PC",300000);
insert into customer values(3,"Vedant","Pune","Laptop",55000);

select * from customer;

select custname,product from customer;
create table CloneTable as select * from customer;
select * from CloneTable;
drop table CloneTable;

-- Where clause

select custname,city from customer;

select custname,city from customer where Custid = 1;

select custname, product , price from customer where price>100000;

select custname, product , price from customer where price<100000;

select * from customer where price>100000;

select * from customer where Custid = 1;

select * from customer where city = "Satara";

select * from customer order by price;

select * from customer order by price desc;

select * from customer order by Custid desc;

select * from customer order by Custid ;

select * from customer order by City asc;

-- Sorting data by multiple columns

select * from customer order by city, price;

select * from customer order by city desc, price asc;

-- Single-row function
-- Case Conversion functions

select upper(custname), lower(product) from customer;

select upper(custname), lower(product) from customer where Custid < 3;

alter table customer add column lastname varchar(20);

select * from customer;

update customer set lastname = "Sonawane" where Custid = 1;
update customer set lastname = "Bansode" where Custid = 2;
update customer set lastname = "Sonawane" where Custid = 3;

-- Concat two columns

select custname, lastname from customer;

select concat(custname, " ", lastname) from customer;

-- Concat column name change
select concat(custname, " ", lastname) as fullname from customer;

-- use of SUBSTR and INSTR functions
select * from customer;
select substr(custname,2) from customer;

-- Instr

select instr(custname, "a") as position from customer;