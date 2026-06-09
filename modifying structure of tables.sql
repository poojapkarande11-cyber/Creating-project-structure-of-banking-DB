create database dummy_db; -- creating dummy database

show databases;  -- showing databases in server

use dummy_db;

CREATE TABLE employees (
emp_id             INT             PRIMARY KEY,
first_name      VARCHAR(50)        NOT NULL,
last_name       VARCHAR(50)        NOT NULL,
age               INT              CHECK (AGE >=18),
salary           DECIMAL(10,2)      NOT NULL,
city             VARCHAR(50)     DEFAULT 'Mumbai'
);

describe employees;  -- to describe the table structure

-- renaming the table
Alter table employees rename to staff;
Alter table staff rename to employees;

-- Add Column
Alter table employees add column phone INT;

Alter table employees add column Email_id VARCHAR(50);

Alter table employees
change phone contact int not null;

-- modify column
Alter table employees
modify emailid varchar(50) unique;

-- drop column contact
alter table employees drop column emailid;


-- add column
 Alter table employees add column email varchar(50);
 
 show databases;
 
use bankingdb;

alter table customers
ADD Dateofbirth DATE;

describe customers; -- to describe table structure

alter table customers
modify phone varchar(20);

alter table accounts
add constraint chk_minbalance
check (balance >= 1000);

-- add column
alter table customers add column balance decimal(10,2);

alter table accounts
add constraint chk_minbalance
check (balance >= 1000);







 

 




