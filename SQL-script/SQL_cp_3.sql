## Chap:3
use ecom;

select count(*) from dim_customer;
select count(*) from dim_date;
select count(*) from dim_product;
select count(*) from dim_store;
select count(*) from fact_sales;

select * from dim_customer;
select * from dim_date;
select * from dim_product;
select * from dim_store;
select * from fact_sales;

## select customer_id and email column from dim_customer table
SELECT CUSTOMER_ID,EMAIL FROM DIM_CUSTOMER;

## GET ONLY TOP 10 RECORDS
SELECT CUSTOMER_ID,EMAIL FROM DIM_CUSTOMER LIMIT 20;

--- WHERE CLAUSE (CONDITION)
SELECT * FROM DIM_CUSTOMER 
WHERE GENDER='F';

SELECT COUNT(*) FROM DIM_CUSTOMER 
WHERE GENDER='F';

## operators(and)
SELECT * FROM DIM_CUSTOMER
WHERE 
	(GENDER='F') AND (COUNTRY='FRANCE');
    
SELECT * FROM DIM_CUSTOMER
WHERE 
	(GENDER='F') AND (COUNTRY='FRANCE') AND JOIN_DATE> '2022-01-01';

#  operatore(or)
SELECT * FROM DIM_CUSTOMER
WHERE 
	(GENDER='F') AND ((COUNTRY='FRANCE') or (JOIN_DATE> '2022-01-01'));

## opearator(like)
## all customer whose names starting from letter 's'
select * from dim_customer
where
	first_name like 's%';
    
select * from dim_customer
where
	first_name like 't%y';

# all customer name staring from t and 4rth alphabet is fand last letter is y
select * from dim_customer
where
	first_name like 't__f%y';

# sorting

select * from dim_product;
select * from dim_product
order by 
	unit_price desc;
    
select * from dim_product
order by 
	unit_price desc limit 3;

select product_key, product_id, product_name as"Product Name", category
from dim_product;

# grouping
select 
	category, 
	avg(unit_price) "avg_price",
	sum(unit_price) "Total_Price"
from 
	dim_product
group by category;

select 
	category, 
	avg(unit_price) "avg_price",
	sum(unit_price) "Total_Price"
from 
	dim_product
group by category
order by total_price desc;

select 
	category, 
	avg(unit_price) "avg_price",
	sum(unit_price) "Total_Price"
from 
	dim_product
group by category
having avg_price >500;