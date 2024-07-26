set serveroutput on;
declare 
num number(8);

begin
loop 
dbms_output.put_line(num);

if num<20 then 
exit;
end if;

end loop;

end;
/