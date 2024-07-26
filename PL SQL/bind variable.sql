set serveroutput on ;
--set autoprint on;

variable name varchar2(10);

exec :name :='mamunkhan';
begin 

dbms_output.put_line( 'name is ' || :name);

end;

/
print name;



