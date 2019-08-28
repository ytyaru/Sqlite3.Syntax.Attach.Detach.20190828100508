attach ':memory:' as mem;

create      table     T(A int);
create temp table     T(A int);
create      table mem.T(A int);
insert into main.T values(0);
insert into temp.T values(0);
insert into  mem.T values(0);

.echo on
select * from main.T left join temp.T on main.T.A = temp.T.A;
select * from main.T left join  mem.T on main.T.A =  mem.T.A;
select * from temp.T left join  mem.T on temp.T.A =  mem.T.A;
.echo off

