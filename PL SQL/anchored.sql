set serveroutput on ;
declare
name EMPLOYEE_INFO.EMP_NAME%Type ;
id number(30) ;

begin 



select id , emp_name
into id , name
from Employee_Info
where id=954;

dbms_output.put_line(id || 'name is '|| name);

end;

/