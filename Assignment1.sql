----assignment
--filter for non IT_PROG with employee name, salary, location
select employees.first_name || ',' || employees.last_name  "Employees",
    employees.salary,
    departments.location_id 
from employees
inner join departments
on employees.department_id = departments.department_id
where employees.job_id != 'IT_PROG';

--get the count of the employees of the non-admin 

select count(distinct employee_id) as No_of_employees 
from employees
where department_id != 10;

--list by department id of the max salary of that department id

select distinct employees.department_id,
    jobs.max_salary 
from employees
inner join jobs
on employees.JOB_ID = jobs.JOB_ID
where employees.DEPARTMENT_ID is not null
order by 2 desc;