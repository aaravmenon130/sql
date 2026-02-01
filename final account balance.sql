--https://datalemur.com/questions/final-account-balance

SELECT account_id, SUM(s) AS final_balance 
FROM(
  SELECT 
    account_id,
    SUM(
      CASE 
        WHEN transaction_type = 'Withdrawal' THEN -amount
        ELSE amount
      END) AS s,
    transaction_type
  FROM transactions
  GROUP BY account_id, transaction_type)
AS t1
GROUP BY account_id;
