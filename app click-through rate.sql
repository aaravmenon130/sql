--https://datalemur.com/questions/click-through-rate

SELECT 
  app_id,
  ROUND(100.0*click_sum/impression_sum, 2) AS ctr
FROM(
  SELECT app_id, 
    SUM(click_count) AS click_sum,
    SUM(impression_count) AS impression_sum
  FROM(
    SELECT 
      app_id,
      CASE WHEN event_type = 'click' THEN 1 ELSE 0 END AS click_count,
      CASE WHEN event_type = 'impression' THEN 1 ELSE 0 END AS impression_count
    FROM events
    WHERE EXTRACT(YEAR FROM timestamp) = 2022) AS t1
  GROUP BY app_id
) AS t2;
