# メモリからファイルへマージする
attach ':memory:' as m;
attach './a.db' as f;

create table m.users(id integer primary key, name text not null);
create table f.users(id integer primary key, name text not null);

insert into m.users(name) values('Yamada');

begin transaction;
insert into f.users(name) select name from m.users;
delete from m.users;
commit;

insert into m.users(name) values('Suzuki');
insert into m.users(name) values('Tanaka');

begin transaction;
insert into f.users(name) select name from m.users;
delete from m.users;
commit;

.echo on
select * from f.users;
select * from m.users;
.echo off

