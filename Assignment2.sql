---ASSIGNMENT to get the manager name and department name
select e.first_name,
e.last_name, 
d.department_name 
from employees e, departments d
where e.MANAGER_ID = d.manager_id;

select first_name,
       last_name,
       department_id
from employees e
where department_ID =  
(select min(department_id)-- sub query 
from departments
where department_id=e.department_id);