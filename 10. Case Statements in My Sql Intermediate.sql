-- Case Statements in SQL

select first_name,
last_name,
age,
CASE
	when age <= 30  THEN 'YOUNG'
    when age between 31 and 50 THEN 'OLD'
    when age >= 50 THEN 'ON DEATHS DOOR'
END AS Age_Bracket
from parks_and_recreation.employee_demographics;

-- Pay Increase
-- < 50000 = 5% Raise
-- > 50000 = 7% Raise
-- Finance Department = 10% Bonus

select first_name, last_name, salary,
case
	when  salary < 50000 then salary * 1.05
    when  salary > 50000 then salary * 1.07	
end as New_Salary,
case
	when dept_id = 6 then (salary * 0.1)
end as Bonus
from parks_and_recreation.employee_salary
;

select *
from parks_and_recreation.employee_salary;
 

