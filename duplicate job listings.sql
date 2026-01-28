-- https://datalemur.com/questions/duplicate-job-listings

SELECT COUNT(*) FROM 
(
  SELECT 
    company_id, COUNT(title)
    FROM job_listings
    GROUP BY company_id, title
    HAVING COUNT(title) >= 2
) AS t1;
