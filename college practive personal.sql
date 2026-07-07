CREATE DATABASE college;

USE college;

---create table---
CREATE TABLE student (
rollno INT PRIMARY KEY,
Name VARCHAR (50));

SELECT * from Student;

---insert data in table----
INSERT INTO STUDENT (rollno, name)
VALUES
(101, "karan"),
(102,"arjun");


INSERT INTO STUDENT (rollno, name)
VALUES
(103 ,"ram"),
(104 ,"shyam");


CREATE DATABASE xyz_company;

use xyz_company;


CREATE TABLE employee (
id INT PRIMARY KEY,
Name VARCHAR(50),
Salary INT );

INSERT INTO employee (id, name, salary)
VALUES 
(1,"adam", 25000),
(2,"bob",30000),
(3,"casey",40000);

SELECT * FROM employee;

use college;

CREATE TABLE student ( 
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
Grade VARCHAR (1),
city VARCHAR (20));

drop table student;

CREATE TABLE student ( 
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
Grade VARCHAR (1),
city VARCHAR (20));

insert into student ( rollno,name,marks,grade,city)
VALUES 
(101,"anil",78,"C","pune"),
(102,"bhumika",93,"A","mumbai"),
(103,"chetan",85,"B","mumbai"),
(104,"dhruv",96,"A","delhi"),
(105, "emanual",12,"F","delhi"),
(106," farah",82,"B","delhi");

select rollno, name from student;
select name , marks from student;
select *from student;
select distinct city from student;


