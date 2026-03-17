select *
from fraud_cleaned_dataset;

#Total transactions and Fraud Rate
SELECT COUNT(*) AS total_transactions,
SUM(Fraudulent) AS fraud_transactions,
ROUND(SUM(Fraudulent) / COUNT(*) * 100,2) AS fraud_rate
FROM fraud_cleaned_dataset;

#Average Transaction Amount
SELECT Fraudulent, AVG(Transaction_Amount) AS avg_transaction_amount
FROM fraud_cleaned_dataset
GROUP BY Fraudulent;

#Fraud Rate by Device
SELECT Device_Used,
COUNT(*) AS total_transactions,
SUM(Fraudulent) AS fraud_transactions,
ROUND(SUM(Fraudulent) / COUNT(*) * 100,2) AS fraud_rate
FROM fraud_cleaned_dataset
GROUP BY Device_Used
ORDER BY fraud_rate DESC;

#Fraud Rate by Payment Method
SELECT Payment_Method,
COUNT(*) AS total_transactions,
SUM(Fraudulent) AS fraud_transactions,
ROUND(SUM(Fraudulent) / COUNT(*) * 100,2) AS fraud_rate
FROM fraud_cleaned_dataset
GROUP BY Payment_Method
ORDER BY fraud_rate DESC;

#Fraud Rate by Transaction Type
SELECT Transaction_Type,
COUNT(*) AS total_transactions,
SUM(Fraudulent) AS fraud_transactions,
ROUND(SUM(Fraudulent) / COUNT(*) * 100,2) AS fraud_rate
FROM fraud_cleaned_dataset
GROUP BY Transaction_Type
ORDER BY fraud_rate DESC;

#Location Risk Analysis
SELECT Location,
COUNT(*) AS total_transactions,
SUM(Fraudulent) AS fraud_transactions,
ROUND(SUM(Fraudulent) / COUNT(*) * 100,2) AS fraud_rate
FROM fraud_cleaned_dataset
GROUP BY Location
ORDER BY fraud_rate DESC;

#High Risk Transaction Hours
SELECT Time_of_Transaction,
COUNT(*) AS total_transactions,
SUM(Fraudulent) AS fraud_transactions,
ROUND(SUM(Fraudulent) / COUNT(*) * 100,2) AS fraud_rate
FROM fraud_cleaned_dataset
GROUP BY Time_of_Transaction
ORDER BY fraud_rate DESC;

#Fraud by Transaction Frequency 
SELECT Number_of_Transactions_Last_24H,
COUNT(*) AS total_transactions,
SUM(Fraudulent) AS fraud_transactions,
ROUND(SUM(Fraudulent) / COUNT(*) * 100,2) AS fraud_rate
FROM fraud_cleaned_dataset
GROUP BY Number_of_Transactions_Last_24H
ORDER BY fraud_rate DESC;

#Repeat Fraud Behaviour
SELECT Previous_Fraudulent_Transactions,
COUNT(*) AS total_transactions,
SUM(Fraudulent) AS fraud_transactions,
ROUND(SUM(Fraudulent)/COUNT(*)*100,2) AS fraud_rate
FROM fraud_cleaned_dataset
GROUP BY Previous_Fraudulent_Transactions
ORDER BY fraud_rate DESC;

#High Risk Segment
SELECT Device_Used, Payment_Method, Transaction_Type,
COUNT(*) AS total_transactions,
SUM(Fraudulent) AS fraud_transactions,
ROUND(SUM(Fraudulent)/COUNT(*)*100,2) AS fraud_rate
FROM fraud_cleaned_dataset
GROUP BY Device_Used, Payment_Method, Transaction_Type
ORDER BY fraud_rate DESC;

#High Risk Users
SELECT User_ID,
COUNT(*) AS total_transactions,
SUM(Fraudulent) AS fraud_transactions,
ROUND(SUM(Fraudulent)/COUNT(*)*100,2) AS fraud_rate
FROM fraud_cleaned_dataset
GROUP BY User_ID
HAVING fraud_transactions > 0
ORDER BY fraud_rate DESC
LIMIT 10;

