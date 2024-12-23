-- Temporary Tables in SQL

create temporary table  parks_and_recreation.temp_table
(first_name varchar (50),
last_name varchar (50),
favorite_movie varchar (100)
);

INSERT INTO parks_and_recreation.temp_table (first_name, last_name, favorite_movie)
VALUES 
    ('salim', 'shaikh', 'spiderman'),
    ('Faiz', 'Master', 'Fast and Furious');



select *
from parks_and_recreation.temp_table;


-- Real Case Example-- 
create temporary table salary_over_50k
select *
from employee_salary
where salary >= 50000;

select *
from salary_over_50k;



