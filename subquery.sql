use bankingdb;


select *from customers;
select *from transactions;

select c.customerID,c.firstName,c.Email ,t.TransactionID,t.transactionDate,t.Amount from customers c cross join transactions t;

select * from transactions
where Amount > (select avg(Amount) from Transactions);

SELECT
    AccountID,
    AccountType,
    Balance,
    CustomerID
FROM Accounts
WHERE Balance > ( SELECT AVG(Balance) FROM Accounts )
ORDER BY Balance DESC;



select AccountId,AccountType,Balance from accounts where balance>(select avg(balance) from accounts);

select * from transactions
where amount > (select avg(amount) from transactions);


SELECT
    AccountID,
    AccountType,
    Balance,
    CustomerID
FROM Accounts
WHERE AccountID IN
(
    SELECT AccountID
    FROM Transactions
    WHERE TransactionType = 'Deposit'
);

select AccountID,AccountType,Balance,CustomerID from Accounts where balance = ( select max(balance) from accounts);

