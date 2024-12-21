-- Group By Tutorial

select * 
From parks_and_recreation.employee_demographics;

select gender , AVG (age)
From parks_and_recreation.employee_demographics
Group By  gender;

select occupation, salary
From parks_and_recreation.employee_salary
Group By  occupation, salary;

select gender , AVG (age), max(age) , min(age), count(age)
From parks_and_recreation.employee_demographics
Group By  gender;

-- Order By  
select *
From parks_and_recreation.employee_demographics
order by  first_name desc;

select *
From parks_and_recreation.employee_demographics
order by  gender, age desc;



