-- Joins in MySQL


select *
from parks_and_recreation.employee_demographics;

select * 
from parks_and_recreation.employee_salary;

select dem.employee_id, age, occupation
from parks_and_recreation.employee_demographics AS dem
inner join parks_and_recreation.employee_salary AS sal
	on dem.employee_id = sal.employee_id;
      
-- join represents inner join by default 

 -- Outer joins 
 
select *
from parks_and_recreation.employee_demographics AS dem
left join parks_and_recreation.employee_salary AS sal
	on dem.employee_id = sal.employee_id;
    
select *
from parks_and_recreation.employee_demographics AS dem
right join parks_and_recreation.employee_salary AS sal 
	on dem.employee_id = sal.employee_id;

-- Self Join

select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from parks_and_recreation.employee_salary AS emp1
join parks_and_recreation.employee_salary AS emp2
	on emp1.employee_id + 1 = emp2.employee_id;
    
    
-- Joining Multiple tables together

select *
from parks_and_recreation.employee_demographics AS dem
join parks_and_recreation.employee_salary AS sal
	on dem.employee_id = sal.employee_id
inner join parks_and_recreation.parks_departments as pd
	on sal.dept_id = pd.department_id
;