# Operations & Billing Data Analysis

## Business Problem
A subscription-based business wants to understand its billing performance,
identify revenue risks, and detect operational issues such as billing errors
and pending payments.

The goal of this analysis is to provide clear insights that can help
improve revenue collection and customer management.

---

## Dataset
The dataset contains billing and usage information for 10 customers, including:
- Plan type
- Monthly charges
- Data usage
- Billing errors
- Payment status

This type of data is commonly used in telecom and subscription-based businesses.

---

## Tools Used
- SQL (data aggregation and filtering)
- Excel / CSV (data storage and review)

---

## Key Analysis Performed
The analysis answers the following questions:
- Customer distribution by plan type
- Average charges and usage by plan
- Total expected monthly revenue
- Customers with billing errors
- Customers with pending payments
- High-usage customers
- Revenue contribution by plan

---

## Key Insights
- The **Standard plan** has the highest number of customers, making it the most popular plan.
- **Premium customers** generate the highest revenue per customer but also show higher usage levels.
- A noticeable portion of customers have **billing errors**, which may lead to revenue leakage.
- Customers with both **billing errors and pending payments** represent a financial risk and should be prioritized for follow-up.
- High data usage customers (above 80 GB) are primarily on **Premium plans**, indicating correct customer segmentation.
- Pending payments highlight the need for stronger billing validation and payment follow-up processes.

---

## Business Recommendations
- Investigate and resolve billing errors to prevent revenue loss.
- Prioritize follow-up with customers who have both billing issues and pending payments.
- Monitor high-usage customers to ensure plans are priced appropriately.
- Use regular reporting dashboards to track billing health on a monthly basis.

---

## Conclusion
This analysis demonstrates how SQL can be used to transform raw billing data
into actionable insights. The approach reflects real-world data analysis tasks
performed in operational and business intelligence roles.
