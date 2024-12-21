-- String Functions

select length('skyfall');

select first_name, length(first_name)
from parks_and_recreation.employee_demographics
order by 2;

select upper('sky');
select lower('SKY');

select trim('  sky  ');
select ltrim('        sky      ');
select rtrim('        sky      ');





