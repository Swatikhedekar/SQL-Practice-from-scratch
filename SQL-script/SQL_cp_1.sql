-- SQL for Data engineer
-- Chapter:1: SQL DDL command
-- create database
create database sales;
use sales;
create table store(
store_id INT,
Store_name varchar(200)
);
-- insert  the values
insert into store(store_id) values (3);
select * from store;

create table store_new(
store_id INT unique,
store_name varchar(200) NOT null);

insert into store_new(store_id,store_name)
values(3,"store_abc");
select * from store_new;

insert into store_new(store_id)
values(3);
select * from store_new;

create table store_new1(
store_id INT unique,
store_name varchar(200) default "abc");

insert into store_new1(store_id)
values(3);
select * from store_new1;

insert into store_new1(store_id,store_name)
values(2,"store_mn");

insert into store_new1(store_id,store_name)
values(1,"store_ml");
select * from store_new1;