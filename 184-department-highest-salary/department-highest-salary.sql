WITH highest_salary AS (
    SELECT d.name as department,e.name as employee,e.salary,RANK()OVER(PARTITION BY d.name ORDER BY e.salary DESC) AS salary_rank
    FROM employee e
    join department d
    on e.departmentId=d.id
)
SELECT department,employee,salary
FROM highest_salary
WHERE salary_rank=1;

