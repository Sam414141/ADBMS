create database Demo1;

use demo1;
create table students(
Student_Id INT, Name varchar(50),
Age INT,
Course varchar(50)
);

describe students;
select * from students;

insert into students values(1,"Sam",18,"Python");
insert into students values(2,"Rohit",18,"Java");
insert into students values(3,"Abhi",18,"Go");
insert into students values(4,"Samarth",18,"C");
insert into students values(5,"Sumit",18,"Cpp");

set sql_safe_updates=0;
update Students Set Age = 20 where Student_Id =1;
