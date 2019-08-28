# スキーマ名間においてテーブル名が一意ならスキーマ名を省略できる
attach ':memory:' as mem;
create      table     T(A int);
create temp table     U(A int);
create      table mem.V(A int);
insert into T values(0);
insert into U values(0);
insert into V values(0);

.echo on
select * from T left join U on T.A = U.A;
select * from T left join V on T.A =  V.A;
select * from U left join V on U.A =  V.A;
.echo off

