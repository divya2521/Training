 CREATE TABLE table_1 (char_col  CHAR(20), nchar_col nchar(20));
 INSERT INTO table_1 VALUES ('Hello', 'Welcome');
 INSERT INTO table_1 VALUES (1, 2);
 INSERT INTO table_1 VALUES (2, 4);
select * from table_1;


---ASSIGNMENT
update table_1
set nchar_col = (select replace(nchar_col,'Welcome',3) from table_1 where char_col='Hello' )
where char_col='Hello';

Select * from table_1;

select e.employee_id,
       e.first_name ||', ' || e.last_name "Employee_Name",
       m.manager_id,
       m.first_name ||', ' || m.last_name "Manager Name"
from employees e left join employees m
on eemployee_id=m.manager_id
order by 1;