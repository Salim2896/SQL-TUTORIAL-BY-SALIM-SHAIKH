-- CTEs  (Common Table Expression)


with CTE_EXAMPLE (Gender,Avg_Sal, Max_Sal, Min_Sal, Count_Sal) as 
(
select gender, avg(salary) as avg_sal, max(salary) as max_sal, Min(salary) as min_sal, count(salary) as count
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender 
)
select *
from CTE_EXAMPLE
;


-- Example how this is different than CTE and how CTE is more convenient
-- select avg(avg_sal)
-- FROM(
-- select gender, avg(salary) as avg_sal, max(salary) as max_sal, Min(salary) as min_sal, count(salary) as count
-- from parks_and_recreation.employee_demographics as dem
-- join parks_and_recreation.employee_salary as sal
-- 	on dem.employee_id = sal.employee_id
-- group by gender 
-- ) as example_subquery 


with CTE_EXAMPLE as 
(
select employee_id, gender, birth_date
from parks_and_recreation.employee_demographics 
where birth_date > '1985-01-01' 
),
CTE_EXAMPLE2 as
(
select employee_id, salary
from parks_and_recreation.employee_salary 
where salary > 50000
)
select *
from CTE_EXAMPLE
join CTE_EXAMPLE2
	on CTE_EXAMPLE.employee_id = CTE_EXAMPLE2.employee_id
;









