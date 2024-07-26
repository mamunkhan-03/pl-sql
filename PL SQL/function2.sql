-- Ensure server output is enabled in your SQL environment


-- Create the Teachers table
CREATE TABLE Teachers (
    name VARCHAR(20)
);
SET SERVEROUTPUT ON;
-- Create or replace the trigger
CREATE OR REPLACE TRIGGER bi_teachers
BEFORE INSERT ON Teachers
FOR EACH ROW 
ENABLE 
DECLARE 
    user_name VARCHAR(20);
BEGIN 
    -- Select emp_name into user_name from HR.Employee_Info
    -- Make sure this select statement identifies a single row
    -- Here I assume you have some logic to pick the right employee, e.g., based on some criteria
    SELECT emp_name INTO user_name 
    FROM HR.Employee_Info 
    WHERE emp_id=45;

    -- Output the message
    DBMS_OUTPUT.PUT_LINE('You just inserted a line. User: ' || user_name);
END;
/

-- Insert a row into Teachers table
INSERT INTO Teachers VALUES ('mamun');
