with cte as (select num,lag(num,1) over(order by id) as prev,lag(num,2) over(order by id) as prev2
from logs)
select distinct num as consecutiveNums
from cte
where num=prev and num=prev2;