-- Write your PostgreSQL query statement below
select user_id,CONCAT(UPPER(LEFT(name,1)),LOWER(SUBSTRING(name,2))) AS name
from users
ORDER BY user_id;