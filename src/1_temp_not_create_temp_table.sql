-- 一時テーブルは`temp`スキーマ名にのみ作れる。
-- 指定スキーマ名には作れない。
create temp table main.T(A int);

attach ':memory:' as mem;
create temp table mem.T(A int);

