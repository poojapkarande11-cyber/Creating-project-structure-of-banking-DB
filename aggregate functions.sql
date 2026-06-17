use bankingdb;

show tables;
select *from accounts;

select sum(balance) as total_balance from accounts;

select *from accounts;
select avg(balance) as total_balance from accounts;

select *from accounts;
select max(balance) as highest_balance from accounts;

select *from accounts;
select min(balance) as Lowest_balance from accounts;

  -- count
  select *from accounts;
  select count(*) as total_accounts from accounts;
  
  -- group by
  select accountType, SUM(balance) as total_balance from accounts
  group by accountType;
  
   select accountType, SUM(balance) as total_balance from accounts
  group by accountType Order by total_balance asc;
  
  select accountType, SUM(balance) as total_balance from accounts
  group by accountType Order by accountType asc;
  
  select *from transactions;
  select TransactionType, Sum(amount) as total_transaction from transactions
  group by transactionType;
  
  select *from accounts;
  select accountType, sum(balance) as total_balance from accounts
  group by accountType having sum(balance) > 25000;
  
  
  select *from transactions;
  
select TransactionType , sum(amount) as total_amount from Transactions
where TransactionType = "withdrawal";

   select *from accounts;
  select accountType, sum(balance) as total_balance from accounts
  group by accountType having AccountType ='savings' or AccountType = 'current';
  
  