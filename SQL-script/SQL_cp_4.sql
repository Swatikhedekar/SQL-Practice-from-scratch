# JOINS in SQL
/* 1. INNER Joins: Returns records that have matching values in both tables
2. Left join: Returns all records from the left table, and the matched records from the right table
3. Right join: Returns all records from the right table, and the matched records from the left table
4. Cross join: Returns all records when there is a match in either left or right table
5. FULL JOIN: ALL RECORDS ( not supported in mysql)
6. Natural join:
*/

# 1. INNER JOIN
create table order1(
OrderID	INT ,
CustomerID	INT,
price INT
);

CREATE TABLE CUSTOMER(
CustomerID INT,
CustomerName VARCHAR(50),
email	 VARCHAR(100));

# INSERT DATA
INSERT INTO ORDER1 
VALUES
(1,	101	,1000),
(2, 201,1100),
(3, 501,1200);

INSERT INTO customer 
VALUES
(101,	'love'	,'aa'),
(201,	'ansh'	,'bb'),
(301,	'ram'	,'cc');

select * from order1;
select * from customer;

# 1. inner join
select * from order1 o
inner join
 customer c 
 on
	o.CustomerID=c.CustomerID;
    
# only display all columns in order1 
select o.* from order1 o
inner join
 customer c 
 on
	o.CustomerID=c.CustomerID;
    
# left join
select * from order1 o
left join
 customer c 
 on
	o.CustomerID=c.CustomerID;
    
# right join
select * from order1 o
right join
 customer c 
 on
	o.CustomerID=c.CustomerID;
    
# full join--not  support using union to get result of full joins
select * from order1 o
full join
 customer c 
 on
	o.CustomerID=c.CustomerID;

#union
select * from order1 o
left join
 customer c 
 on
	o.CustomerID=c.CustomerID
union
select * from order1 o
right join
 customer c 
 on
	o.CustomerID=c.CustomerID;
