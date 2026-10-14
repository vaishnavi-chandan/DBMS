-- Starts a new transaction
/* Begin;
-- or
START TRANSACTION -- To execute multiple statements as a single transaction,
we must explicitly start the transaction.

COMMIT:- Saves all changes made during the transaction.
ROLLBACK:- Undoes all changes made during the transaction.
SAVEPOINT:- Sets a Savepoint withiun a transaction to roll back to later 
ROLLBACK To SAVEPOINT:- Rolls back to aspecific savepoint without affecting earlier changes. */

CREATE DATABASE TCL;
USE TCL;

CREATE TABLE orders(
	order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    status VARCHAR(50)
);
DESC orders;

-- Start the transaction --
SET autocommit = 0; /* in MySQL auto commit mode is enabled by default which means whenever we execute any SQL statement
is automatically commited/*

/* So in such cases succeded transactions are automatically commited.
To diable the auto commit mode we are using this aslo we cannot disable the auto commit mode of DDL Commands.
In many DBMS it is disable ny default */

BEGIN; 
-- or START TRANSACTION;


INSERT INTO orders VALUES(101,'Geet','Pending');
INSERT INTO orders VALUES(102,'Raj','Pending');
commit;
Update orders set customer_name = "Bob" where order_id = 102; 
Rollback;

Select * from orders;
truncate table orders;

-- Step 1; Insert a few orders 
Insert into orders VALUES (103, 'Om', 'Pending');
Insert into orders VALUES (104, 'Sahil', 'Pending');
SAVEPOINT sp1;
select * from orders;

-- Step 2: Update one order 
Update orders SET Status = "Shipped" WHERE order_id = 103;
SAVEPOINT sp2;
ROLLBACK TO SAVEPOINT sp1;

-- Step 3: DELETE another order
DELETE FROM orders WHERE order_id = 102;
SAVEPOINT sp3;

-- We want to undo the delete but keep the update
ROLLBACK TO SAVEPOINT sp1;


