set serveroutput on ;
declare
name varchar2(15) ;
salary number(30) ;

begin 
name :='mamunkhan';
dbms_output.put_line(name);


select emp_salary 
into salary 
from Employee_Info
where id=954;

dbms_output.put_line(salary);

end;

declare 
id number(8);
name varchar(15);

begin 



select id , emp_name
into id , name
from Employee_Info
where id=954;

dbms_output.put_line(id || 'name is '|| name);

end;

/