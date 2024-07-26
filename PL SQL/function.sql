create or replace function area (radius number)
return number 
is
pi constant number(7,3) :=3.1416;
area number(7,3);

begin 
area :=pi * radius *radius;

return area;


end;
/

set serveroutput on
declare 
result number(7,3);
begin 
result:=area(20);
dbms_output.put_line( result||area(10));

end;
/