-- WHERE Clause
select *
From parks_and_recreation.employee_salary
WHERE first_name = "leslie";

select *
From parks_and_recreation.employee_salary
WHERE salary <= 50000;

select * 
FROM parks_and_recreation.employee_demographics
where birth_date > "1985-01-01";

-- AND OR NOT -- Logical Operators --
SELECT *
FROM parks_and_recreation.employee_demographics
where birth_date > "1985-01-01"
AND gender = "MALE"; 

SELECT *
FROM parks_and_recreation.employee_demographics
where birth_date > "1985-01-01"
or gender = "MALE"; 

SELECT *
FROM parks_and_recreation.employee_demographics
where birth_date > "1985-01-01"
or not gender = "MALE"; 

SELECT *
FROM parks_and_recreation.employee_demographics
where (first_name = "leslie" and age = 44) or age > 55;	

-- LIKE Statement
-- % and _
select *
FROM parks_and_recreation.employee_demographics

where birth_date like '1989%'

