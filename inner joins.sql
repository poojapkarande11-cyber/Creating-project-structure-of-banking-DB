use bankingdb;

show tables;
select *from customers;
select *from transactions;
-- customer :id, first name,transaction id,type , amount

select c.CustomerId,C.FirstName,t.TransactionID,t.TransactionType,t.Amount
from customers as c inner join transactions as t
on c.CustomerID=t.CustomerID
where TransactionType in ('Deposit','withdrawal');




use bankingdb;
select * from transactions;

alter table transactions add column CustomerID int;

alter table transactions
Add foreign key (CustomerID) references customers(CustomerID);

update transactions set CustomerID=102
where TransactionID in (303,304,310);

update transactions set CustomerID=101
where TransactionID in (301,302,309,305);

update transactions set CustomerID=108
where TransactionID =308;

update transactions set CustomerID=107
where TransactionID =307;

update transactions set CustomerID=106
where TransactionID =306;

 select TransactionType, sum(Amount) as total_Amount from Transactions
  group by TransactionType having TransactionType ='withdrawal' or TransactionType = 'Deposit';