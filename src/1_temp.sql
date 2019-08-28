create temp table T(A int);
create temporary table U(A int);
select sql from temp.sqlite_master;
select sql from temp.sqlite_temp_master;

insert into temp.T values(0);
select * from temp.T;

insert into temp.U values(0);
select * from temp.U;

