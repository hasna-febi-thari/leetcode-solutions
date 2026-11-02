select product_id,year as first_year,quantity,price
from sales s1
where year = (
    select min(year) as earliest_year
    from sales s2
    where s1.product_id=s2.product_id
);