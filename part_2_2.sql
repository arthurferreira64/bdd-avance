-- Create the view
CREATE VIEW subscription_per_plan_per_month AS
SELECT
  TO_CHAR(subscribed_at, 'YYYY-MM') AS year_month,
  subscription_plan,
  SUM(paid) AS total_paid,
  COUNT(*) AS total_subscriptions
FROM
  subscription_table
GROUP BY
  year_month, subscription_plan;


select * from subscription_per_plan_per_month;

