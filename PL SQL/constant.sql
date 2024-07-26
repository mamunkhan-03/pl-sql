set serveroutput on ;
declare
name EMPLOYEE_INFO.EMP_NAME%Type ;
id number(30) ;

pi constant number (6,5):=3.1125;

begin 

dbms_output.put_line(pi);

select id , emp_name
into id , name
from Employee_Info
where id=954;

dbms_output.put_line(id || 'name is '|| name);

end;

/