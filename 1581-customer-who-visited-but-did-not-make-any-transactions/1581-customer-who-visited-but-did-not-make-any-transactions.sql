# Write your MySQL query statement below
SELECT v.customer_id , count(v.visit_id) AS count_no_trans
from Visits v 
left join transactions t 
ON v.visit_id=t.visit_id 
where t.transaction_id is NULL 
group by v.customer_id 