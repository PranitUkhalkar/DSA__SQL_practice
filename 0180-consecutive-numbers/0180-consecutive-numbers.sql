# Write your MySQL query statement below
with logsneighbour as (
    SELECT * , 
    LAG(num) OVER (ORDER BY id ) as prev_num,
    LEAD(num) OVER (ORDER BY id) as next_num
    FROM Logs)
SELECT DISTINCT num AS ConsecutiveNums
FROM logsneighbour
WHERE
  num = prev_num
  AND num = next_num;
















