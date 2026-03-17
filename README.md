# End-to-End Fraud Detection Analysis (Python + MySQL + Power BI)

## Executive Summary

This project analyzes transaction data to identify fraudulent behavior patterns and evaluate financial risk in a simulated banking environment.

Using transaction-level data, the analysis explores fraud rates, user behavior, transaction characteristics, and high-risk segments to understand how fraudulent activities occur and where they are concentrated.

The project combines **Python (data cleaning & EDA), MySQL (business analysis), and Power BI (visualization)** to build a complete end-to-end data analysis workflow.

---

## Business Problem

- What is the overall fraud rate?
- Which transactions are more likely to be fraudulent?
- Which customer behaviors indicate higher fraud risk?
- Which segments (device, payment method, location) are most vulnerable?
- How much financial impact do fraudulent transactions create?

---

## Methodology

### Data Cleaning & Preparation (Python)

- Removed duplicate records  
- Handled missing values  
  - numerical variables filled with median  
  - categorical variables filled with mode  
- Corrected data types  
- Validated value distributions  
- Prepared dataset for analysis  

---

### Exploratory Data Analysis (Python)

- Fraud rate calculation  
- Transaction amount vs fraud comparison  
- Fraud distribution by:
  - device  
  - payment method  
  - transaction type  
  - location  
  - transaction time  
- Behavioral analysis:
  - previous fraudulent activity  
  - transaction frequency (last 24 hours)  

---

### Business Analysis (MySQL)

- Fraud rate and transaction metrics  
- Fraud rate by:
  - device  
  - payment method  
  - transaction type  
  - location  
- High-risk user identification  
- Repeat fraud behavior analysis  
- High-risk segment detection 
- Fraud-related financial impact analysis  

---

### Visualization (Power BI)

- Fraud overview  
- Fraud patterns
- High-risk segments 
- User risk analysis  

---

## Skills

- Python 
- SQL (MySQL)
  - GROUP BY  
  - aggregations  
  - filtering & segmentation  
- Power BI (Dashboard Design & Data Visualization)  
- Business analysis & interpretation  
- Fraud pattern detection  

---

## Results & Insights

- Fraud rate is approximately **4.9%**  
- Fraudulent transactions are **not necessarily higher in amount**  
- **Mobile devices** show higher fraud risk  
- **UPI payment method** has slightly higher fraud exposure  
- **Online transactions** are more vulnerable  
- Certain locations (e.g., Chicago) show higher fraud concentration  
- Users with **previous fraudulent activity** are more likely to commit fraud again  
- Transaction time does not show a strong fraud pattern  

---

## Business Recommendations

- Implement stricter monitoring for **mobile transactions**  
- Apply additional verification for **online purchases**  
- Develop risk scoring models using:
  - previous fraud history  
  - transaction frequency  
- Monitor **high-risk segments**   
- Focus fraud detection efforts on **high-risk locations**  
- Track suspicious high-frequency transactions  

---

## Next Steps

- Machine Learning model for fraud prediction


