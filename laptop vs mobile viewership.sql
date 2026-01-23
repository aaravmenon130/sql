-- https://datalemur.com/questions/laptop-mobile-viewership

SELECT 
  SUM(laptop_views) AS laptop_views,
  SUM(mobile_views) AS mobile_views
  FROM (
    SELECT 
      CASE 
        WHEN device_type = 'laptop' 
        THEN 1 ELSE 0
        END AS laptop_views,
      CASE 
        WHEN device_type IN ('phone', 'tablet')
        THEN 1 ELSE 0 
        END AS mobile_views
      FROM viewership
  ) AS t2;
