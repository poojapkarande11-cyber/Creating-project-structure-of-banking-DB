	show databases ;
    use dummy_db;
    
    show tables;
    
    insert into employees (emp_id,first_name,last_name,age,salary,city,contact)
    values (1 ,'Rahul','Sharma',22,45000,'Mumbai',9849549559);
    
    Alter table employees modify column contact varchar(20);
    
    select *from employees;
    
    insert into employees (emp_id,first_name,Last_name,age,salary,city,contact)
    values (2,'rakesh','patil',24,65000,'pune',9854239781);
    
    SET SQL_SAFE_UPDATES = 0; -- turn off safe mode
    
    update employees
    set city = "mumbai";
    
    use bankingdb;
    
   INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)
VALUES
(101, 'Priya', 'Patil', 'priya@gmail.com', '9988776655', '2025-05-03', '2000-09-20'),
(103, 'Rahul', 'sharma','rahul@gmail.com', '9854269877', '2025-06-03', '2000-09-21');

 select *from customers;
 
 delete from customers
 where CustomerID =101;
 
 





    
    
 
    
    
    
    
    
    



    

    
    