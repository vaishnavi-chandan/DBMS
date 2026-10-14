Create database Institute;
show databases;
-- TO USE PARTICULAR DB 
use Institute;

-- TO CREATE TABLE.
Create table Staff(staff_id int ,first_name varchar(30), last_name varchar(30), DOB int, dept_id int);
Create table Depart(dept_id int, dept_name varchar(30), dept_location varchar(50));

-- DESCRIPTION OF TABLE
desc Staff;
desc depart;

-- TO ADD COLUMNS.
Alter table Staff add location varchar(50);
Alter table Staff add joining_year int;
Alter table Staff add (Contact_no int(10), age int);

-- TO MODIFY DATA TYPE. 
Alter table Staff modify first_name text;
Alter table Staff modify last_name varchar(100);

-- DROP a COLUMN FROM AN EXISTING TABLE
Alter table Staff drop column contact_no;

-- CREATE PRIMARY KEY CONSTRAINT BETWEEN TWO TABLES
Alter table Staff add primary key(staff_id);
Alter table Depart add primary key(dept_id); 

-- TO DROP THE PRIMARY KEY
Alter table Depart drop primary key;

-- CREATE FOREIGN KEY CONSTRAINT BETWEEN TWO TABLES
Alter table staff add foreign key(dept_id) references depart(dept_id);
-- Alternate Query-
-- Alter table staff add constraint FK_staff_depart foreign key(dept_id) references depart(dept_id);

-- DROP TABLE, DROP FOREIGN KEY RUN THE ABOVE ONE(hw)

-- TO DROP FOREIGN KEY
Alter table staff drop foreign key FK_staff_depart;-- DIDN"T RUN


RENAME TABLE
Alter table staff rename staff1;
-- ALTERNATE WAY 
Alter table staff1 to staff;




Insert into Staff VALUES 
(101, 'Mahesh', 'Karmarkar', 10/08/1999, 201, 'East Oak street', 2017, 123456789, 30),
(102, 'Yash', 'Agrawal', 10/08/1999, 201, 'East Oak street', 2017, 5486231799, 27),
(103, 'Gaurav', 'Gupta', 10/08/1999, 201, 'East Oak street', 2017, 7894561230, 38),
(104, 'Abhi', 'Ingle', 10/08/1999, 201, 'East Oak street', 2017, 4561237890, 37),
(105, 'Dan', 'Mitchell', 10/08/1999, 201, 'East Oak street', 2017, 7531598462, 33),
(106, 'Anthony', 'Bhatia', 10/08/2000, 201, 'East Oak street', 2025, 7789654123, 25),