SELECT first_name from employees;

SELECT * FROM employees;

SELECT
    * FROM employees WHERE department_id=90;
  
--seleccionamos solo empleados con departament_id     
SELECT
    * FROM employees WHERE department_id in (100, 120, 110);
    
SELECT
    * FROM employees WHERE first_name like '%Br%';