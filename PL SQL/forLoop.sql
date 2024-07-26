set serveroutput on;
declare 
num number(8) :=8;

begin
dbms_output.put_line(num);
if num>9 then

dbms_output.put_line('greater');
elsif num<9 then
dbms_output.put_line('less');
else 
dbms_output.put_line('common');

 end if;
dbms_output.put_line('common');
end;
