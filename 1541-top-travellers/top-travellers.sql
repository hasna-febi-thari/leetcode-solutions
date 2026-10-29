with cte as (select u.name,coalesce(sum(r.distance),0) as travelled_distance
from users u
left join rides r 
on u.id=r.user_id
group by r.user_id,u.name)
select *
from cte
order by travelled_distance desc ,name;

