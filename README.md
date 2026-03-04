# Customer Engagement & Churn Optimization  
## Product Analytics & A/B Experimentation Project  

---

1. Project Overview

This project analyzes customer engagement behavior and its impact on churn using a structured product analytics framework. The objective was to identify key behavioral drivers of churn and statistically validate whether increased engagement significantly reduces customer attrition.

The analysis follows a real-world product analytics workflow:

- KPI definition  
- Behavioral segmentation  
- Cohort-level churn analysis  
- Statistical validation through A/B test simulation  
- Business impact estimation and product recommendations  

This project simulates the responsibilities of a Product Analyst in a subscription-based environment.

---

2. Dataset Description

Dataset: Customer Engagement & Churn Analytics Dataset  
Records analyzed: 22,936 customers  
Features: 25 columns  

Feature Categories

- Demographics: Age, Gender, Country, Membership_Years  
- Platform Engagement: Login_Frequency, Session_Duration_Avg, Pages_Per_Session  
- Purchase Behavior: Total_Purchases, Days_Since_Last_Purchase  
- Customer Service Metrics 
- Financial Indicators 
- Target Variable: Churned (0 = Active, 1 = Churned)  

The dataset contains mixed numerical and categorical variables with some missing values.

---

3. Tools & Technologies

- MySQL – KPI computation, segmentation, churn analysis  
- Python (Google Colab) – Statistical testing and experiment simulation  
- Pandas – Data manipulation and grouping logic  
- Statsmodels – Two-proportion Z-test  

---

4. Business Problem

Observed churn rate: 27.37%

Key Question:  
Does higher customer engagement significantly reduce churn, and should the product team prioritize engagement-driven feature improvements?

---

5. Analytical Approach

Step 1: Baseline KPI Analysis (SQL)

- Total Users: 22,936  
- Total Churned: 6,278  
- Overall Churn Rate: 27.37%  

Churn rate was established as the primary performance metric.

---

Step 2: Behavioral Churn Segmentation

Users were segmented based on:

- Login Frequency  
- Session Duration  
- Pages per Session  
- Days Since Last Purchase  
- Mobile App Usage  

Churn by Engagement Level

| Engagement Level  | Churn Rate |
|------------------|------------|
| Low Engagement    | 39.9%      |
| Medium Engagement | 24.3%      |
| High Engagement   | 20.5%      |

Insight: 
Low-engagement users exhibit significantly higher churn compared to highly engaged users.

---

Step 3: Lifecycle (Tenure-Based) Analysis

Customers were grouped by membership duration:

- 0–1 year  
- 1–3 years  
- 3–5 years  
- 5+ years  

Result:  
Churn remained approximately 27% across all tenure groups.

Conclusion:
Churn is behavior-driven rather than tenure-driven.

---

6. A/B Test Simulation

Hypothesis

H₀: No difference in churn between low-engagement users and higher-engagement users.  
H₁: Higher engagement significantly reduces churn.  

Experiment Design

- Control Group: Low Engagement Users  
- Variant Group: Medium + High Engagement Users  

Statistical Method

Two-Proportion Z-Test  

- Z-Statistic: 42.67  
- P-Value: < 0.001  

Result: 
The difference in churn rates is statistically significant.

---

Uplift Calculation

- Control Churn Rate: 39.9%  
- Variant Churn Rate: 22.1%  

Churn Reduction Uplift: 44.6%

---

7. Key Findings

- Engagement strongly impacts churn.  
- Low-engagement users are nearly twice as likely to churn.  
- The difference is statistically significant.  
- Membership tenure does not significantly influence churn rate.  

Retention strategy should prioritize continuous engagement over tenure-based targeting.

---

8. Product Recommendations

- Personalized reminders triggered by inactivity  
- Goal-based engagement tracking  
- Streak-based behavioral reinforcement  
- Simplified repeat interaction flows  
- Inactivity-based notification triggers  

Expected Impact:  
Reduced churn through improved engagement and habit formation.

---

9. Business Impact Simulation

If churn among low-engagement users is reduced by 44%:

- Increased customer retention  
- Higher projected customer lifetime value  
- Improved revenue stability  
- Stronger long-term subscription sustainability  

---

10. Skills Demonstrated

- SQL-based KPI analysis  
- Customer behavioral segmentation  
- Cohort-level churn evaluation  
- A/B experiment design  
- Statistical hypothesis testing  
- Data-driven product recommendations  

---

11. Conclusion

This project demonstrates how engagement analytics combined with statistical validation can inform product decisions in subscription-based platforms.

The findings support investing in engagement-focused improvements to reduce churn and enhance long-term retention.
