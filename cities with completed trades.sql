-- https://datalemur.com/questions/completed-trades

SELECT
  t2.city, COUNT(t1.user_id) AS total_orders
  FROM users t2, trades t1
  WHERE
    t1.user_id = t2.user_id
    AND t1.status = 'Completed'
  GROUP BY t2.city
  ORDER BY COUNT(t1.user_id) DESC
  LIMIT 3;
