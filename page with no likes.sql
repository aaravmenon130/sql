--https://datalemur.com/questions/sql-page-with-no-likes

SELECT page_id 
FROM pages
WHERE page_id NOT IN (
  SELECT p.page_id 
  FROM pages p
  INNER JOIN page_likes p2
  ON p.page_id = p2.page_id)
;
