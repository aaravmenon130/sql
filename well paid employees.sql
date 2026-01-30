--https://datalemur.com/questions/sql-well-paid-employees

SELECT
  employee_id, name 
  FROM(
    SELECT 
      emp.employee_id,
      emp.name,
      emp.salary,
      mng.employee_id AS manager_id,
      mng.salary AS manager_sal
    FROM employee emp
    INNER JOIN employee mng
    ON emp.manager_id = mng.employee_id
  ) AS t2
where salary > manager_sal;
