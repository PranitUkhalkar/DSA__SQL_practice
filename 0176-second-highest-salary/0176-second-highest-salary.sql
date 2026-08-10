with ctc as ( select*,dense_rank() OVER (ORDER BY  salary desc)as `rank`
FROM Employee)
SELECT MAX(salary) as SecondHighestSalary
FROM ctc 
where `rank`=2;

