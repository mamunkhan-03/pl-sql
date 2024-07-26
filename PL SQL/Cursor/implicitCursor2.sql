
SET SERVEROUTPUT ON;

DECLARE
   total_rows   NUMBER := 0;
BEGIN
   FOR records IN (SELECT emp_name, emp_salary
                     FROM Employee_Info
                    WHERE emp_salary = 12000)
   LOOP
      DBMS_OUTPUT.PUT_LINE ('Employee Name: ' || records.emp_name);
      DBMS_OUTPUT.PUT_LINE ('Employee Salary: ' || records.emp_salary);

      total_rows := total_rows + 1;
   END LOOP;

   DBMS_OUTPUT.PUT_LINE ('Total rows fetched: ' || total_rows);
END;
/