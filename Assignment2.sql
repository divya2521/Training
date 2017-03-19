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
where department_ID <=
(select min(department_id)-- sub query 
from departments);

---corrected one of assignment
select e.first_name ||', ' ||e.last_name "Employee Name" , 
       m.first_name || ', ' || m.last_name "Manager Name",
       dep.department_name
from employees e,
    (select first_name,
            last_name,
            manager_id
     from employees m
     where manager_id is not null)m,
     (select Department_id,
             department_name
      from departments ) dep
where e.employee_id=m.manager_id and
      e.department_id=dep.department_id
and e.manager_id is not null;

---OTHER WAY OF ABOVE QUERY
WITH M AS 
(
select first_name,
            last_name,
            manager_id
     from employees m
     where manager_id is not null
),
dep AS
(
select Department_id,
             department_name
      from departments
)
select e.first_name ||', ' ||e.last_name "Employee Name" , 
       m.first_name || ', ' || m.last_name "Manager Name",
       dep.department_name,
       e.department_id
from employees e,M,DEP
where e.employee_id=m.manager_id and
      e.department_id=dep.department_id
and e.manager_id is not null;

----ANALAYSING
select e.first_name ||', ' ||e.last_name "Employee Name" , 
      -- m.first_name || ', ' || m.last_name "Manager Name",
       dep.department_name
from employees e,
    /*(select first_name,
            last_name,
            manager_id
     from employees m
     where manager_id is not null)m, */
     (select Department_id,
             department_name
      from departments ) dep
where ----e.employee_id=m.manager_id and
      e.department_id=dep.department_id
and e.manager_id is not null;



