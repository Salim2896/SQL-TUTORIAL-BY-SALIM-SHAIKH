-- Limit + Aliasing Tutorial --

select *
from parks_and_recreation.employee_demographics
order by age desc
limit 2, 1;

-- Aliasing (AS)

select gender , avg(age) AS Average_age
from parks_and_recreation.employee_demographics
group by gender
having avg(age) > 40;