---Functions in Oracle SQL
--Numeric functions
select abs(365-468) as Abs_num from dual;

--String functions

select chr(65) as Letter from dual;

select concat(concat(first_name,' '), last_name) as Employee_name from employees;

select concat(initcap('Employee of the month is ' ), first_name) as Best_employee from employees where EMPLOYEE_ID=100;

select lower(concat(concat(first_name,' '),last_name)) as employee_name from employees;

select lpad(first_name,20,'*') as Employee_name from employees where EMPLOYEE_ID= 155;

select rpad(first_name,20,'*') as Employee_name from employees where EMPLOYEE_ID= 155;

select ltrim('974654divya','974') as Ltrim_eg from dual;

select rtrim('974654divya3527974','974') as Rtrim_eg from dual;

select nchr(200) as Character from dual;

select replace('red and blue','red','white') as Colors from dual;

select first_name, last_name 
from employees
where Soundex(last_name) = soundex('styles');

select first_name as Emp_name,substr(first_name,3,4) as Sub_str from employees where employee_id = 140;


----need help
---not done

/*NLS_INITCAP
NLS_LOWER
NLS_UPPER
NLSSORT
REGEXP_REPLACE
REGEXP_SUBSTR
TRANSLATE
TRANSLATE ... USING*/