.echo on

.databases

attach ':memory:' as mem0;
.databases

create temp table T(A int);
.databases

detach main;
detach temp;
detach mem0;
.databases

.echo off

