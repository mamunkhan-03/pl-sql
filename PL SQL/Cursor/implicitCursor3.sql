SET SERVEROUTPUT ON;

DECLARE
   total_rows NUMBER;
BEGIN

   UPDATE Employee_Info
   SET emp_salary = emp_salary + 1000
   WHERE emp_salary = 10000;
   
   
   IF SQL%FOUND THEN
      DBMS_OUTPUT.PUT_LINE('At least one row was updated.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('No rows were updated.');
   END IF;
    
   total_rows := SQL%ROWCOUNT;
   DBMS_OUTPUT.PUT_LINE('Total rows updated: ' || total_rows);
END;
/
