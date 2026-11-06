SELECT p.product_id,coalesce(round(sum(price*units)/nullif(sum(units),0)::numeric,2),0) as average_price
from prices p
left join unitssold u
on p.product_id=u.product_id and u.purchase_date between start_date and end_date
group by p.product_id;
