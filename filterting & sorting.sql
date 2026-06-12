show databases;
use bankingdb;

select *
From accounts
where accounttype IN  ('savings','current');

Select *
from accounts
order by balance desc
limit 5;

Select *
from accounts
where accounttype ='savings'
order by balance desc
limit 3;

-- customers whose name starts with A
select *from customers where firstname like 'A%';

select *from customers where lastname like '%kar';

select *from customers where Email like '%gmail%';

select *from Transactions order by TransactionDate DESC;

select *
from customers
LIMIT 5 OFFSET 2;

-- string function
select firstname,Lastname,concat(firstname," ",Lastname) as fullname
from customers;

select concat(firstname," ",Lastname) as fullname
from customers;


--2,upper & lower
select upper(firstname) as fisrtname from customers;
select lower(Lastname) as firstname from customers;

-- 3, substrings
select firstname, substring(firstname,2,3) from customers;

-- 4 ,replace 
select replace('hello world','world','sql') as replaced_strings;

 



