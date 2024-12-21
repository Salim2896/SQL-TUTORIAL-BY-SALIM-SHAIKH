-- CTEs  (Common Table Expression)


with CTE_EXAMPLE as 
(
select gender, avg(salary) as avg_sal, max(salary) as max_sal, Min(salary) as min_sal, count(salary) as count
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender 
)

select avg(avg_sal)
from CTE_EXAMPLE;


-- Example how this is different than CTE and how CTE is more convenient
-- select avg(avg_sal)
-- FROM(
-- select gender, avg(salary) as avg_sal, max(salary) as max_sal, Min(salary) as min_sal, count(salary) as count
-- from parks_and_recreation.employee_demographics as dem
-- join parks_and_recreation.employee_salary as sal
-- 	on dem.employee_id = sal.employee_id
-- group by gender 
-- ) as example_subquery 




