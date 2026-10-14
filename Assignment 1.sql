CREATE DATABASE CompanyDB;
USE CompanyDB;
 
CREATE TABLE Employees(EmpID int PRIMARY KEY, EmpName varchar(20), Salary int, JoinDate int);
desc Employees;

CREATE TABLE Departments(DeptID int PRIMARY KEY, DeptName varchar(20));
desc Departments;

ALTER TABLE Employees add Email varchar(100);

ALTER TABLE Departments add dept_location varchar(30);

ALTER TABLE Employees add Phone varchar(10);
ALTER TABLE Employees MODIFY Phone varchar(10) NOT NULL;
ALTER TABLE Employees MODIFY EmpName varchar(100);

ALTER TABLE Departments DROP primary key;
Alter table Departments add primary key(DeptID); 

ALter Table Employees add age int;
ALTER TABLE Employees add DeptID int;

Alter table Employees add foreign key(DeptID) references Departments(DeptID);


ALTER TABLE Employees rename column EmpName to EmployeeName;

ALTER TABLE Employees ADD constraint chk_age CHECK (age >=18);
ALTER TABLE Employees ADD constraint chk_salary CHECK (Salary > 0);

Alter table Employees drop column Phone;
desc EmployeeDetails;

Alter TABLE Employees rename EmployeeDetails;
show tables;

ALTER TABLE EmployeeDetails DROP CHECK chk_age;
ALTER TABLE EmployeeDetails DROP CHECK chk_salary;

-- DROP FOREIGN KEY FIRST FOR DELETING TABLE
Alter table EmployeeDetails Drop foreign key employeedetails_ibfk_1;


DROP TABLE Departments;

DROP database CompanyDB;
Use CompanyDB;




