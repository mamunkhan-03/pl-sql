create or replace procedure HR.employeeInformation(
p_id in number,
p_empId out number,
p_empName out  varchar2,
p_empMobile in varchar2,
p_empSalary out number
)
as 

begin 

select emp_id, emp_name, emp_salary
into p_empId, p_empName, p_empSalary
from Employee_Info
where id=p_id  ;


Exception
when NO_DATA_FOUND then 

dbms_output.put_line('Data not found');

end;
/