# Churn-prediction-analysis
Airtel Customer Churn Analysis 
📊Project Overview

This project analyzes customer churn patterns for a telecom company similar to Airtel. The objective is to identify key factors influencing customer churn and derive insights that can help telecom companies reduce customer attrition and improve customer retention strategies.

The project demonstrates a complete data analytics workflow including data cleaning, SQL-based data analysis, and interactive dashboard creation.

**Tools & Technologies Used**

**Microsoft Excel** – Data Cleaning and Preparation

**MySQL**– Data Analysis using SQL queries

**Power BI** – Interactive Dashboard and Data Visualization

**Dataset Information**

The dataset contains customer information such as:

Customer ID

Gender

Senior Citizen Status

Tenure (months with company)

Contract Type

Payment Method

Internet Service Type

Monthly Charges

Data Usage

Customer Support Calls

Churn Status (Yes / No)

**This dataset simulates telecom customer behavior and helps analyze churn trends.**


**Project Workflow**


**1 Data Cleaning (Excel)**

The raw dataset was cleaned using Microsoft Excel by:

Removing duplicate records

Handling missing values

Standardizing categorical data

Creating derived columns such as:

Tenure Group

Charges Category

Churn Flag

**2 Data Analysis (MySQL)**

SQL queries were used to analyze customer churn patterns including:

Overall churn rate

Churn rate by contract type

Churn rate by tenure group

Churn by payment method

Revenue loss due to churn

Identification of high-risk customers

Example SQL analysis:

SELECT ContractType,
COUNT(*) AS Customers,
ROUND(AVG(Churn_Flag)*100,2) AS Churn_Rate
FROM airtel_customer_churn
GROUP BY ContractType;

**3 Data Visualization (Power BI)**

**An interactive dashboard was built in Power BI to visualize churn insights.**

Key dashboard elements include:

Revenue Lost due to Churn

Churn by Contract Type

Churn by Tenure Group

Churn by Payment Method

Churn by Internet Service

The dashboard allows dynamic filtering for deeper analysis.

Key Insights

Customers with month-to-month contracts have the highest churn rate.

New customers (tenure < 1 year) are more likely to churn.

Certain payment methods correlate with higher churn behavior.

Customer support interactions can influence churn probability.

These insights can help telecom companies design better retention strategies.

**Project Outcome**

**This project demonstrates practical skills in:**

**Data Cleaning**

**SQL Data Analysis**
**Business Intelligence Dashboarding**

**Customer Behavior Analysis**
It also showcases the ability to convert raw data into meaningful business insights.
