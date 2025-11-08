# Transformations

/*
1 Numeric transformation
2. Date Transformation
*/

# we given sales in 10% discount on unit_price
use ecom;
select * from dim_product;

select
	unit_price * 0.90 as "discounted-price",
	unit_price + 10 as "taxed_price",
	unit_price/10 as "fractioned_price",
	round(UNIT_PRICE,1) AS ROUNDED_PRICE,
    unit_price * unit_price as "multiply_price"
FROM
	DIM_PRODUCT;
    
select * from dim_date;

select
	date,
	now() "CURRENT_TIMESTAMP",
    utc_date(),
    utc_time(),
    utc_timestamp()
from 
	dim_date;

#EXTRACT YEAR,MONTH,DAY AND WEEK FROM DATE COLUMN
SELECT DATE FROM DIM_DATE;

SELECT
	DATE,
	YEAR(DATE) "YEAR",
	MONTH(DATE) "MONTH_NUM",
    DAY(DATE) "DAY",
    DAYNAME(DATE),
    weekday(DATE),
    DATE(utc_timestamp())
FROM 
	DIM_DATE;
    
#ADD DATE
SELECT
	DATE,
	YEAR(DATE) "YEAR",
	MONTH(DATE) "MONTH_NUM",
    DAY(DATE) "DAY",
    DAYNAME(DATE),
    weekday(DATE),
    DATE(utc_timestamp()),
    adddate(DATE,2),
    subdate(DATE,2),
    datediff(DATE(UTC_TIMESTAMP()),DATE) "TOTALDAYS"
FROM 
	DIM_DATE;
    
# CUNVER STRIN TO DATE

SELECT
	DATE,
	YEAR(DATE) "YEAR",
	MONTH(DATE) "MONTH_NUM",
    DAY(DATE) "DAY",
    DAYNAME(DATE),
    weekday(DATE),
    DATE(utc_timestamp()),
    adddate(DATE,2),
    subdate(DATE,2),
    datediff(DATE(UTC_TIMESTAMP()),DATE) "TOTALDAYS",
    CAST('2025-01-01'AS DATETIME)
FROM 
	DIM_DATE;
    
  # DATE FORMAT
  SELECT
	DATE,
	date_format(DATE,"%W %M %e %Y") "CONVERTED_DATE"
  FROM
	DIM_DATE;
    
 SELECT
	DATE,
	date_format(DATE,"%M %d %Y") "CONVERTED_DATE"
  FROM
	DIM_DATE;
    
#TYPE_CASTING(changing data types)
SELECT * FROM DIM_CUSTOMER;
        
SELECT
	CUSTOMER_KEY,
	CAST(CUSTOMER_KEY AS CHAR(100)) as"Cust_key_str"
FROM
	DIM_CUSTOMER;
    
--- STRING FUNCTION
SELECT * FROM DIM_CUSTOMER;
SELECT
	*,
	concat(first_name," ",last_name)"FULL_NAME",
    concat_ws(' ',first_name,last_name,CITY) "FULL NAME",
    length(COUNTRY) AS" COUNTRY_SIZE",
    LOWER(CITY),
    substring(EMAIL,1,4),
    REPLACE(EMAIL,"@","%"),
    LEFT(COUNTRY,3),
    RIGHT(COUNTRY,3),
    REVERSE(COUNTRY),
    REPEAT(FIRST_NAME,2)
FROM 
	DIM_CUSTOMER;
    
