-- Operations & Billing Data Analysis
-- Author: Muhammad Tayyab
-- Dataset: billing_data.csv
-- Q1: Customers per plan type
-- Operations & Billing Data Analysis
-- Author: Muhammad Tayyab
-- Dataset: billing_data.csv

--------------------------------------------------
-- Q1: How many customers are on each plan type?
--------------------------------------------------
SELECT
  plan_type,
  COUNT(*) AS customer_count
FROM billing_data
GROUP BY plan_type;

--------------------------------------------------
-- Q2: What is the average monthly charge per plan?
--------------------------------------------------
SELECT
  plan_type,
  AVG(monthly_charge) AS avg_monthly_charge
FROM billing_data
GROUP BY plan_type;

--------------------------------------------------
-- Q3: How many customers have billing errors?
--------------------------------------------------
SELECT
  COUNT(*) AS billing_error_count
FROM billing_data
WHERE billing_error = 'Yes';

--------------------------------------------------
-- Q4: Which customers have both billing errors and pending payments?
--------------------------------------------------
SELECT
  customer_id,
  plan_type,
  monthly_charge
FROM billing_data
WHERE billing_error = 'Yes'
  AND payment_status = 'Pending';

--------------------------------------------------
-- Q5: What is the total expected monthly revenue?
--------------------------------------------------
SELECT
  SUM(monthly_charge) AS total_expected_revenue
FROM billing_data;

--------------------------------------------------
-- Q6: What is the average data usage by plan?
--------------------------------------------------
SELECT
  plan_type,
  AVG(usage_gb) AS avg_usage_gb
FROM billing_data
GROUP BY plan_type;

--------------------------------------------------
-- Q7: Which customers use more than 80 GB of data?
--------------------------------------------------
SELECT
  customer_id,
  plan_type,
  usage_gb
FROM billing_data
WHERE usage_gb > 80;

--------------------------------------------------
-- Q8: How many customers have unpaid or pending payments?
--------------------------------------------------
SELECT
  COUNT(*) AS pending_payment_count
FROM billing_data
WHERE payment_status = 'Pending';

--------------------------------------------------
-- Q9: What percentage of customers have billing errors?
--------------------------------------------------
SELECT
  (COUNT(CASE WHEN billing_error = 'Yes' THEN 1 END) * 100.0 / COUNT(*))
  AS billing_error_percentage
FROM billing_data;

--------------------------------------------------
-- Q10: Which plan generates the most revenue?
--------------------------------------------------
SELECT
  plan_type,
  SUM(monthly_charge) AS total_revenue
FROM billing_data
GROUP BY plan_type
ORDER BY total_revenue DESC;
