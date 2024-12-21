-- Unions ( allows to combine rows together)
-- By default it is union distint , other type is union 

select first_name, last_name
from parks_and_recreation.employee_demographics
Union all
Select first_name, last_name
from parks_and_recreation.employee_salary;

select first_name, last_name, "OLD MAN"
from parks_and_recreation.employee_demographics
where age > 40 and gender = "Male"
Union 
select first_name, last_name, "OLD LADY"
from parks_and_recreation.employee_demographics
where age > 40 and gender = "Female"
Union 
select first_name, last_name, "Highly Paid Employee"
from parks_and_recreation.employee_salary
where salary > 70000
order by first_name , last_name;





