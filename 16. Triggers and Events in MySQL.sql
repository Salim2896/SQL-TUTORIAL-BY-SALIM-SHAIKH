-- Triggers and Events in MySqL --

-- TRIGGERS--


select *
from parks_and_recreation.employee_demographics;

select *
from parks_and_recreation.employee_salary;

delimiter $$
create trigger employee_insert
	after insert on parks_and_recreation.employee_salary
    for each row
begin
	insert into parks_and_recreation.employee_demographics (employee_id, first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name);
end $$
delimiter ;

insert into parks_and_recreation.employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values (13,  'salim', 'shaikh','data-analyst', '80000', null);


-- EVENTS--  

SELECT *
FROM parks_and_recreation.employee_demographics;

DELIMITER $$
CREATE EVENT DELETE_RETIREES
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN

DELETE
FROM parks_and_recreation.employee_demographics
WHERE AGE >= 60;

END $$
DELIMITER ;

SHOW VARIABLES LIKE 'EVENT%';