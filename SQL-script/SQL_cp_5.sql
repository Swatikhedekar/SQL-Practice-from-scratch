# DML commands:

/*
1. insert command
2. update command
3. delete command: used to delete perticular record
*/
use ecom;
select * from customer;
update customer
set CustomerName ='sam'
where
	CustomerID=101;
    
# delete command
delete from customer
where email='aa';