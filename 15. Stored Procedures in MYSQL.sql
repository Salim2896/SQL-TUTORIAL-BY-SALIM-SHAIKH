-- Stored Procedures in MYSQL

select *
from parks_and_recreation.employee_salary
where salary >= 50000;




call large_salaries();

delimiter $$
create procedure  large_salaries2()
begin
	select *
	from parks_and_recreation.employee_salary
	where salary >= 50000;
	select *
	from parks_and_recreation.employee_salary
	where salary >= 10000;
end $$
delimiter ;

call large_salaries2();




delimiter $$
create procedure  large_salaries3(sincere_employees int)
begin
	select salary
	from parks_and_recreation.employee_salary
    where employee_id = sincere_employees;
end $$
delimiter ;

call large_salaries3(2)
