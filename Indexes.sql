create database Employee;
use Employee;
create table Employee (EmpID int primary key, FirstName varchar(10),LastName varchar(10), EmpAge int, Salary int);

-- Adding Constraints
alter table Employee add constraint chk_EmpAge_salary check(EmpAge>20 AND Salary >=5000);

insert into Employee values(1,"Sumit","Sonawane",21,10100);
show create table Employee;

select * from Employee;

-- Droping Constraints
Alter table Employee drop check chk_EmpAge_Salary;

-- Adding constraint without name 
alter table Employee add check (Salary >=5000);

-- Check the contraints are applaid or not 
show create table Employee;

-- Now we have not given any name to check contraints to check that name use 
show create table Employee;
-- then hover on result and check the name assign by the system to that contraint the drop it

alter table Employee drop check employee_chk_1 ;




-- Index
select * from Employee;
create index Demoindex on Employee(FirstName);
show indexes from Employee;

-- Multiple indexing
create index Demoindex2 on Employee(FirstName, LastName);
show indexes from Employee;

-- Droping Indexes
drop index Demoindex on Employee;
drop index Demoindex2 on Employee;
show indexes from Employee;
