create or replace trigger trig 
before insert or update or delete on Teachers 
for each row
enable 
declare 
u_name varchar2(20);

begin 


select emp_name into u_name from HR.Employee_Info  where emp_id=45;

if inserting then
DBMS_OUTPUT.PUT_LINE(u_name);

elsif deleting then 
DBMS_OUTPUT.PUT_LINE(u_name);

elsif updating then 
DBMS_OUTPUT.PUT_LINE(u_name);

end if;

end;
/

insert into Teachers 
values ('khan');
update Teachers set name='mamun' where name='tipu';

