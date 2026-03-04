# Customer-Engagement-Churn-Optimization
 Customer Engagement & Churn Optimization
Product Analytics & A/B Experimentation Project
1. Project Overview

This project analyzes customer engagement behavior and its impact on churn using a structured product analytics approach. The objective is to identify key behavioral drivers of churn and simulate an A/B experiment to validate whether increased engagement significantly reduces customer attrition.

The analysis follows a real-world product analytics workflow:

KPI definition

Behavioral segmentation

Cohort-level churn analysis

Statistical validation (A/B test simulation)

Business recommendations

The project replicates the responsibilities of a Product Analyst working in a subscription-based or health-tech environment.

2. Dataset Description

Dataset: Customer Engagement & Churn Analytics Dataset
Records analyzed: 22,936 customers
Features: 25 columns

Key feature categories:

Demographics (Age, Gender, Country, Membership_Years)

Platform Engagement (Login_Frequency, Session_Duration_Avg, Pages_Per_Session)

Purchase Behavior (Total_Purchases, Days_Since_Last_Purchase)

Customer Service Metrics

Financial Indicators

Target Variable: Churned (0 = Active, 1 = Churned)

The dataset contains mixed numerical and categorical variables and includes some missing values.

3. Tools & Technologies

MySQL – Data querying and KPI analysis

Google Colab (Python) – Statistical testing and experiment simulation

Pandas – Data manipulation

Statsmodels – Two-proportion Z-test

(Optional) Power BI / Tableau – Dashboard visualization

4. Business Problem

Churn rate observed: 27.37%

Key business question:

Does higher customer engagement significantly reduce churn, and should the product team invest in engagement-driven feature improvements?

5. Analytical Approach
Step 1: Baseline KPI Analysis (SQL)

Total users

Total churned

Overall churn rate

Result:

Total Users: 22,936

Total Churned: 6,278

Churn Rate: 27.37%

Step 2: Behavioral Churn Analysis

Users were segmented by:

Login Frequency

Session Duration

Pages per Session

Days Since Last Purchase

Mobile App Usage

Key Insight:

Engagement Level	Churn Rate
Low Engagement	39.9%
Medium Engagement	24.3%
High Engagement	20.5%

Users with low engagement show significantly higher churn.

Step 3: Lifecycle Analysis

Customers were grouped by membership tenure:

0–1 year

1–3 years

3–5 years

5+ years

Result:

Churn rate remained ~27% across all tenure groups.

Conclusion:
Churn is behavior-driven, not tenure-driven.

6. A/B Test Simulation
Hypothesis

H₀ (Null Hypothesis):
There is no difference in churn between low-engagement users and higher-engagement users.

H₁ (Alternative Hypothesis):
Higher engagement significantly reduces churn.

Experiment Design

Control Group:

Low Engagement Users

Variant Group:

Medium + High Engagement Users

Statistical Method

Two-Proportion Z-Test

Z-Statistic: 42.67
P-Value: < 0.001

Result:
Statistically significant difference.

Uplift Calculation

Control churn rate: 39.9%
Variant churn rate: 22.1%

Churn reduction uplift: 44.6%

7. Key Findings

Engagement strongly impacts churn.

Low-engagement users are nearly 2x more likely to churn.

The difference is statistically significant.

Lifecycle stage does not meaningfully impact churn rate.

Retention strategy should focus on continuous engagement rather than onboarding alone.

8. Product Recommendations

Based on findings, recommended experiments include:

Personalized health reminders triggered by inactivity

Goal-based engagement system

Streak-based behavioral reinforcement

Simplified repeat booking flows

Inactivity-based push notification triggers

Expected impact:
Reducing churn by increasing login frequency and habit formation.

9. Business Impact Simulation

If churn is reduced by 44% among low-engagement users:

Significant increase in retention

Higher customer lifetime value

Improved revenue per active user

Stronger long-term subscription stability

10. Project Structure
/data
    ecommerce_customer_churn_dataset.csv

/sql
    kpi_queries.sql
    churn_segmentation.sql

/notebooks
    engagement_ab_test.ipynb

/dashboard
    retention_dashboard.pbix (optional)
11. Skills Demonstrated

SQL querying and aggregation

Customer segmentation

Behavioral analytics

A/B experiment design

Statistical hypothesis testing

Data-driven product recommendations

Business storytelling

12. Conclusion

This project demonstrates how engagement analytics combined with statistical validation can drive product decisions in subscription-based platforms.

The findings support investing in engagement-focused product improvements to reduce churn and improve long-term retention.
