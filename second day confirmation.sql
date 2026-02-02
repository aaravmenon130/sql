--https://datalemur.com/questions/second-day-confirmation

SELECT
  emails.user_id
FROM emails
INNER JOIN texts
ON emails.email_id = texts.email_id
AND EXTRACT(DAY FROM emails.signup_date) = EXTRACT(DAY FROM texts.action_date) - 1
WHERE signup_action = 'Confirmed';
