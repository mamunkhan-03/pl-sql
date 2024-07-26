set serveroutput on ;
declare
name varchar2(15) ;
age number(8) :=20;

begin 
name :='mamunkhan';
dbms_output.put_line(name);
dbms_output.put_line(age);

end;

/