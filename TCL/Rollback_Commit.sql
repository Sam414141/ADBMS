create database TCL;
use TCl;
create table orders(
	order_id int Primary key,
    customer_name varchar(100),
    status varchar(50)
    );
set autocommit=0;
begin;

-- for commit
insert into orders values(101, "Geet", "Pending");
insert into orders values(102, "Bob", "Pending");

select * from orders;
rollback;
commit;

drop table orders;
select * from orders;
commit;
update orders set customer_name = "Raj" where order_id = 102;
Rollback;

-- Savepoint

-- step 1:  Insert a few orders

insert into orders values(103, "John", "Pending");
insert into orders values(104, "B0bby", "Pending");
savepoint sp1;
select * from orders;

-- step 2: Update one order
update orders set status = "Shipped" where order_id = 103;
savepoint sp2;
rollback to sp1;

select * from orders;
-- step 3: Delete another order
delete from orders where order_id = 102;
savepoint sp3;

-- we want to undo the delete but keep the update
rollback to savepoint sp1;
select * from orders;
rollback;

