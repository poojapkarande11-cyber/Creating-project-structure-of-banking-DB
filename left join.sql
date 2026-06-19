use bankingdb;

-- outer join
select *from customers;
select *from transactions;

select c.CustomerID,
concat(c.FirstName, ' ', c.LastName) as CustomerName,
t.TransactionID,
t.TransactionType,
t.Amount
From Customers c
right JOIN Transactions t ON c.CustomerID = t.CustomerID;


select c.CustomerID,
concat(c.FirstName, ' ', c.LastName) as CustomerName,
t.TransactionID,
t.TransactionType,
t.Amount
From Customers c
left JOIN Transactions t ON c.CustomerID = t.CustomerID;

update transactions set customerID =null where transactionID=310;

select c.CustomerID,
concat(c.FirstName, ' ', c.LastName) as CustomerName,
t.TransactionID,
t.TransactionType,
t.Amount
From Customers c
 inner JOIN Transactions t ON c.CustomerID = t.CustomerID
 where TransactionType = 'Deposit' and t.Amount >5000
 order by t.amount Asc;
 
