--https://datalemur.com/questions/sql-histogram-tweets
SELECT 
  COUNT(user_id) AS users_num, 
  tweet_bucket 
  FROM(
    SELECT 
      user_id, COUNT(tweet_id) AS tweet_bucket
      FROM tweets
      WHERE EXTRACT(YEAR FROM tweet_date) = 2022
      GROUP BY user_id) AS temp
  GROUP BY tweet_bucket;
