CREATE DATABASE healthtech_project;
USE healthtech_project;

SELECT COUNT(*) AS total_rows
FROM ecommerce_customer_churn_dataset;
SELECT 
    COUNT(*) AS total_users,
    SUM(Churned) AS total_churned,
    ROUND(SUM(Churned) / COUNT(*) * 100, 2) AS churn_rate_percent
FROM ecommerce_customer_churn_dataset;
SELECT 
    Churned,
    ROUND(AVG(Login_Frequency),2) AS avg_login_frequency,
    ROUND(AVG(Session_Duration_Avg),2) AS avg_session_duration,
    ROUND(AVG(Pages_Per_Session),2) AS avg_pages_per_session,
    ROUND(AVG(Days_Since_Last_Purchase),2) AS avg_days_since_last_purchase
FROM ecommerce_customer_churn_dataset
GROUP BY Churned;
SELECT 
    CASE 
        WHEN Days_Since_Last_Purchase <= 15 THEN '0-15 Days'
        WHEN Days_Since_Last_Purchase BETWEEN 16 AND 30 THEN '16-30 Days'
        WHEN Days_Since_Last_Purchase BETWEEN 31 AND 60 THEN '31-60 Days'
        ELSE '60+ Days'
    END AS inactivity_bucket,
    COUNT(*) AS total_users,
    SUM(Churned) AS churned_users,
    ROUND(SUM(Churned)/COUNT(*) * 100,2) AS churn_rate_percent
FROM ecommerce_customer_churn_dataset
GROUP BY inactivity_bucket
ORDER BY churn_rate_percent DESC;
SELECT 
    CASE 
        WHEN Login_Frequency >= 15 THEN 'High Engagement'
        WHEN Login_Frequency BETWEEN 8 AND 14 THEN 'Medium Engagement'
        ELSE 'Low Engagement'
    END AS engagement_level,
    COUNT(*) AS total_users,
    SUM(Churned) AS churned_users,
    ROUND(SUM(Churned)/COUNT(*) * 100,2) AS churn_rate_percent
FROM ecommerce_customer_churn_dataset
GROUP BY engagement_level
ORDER BY churn_rate_percent DESC;
SELECT 
    CASE 
        WHEN Mobile_App_Usage < 10 THEN 'Low Usage'
        WHEN Mobile_App_Usage BETWEEN 10 AND 25 THEN 'Medium Usage'
        ELSE 'High Usage'
    END AS mobile_usage_level,
    COUNT(*) AS total_users,
    SUM(Churned) AS churned_users,
    ROUND(SUM(Churned)/COUNT(*) * 100,2) AS churn_rate_percent
FROM ecommerce_customer_churn_dataset
GROUP BY mobile_usage_level
ORDER BY churn_rate_percent DESC;
SELECT 
    CASE 
        WHEN Membership_Years < 1 THEN 'New (0-1 yr)'
        WHEN Membership_Years BETWEEN 1 AND 3 THEN 'Early (1-3 yrs)'
        WHEN Membership_Years BETWEEN 3 AND 5 THEN 'Mid (3-5 yrs)'
        ELSE 'Long-term (5+ yrs)'
    END AS membership_stage,
    COUNT(*) AS total_users,
    SUM(Churned) AS churned_users,
    ROUND(SUM(Churned)/COUNT(*) * 100,2) AS churn_rate_percent
FROM ecommerce_customer_churn_dataset
GROUP BY membership_stage
ORDER BY churn_rate_percent DESC;