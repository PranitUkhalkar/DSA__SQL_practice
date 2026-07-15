# Write your MySQL query statement below
SELECT 
    p.firstname,
    p.lastname,
    a.city,
    a.state
from person p 
left join address a 
ON p.personId = a.personId;
