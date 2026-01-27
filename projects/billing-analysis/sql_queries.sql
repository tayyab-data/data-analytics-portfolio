-- Operations & Billing Data Analysis
-- Author: Muhammad Tayyab
-- Dataset: billing_data.csv
-- Q1: Customers per plan type
SELECT
  plan_type,
  COUNT(*) AS customer_count
FROM billing_data
GROUP BY plan_type;
