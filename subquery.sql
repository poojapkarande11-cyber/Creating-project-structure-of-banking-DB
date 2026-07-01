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