# Write your MySQL query statement below
SELECT distinct U.name , case when r.distance is not null then sum(distance) over(partition by r.user_id order by r.user_id)
ELSE 0 END AS travelled_distance
from Users u
left join Rides r
on u.id=r.user_id
order by travelled_distance desc , u.name 