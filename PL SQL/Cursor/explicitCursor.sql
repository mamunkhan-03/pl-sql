set serveroutput on;

declare 
total_rows number:=0;
id EMPLOYEE_INFO.EMP_ID%type;
name EMPLOYEE_INFO.EMP_Name%type;
salary EMPLOYEE_INFO.EMP_salary%type;

cursor expliCursor IS 
select emp_id, emp_name, emp_salary
from Employee_Info
where emp_salary=12000;

begin 
open expliCursor;

loop

fetch expliCursor into id , name , salary ;
exit when expliCursor%notfound;


total_rows :=total_rows+1;



dbms_output.put_line('Employee id : '||id ||'   Name : ' || name|| '   Salary : ' || salary);

end loop;

dbms_output.put_line('Total rows : '|| total_rows);

close expliCursor;

end;
/
