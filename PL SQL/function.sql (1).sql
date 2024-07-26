/*<TOAD_FILE_CHUNK>*/
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

