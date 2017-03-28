--ASSIGNMENT 
--===========
--difference between INNER JOIN and SELF JOIN

select 
e.employee_id "Employee ID",
e.first_name|| ' ' || e.last_name "Employee Name",
m.employee_id "Manager ID",
m.first_name|| ' ' || m.last_name "Manager Name"
from employees e inner join employees m
on m.employee_id = e.manager_id
order by 1;

select e.employee_id,
       e.first_name ||' ' || e.last_name "Employee_Name",
       m.employee_id "Manager_ID" ,
       m.first_name ||' ' || m.last_name "Manager Name"
from employees e , employees m
where m.employee_id = e.manager_id
order by 1;

---ASSIGNMENT on LEFT JOIN
--on the above,show only which are contract employees and other new query for non-contact employees

select e.first_name ||' ' || e.last_name "Employee_Name",
       d.start_date,
       d.end_date
from employees e left join job_history d
on e.employee_ID=d.employee_ID
where start_date is not null;

select e.first_name ||' ' || e.last_name "Employee_Name",
       d.start_date,
       d.end_date
from employees e left join job_history d
on e.employee_ID=d.employee_ID
where start_date is null;

--New query for count of contracts and non-contract employees.

select sum(count(e.first_name)) "Contract Employee Count"
from job_history d left join employees e
on d.employee_ID=e.employee_ID
group by (d.employee_id);

--New query for count of non-contract employees
select sum(count(e.first_name)) "Non contract employees"
from employees e left join job_history d
on d.employee_ID=e.employee_ID
where d.start_date is null
group by (d.employee_id);

--- display sum of the salary of each department_name 
select d.department_name "Department Name",
    sum(e.salary) "Salary"
from employees e left join departments d
on d.DEPARTMENT_ID = e.DEPARTMENT_ID
where d.DEPARTMENT_NAME is not null
group by d.DEPARTMENT_NAME;

--ASSIGNMENT on Right join

--New query for count of contracts and non-contract employees.
select sum(count(e.first_name)) "Contract Employee Count"
from employees e right join job_history d
on e.employee_ID=d.employee_ID
group by (d.employee_id);

--Count of non-contract employees
select sum(count(e.first_name)) "Non contract employees"
from job_history d right join employees e
on d.employee_ID=e.employee_ID
where d.start_date is null
group by (d.employee_id);

---ASSIGNMENT on FULL OUTER JOIN
---how to write in the theta style

---contract period for each employees
select e.first_name ||', ' || e.last_name "Employee_Name",
       d.start_date,
       d.end_date
from employees e , job_history d
where e.employee_ID=d.employee_ID(+)
order by e.employee_id;

------ display sum of the salary of each department_name 

select d.department_name "Department Name",
    sum(e.salary) "Salary"
from employees e full join departments d
on d.DEPARTMENT_ID = e.DEPARTMENT_ID
where d.DEPARTMENT_NAME is not null
group by d.DEPARTMENT_NAME;

--ASSIGNMENT on CROSS JOIN
--- get a count of unique employee_name name with unique start_date and end_date

select 
       Count(e.first_name || ' ' || e.last_name) "Employee",
       j.start_date "Start Date" ,
       j.end_date "End Date"
from employees e cross join job_history j
group by (j.start_date,j.end_date)
order by e.employee_id;

--ASSINGMENT on SELF JOIN
---new query report how many employees under each manager
Select m.employee_id " Manager ID",
       m.first_name || ' ' || m.last_name "Manager Name",
       count(e.employee_id) "Employees" 
from employees e, employees m
where e.manager_id=m.employee_id
group by (m.employee_id);