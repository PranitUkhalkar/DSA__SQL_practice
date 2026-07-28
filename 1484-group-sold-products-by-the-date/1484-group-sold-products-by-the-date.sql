# Write your MySQL query statement below
SELECT sell_date , count(DISTINCT product) AS num_sold , GROUP_CONCAT(DISTINCT product ORDER BY product) as products
FROM Activities 
group by sell_date 
order by sell_date