-- https://datalemur.com/questions/sql-avg-review-ratings

SELECT 
  EXTRACT(MONTH FROM submit_date),
  product_id,
  ROUND(AVG(stars), 2)
  FROM reviews
  GROUP BY EXTRACT (MONTH FROM submit_date), product_id;
