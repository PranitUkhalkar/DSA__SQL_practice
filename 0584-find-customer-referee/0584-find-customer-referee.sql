select c1.name as name 
from Customer c1
join Customer c2 
on c1.id=c2.id
where c1.referee_id <> 2 or c1.referee_id is null;

