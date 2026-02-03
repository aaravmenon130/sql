--https://datalemur.com/questions/sql-ibm-db2-product-analytics

SELECT 
  c as unique_queries,
  COUNT(c) AS employee_count
FROM(
  SELECT 
    employees.employee_id, COUNT(queries.employee_id) as c
  FROM employees
  LEFT JOIN queries 
  ON employees.employee_id = queries.employee_id
  AND EXTRACT(MONTH FROM queries.query_starttime) BETWEEN 7 AND 9
  GROUP BY employees.employee_id) AS t
GROUP BY c
ORDER BY c;
