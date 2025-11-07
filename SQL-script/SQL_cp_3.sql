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

## top 3 records has higest unit price
select * from dim_product
order by 
	unit_price desc limit 3;

select product_key, product_id, product_name as"Product Name", category
from dim_product;

# grouping(quising)
# avg price and total price by each category
select 
	category, 
	avg(unit_price) "avg_price",
	sum(unit_price) "Total_Price"
from 
	dim_product
group by category;

select 
	brand, 
	avg(unit_price) "avg_price",
	sum(unit_price) "Total_Price"
from 
	dim_product
group by brand;

select 
	category, 
	avg(unit_price) "avg_price",
	sum(unit_price) "Total_Price"
from 
	dim_product
group by category
order by total_price desc;

# fetch those records whose avg price is > 500
select 
	category, 
	avg(unit_price) "avg_price",
	sum(unit_price) "Total_Price"
from 
	dim_product
group by category
having avg_price >500;

# execution flow
/* 1. select the table
2. pronning the table-- filter the records for optimization table
3. grouping the data
4. having if we have condition
5. select everything
6. order by
7. limit the records
*/