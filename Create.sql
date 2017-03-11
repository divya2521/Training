---Create

create table Employees_new(
    id number(10),
    name varchar(10)
);

insert into employees_new values (763,'Adam');
insert into employees_new values (764,'Alex');
insert into employees_new values (765,'Sam');
insert into employees_new values (766,'Judy');
insert into employees_new values (767,'Dwayne');

Select * from EMPLOYEES_NEW;


select name from employees_new 
where name between 'A_' and '_m';

select first_name,last_name,salary from employees
where salary >= 10000 and salary <=20000 ;

select first_name,last_name,salary from employees
where salary between 10000 and 20000 ;
---Regular expression 

set ESCAPE ' \'
select '\&abc' from dual;

select * from EMPLOYEES;

---understand ing come back  
select first_name,last_name,salary,department_id from employees e
where exists
(select * from job_history where employee_id=e.employee_id and department_id=60);

select first_name,last_name,salary,department_id from employees e
where department_id IN 
(select department_id from job_history where department_id=60);

