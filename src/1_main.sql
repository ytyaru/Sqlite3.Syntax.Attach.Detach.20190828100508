create table T(A int);
select sql from      sqlite_master;
select sql from main.sqlite_master;

insert into      T values(0);
insert into main.T values(1);
select * from T;

