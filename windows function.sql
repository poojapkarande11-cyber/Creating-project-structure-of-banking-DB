-- create database IPL
create database IPL;

-- use database
use IPL;


-- create table and records
CREATE TABLE IPL_Batting (
    match_no  INT,
    player    VARCHAR(50),
    team      VARCHAR(30),
    runs      INT
);


INSERT INTO IPL_Batting VALUES
(1, 'Rohit Sharma',  'Mumbai Indians',    45),
(2, 'Rohit Sharma',  'Mumbai Indians',    12),
(3, 'Rohit Sharma',  'Mumbai Indians',    78),
(1, 'Ishan Kishan',  'Mumbai Indians',    30),
(2, 'Ishan Kishan',  'Mumbai Indians',    55),
(3, 'Ishan Kishan',  'Mumbai Indians',    20),
(1, 'Virat Kohli',   'Royal Challengers', 62),
(2, 'Virat Kohli',   'Royal Challengers', 40),
(3, 'Virat Kohli',   'Royal Challengers', 101),
(1, 'Faf du Plessis','Royal Challengers', 25),
(2, 'Faf du Plessis','Royal Challengers', 33),
(3, 'Faf du Plessis','Royal Challengers', 18);

select * from IPL_Batting;


group by rows-----
select team , sum(runs) as total_runs
from IPL_batting
group by team;


window function
select match_no,player,team,runs,
sum(runs) over(partition by team) as Team_total_runs
from IPL_batting;


select match_no, player,team,runs,
row_number() over(order by runs desc ) as row_num
from IPL_batting
where match_no = 3;

use bankingdb;

-- Inserting records into Loans
INSERT INTO Loans
(LoanID, LoanAmount, InterestRate, StartDate, EndDate, CustomerID)
VALUES
(301, 500000, 8.50, '2025-01-15', '2030-01-15', 101),
(302, 300000, 9.25, '2025-02-10', '2028-02-10', 102),
(303, 750000, 8.75, '2025-03-20', '2032-03-20', 103),
(304, 250000, 10.00, '2025-04-05', '2029-04-05', 104),
(305, 1000000, 7.95, '2025-05-12', '2035-05-12', 105);

Select
    LoanID,
    CustomerID, LoanAmount, RANK() OVER(
        ORDER BY LoanAmount DESC
    ) AS LoanRank
FROM Loans;



SELECT
    LoanID,
    CustomerID,
    LoanAmount,
    DENSE_RANK() OVER(
        ORDER BY LoanAmount DESC
    ) AS DenseRank
FROM Loans;

SELECT
    LoanID,
    CustomerID,
    LoanAmount,
    ROW_NUMBER() OVER(
        ORDER BY LoanAmount DESC
    ) AS RowNumber
FROM Loans;


SELECT
    LoanID,
    CustomerID,
    LoanAmount,
    ROW_NUMBER() OVER(
        PARTITION BY CustomerID
        ORDER BY LoanAmount DESC
    ) AS RowNum
FROM Loans;


SELECT
    LoanID, CustomerID,LoanAmount,
    SUM(LoanAmount) OVER(
        ORDER BY LoanAmount DESC
    ) AS RunningTotal
FROM Loans;



SELECT
    LoanID, CustomerID, LoanAmount,
    LEAD(LoanAmount) OVER(
        ORDER BY LoanAmount DESC
    ) AS NextLoanAmount
FROM Loans;

SELECT
    LoanID,
    CustomerID,
    LoanAmount,
    LAG(LoanAmount) OVER(
        ORDER BY LoanAmount DESC
    ) AS PreviousLoanAmount
FROM Loans;
