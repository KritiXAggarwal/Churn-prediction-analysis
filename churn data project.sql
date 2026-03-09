SELECT *
FROM airtel_customer_churn_cleaned_dataset
LIMIT 10;
SELECT COUNT(*)
FROM airtel_customer_churn_cleaned_dataset;
SELECT DISTINCT ContractType
FROM airtel_customer_churn_cleaned_dataset;
SELECT DISTINCT Churn
FROM airtel_customer_churn_cleaned_dataset;
#Overall Churn Rate
SELECT 
COUNT(*) AS Total_Customers,
SUM(Churn_Flag) AS Churned_Customers,
ROUND(SUM(Churn_Flag)/COUNT(*)*100,2) AS Churn_Rate
FROM airtel_customer_churn_cleaned_dataset;
#Churn by Contract Type
SELECT 
ContractType,
COUNT(*) AS Customers,
SUM(Churn_Flag) AS Churned,
ROUND(AVG(Churn_Flag)*100,2) AS Churn_Rate
FROM airtel_customer_churn_cleaned_dataset
GROUP BY ContractType
ORDER BY Churn_Rate DESC;
#Churn by Tenure
SELECT 
TenureGroup,
COUNT(*) AS Customers,
ROUND(AVG(Churn_Flag)*100,2) AS Churn_Rate
FROM airtel_customer_churn_cleaned_dataset
GROUP BY TenureGroup
ORDER BY Churn_Rate DESC;
#Churn by Payment Method
SELECT 
PaymentMethod,
COUNT(*) AS Customers,
ROUND(AVG(Churn_Flag)*100,2) AS Churn_Rate
FROM airtel_customer_churn_cleaned_dataset
GROUP BY PaymentMethod
ORDER BY Churn_Rate DESC;
#Churn by Internet Service
SELECT 
InternetService,
COUNT(*) AS Customers,
ROUND(AVG(Churn_Flag)*100,2) AS Churn_Rate
FROM airtel_customer_churn_cleaned_dataset
GROUP BY InternetService
ORDER BY Churn_Rate DESC;
#Revenue Analysis
SELECT 
Churn,
AVG(MonthlyCharges) AS Avg_Revenue
FROM airtel_customer_churn_cleaned_dataset
GROUP BY Churn;
#Revenue Loss Due to Churn
SELECT 
SUM(MonthlyCharges) AS Monthly_Revenue_Lost
FROM airtel_customer_churn_cleaned_dataset
WHERE Churn='Yes';
#Identify High Risk Customers
SELECT *
FROM airtel_customer_churn_cleaned_dataset
WHERE ContractType='Month-to-Month'
AND CustomerSupportCalls > 3
AND TenureMonths < 12;
#Top Churn Segments
SELECT 
ContractType,
TenureGroup,
COUNT(*) AS Customers,
ROUND(AVG(Churn_Flag)*100,2) AS Churn_Rate
FROM airtel_customer_churn_cleaned_dataset
GROUP BY ContractType, TenureGroup
ORDER BY Churn_Rate DESC;
#Create View for Power BI
CREATE VIEW churn_dashboard_prediction AS
SELECT 
ContractType,
TenureGroup,
PaymentMethod,
InternetService,
AVG(Churn_Flag)*100 AS Churn_Rate
FROM airtel_customer_churn_cleaned_dataset
GROUP BY ContractType, TenureGroup, PaymentMethod, InternetService;
CREATE VIEW churn_dashboard_predictionanalysis AS
SELECT 
    ContractType,
    TenureGroup,
    PaymentMethod,
    InternetService,
    ROUND(AVG(Churn_Flag) * 100, 2) AS Churn_Rate
FROM airtel_customer_churn_cleaned_dataset
GROUP BY 
    ContractType,
    TenureGroup,
    PaymentMethod,
    InternetService;