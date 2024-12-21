-- Subqueries in my SQL
select *
from parks_and_recreation.employee_demographics
where employee_id in (
						select employee_id
							from parks_and_recreation.employee_salary
                            where dept_id = 1
)
;
select first_name, salary, 
(Select AVG(salary) 
from parks_and_recreation.employee_salary ) as average_salary
from parks_and_recreation.employee_salary;

select gender, avg(age), max(age), min(age), count(age)
from parks_and_recreation.employee_demographics
group by gender;

select  avg(avg_age), avg(max_age), AVG(min_age), avg(count_of_age)
from 
( select gender, 
avg(age) as avg_age, 
max(age) as max_age,
min(age) as min_age, 
count(age) as count_of_age
from parks_and_recreation.employee_demographics
group by gender) AS Aggregated_Table
;