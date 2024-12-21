-- Windown Function In My SQL

select gender, avg(salary) as avg_salary
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
on dem.employee_id = sal.employee_id  
group by gender;


select dem.first_name, dem.last_name,gender, 
avg(salary) over(partition by gender) as AverageSalary_By_Gender
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
	  on dem.employee_id = sal.employee_id  ;


select dem.first_name, dem.last_name,gender, salary,
sum(salary) over(partition by gender order by dem.employee_id) as Rolling_Total
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
on dem.employee_id = sal.employee_id  ;


select dem.employee_id,dem.first_name, dem.last_name,gender, salary,
row_number() over (partition by gender order by salary desc) as ROW_NUM,rank() over (partition by gender order by salary desc) as RANK_NUM,
dense_rank() over (partition by gender order by salary desc) as DENSERANK_NUM
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
on dem.employee_id = sal.employee_id  ;

