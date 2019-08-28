attach ':memory:' as mem0;

create table mem0.T(A int);
select sql from mem0.sqlite_master;

insert into mem0.T values(0);
select * from mem0.T;

