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


