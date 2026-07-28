# Write your MySQL query statement below
SELECT u.name , SUM(amount) as balance
FROM Transactions t
inner join Users u 
on t.account = u.account 
group by u.name 
having balance > 10000

 