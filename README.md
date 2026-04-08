# 📊 Financial Transaction Fraud Analysis & Interactive Dashboard

## 🧾 Summary

This project presents a comprehensive analysis of a global financial transactions dataset with the objective of identifying fraudulent behaviour, evaluating data quality, and deriving actionable insights to support audit, risk management, and decision-making.

Using SQL for data validation and analysis alongside an interactive Excel dashboard for visualisation, the project simulates a real-world analytics environment where data integrity, control weaknesses, and fraud indicators are systematically assessed.

---

## 🎯 Project Objectives

- Identify fraudulent transactions and uncover underlying behavioural patterns  
- Detect anomalies, inconsistencies, and data quality issues  
- Validate and reconcile data using SQL-based checks  
- Develop an interactive dashboard for exploratory analysis  
- Apply audit-oriented thinking to evaluate internal controls and risks  

---

## 🛠️ Tools & Technologies

- **SQL** – Data extraction, validation, reconciliation, and anomaly detection  
- **Microsoft Excel** – Dashboard development and visual analytics  
- **Pivot Tables & Charts** – Aggregation, segmentation, and trend analysis  
- **Data Analytics Techniques** – Fraud detection, pattern recognition, and risk analysis  

---

## 📁 Dataset Overview

The dataset is sourced from Kaggle and contains 50,000 financial transactions with the following attributes:

- Transaction ID  
- Customer ID  
- Transaction amount  
- Date & time  
- Merchant and location details  
- Card type  
- Fraud labels and behavioural indicators  

---

## 🔍 Data Quality & Control Assessment

A key component of this project was evaluating the integrity of the dataset from an audit and control perspective. The following issues were identified:

### Duplicate Transaction IDs
<img width="600" height="260" alt="Image" src="https://github.com/user-attachments/assets/4c415f98-f05b-4e37-9d79-be98b6aadd7a" />

- Transaction_ID was expected to function as a unique identifier  
- Duplicate entries indicate potential weaknesses in system controls or data generation logic  
- This raises concerns around data reliability and audit traceability  

### Missing Customer IDs
- Some transactions lacked Customer_ID values  
- Despite this, these transactions were still classified as non-fraudulent  
- This introduces challenges in traceability, customer linkage, and verification procedures  

### Blank / Null Fields
- Certain records contained missing or blank values in key attributes  
- This impacted data completeness and required additional validation steps  

### Data Reconciliation


<img width="400" height="300" alt="Image" src="https://github.com/user-attachments/assets/8ff614f6-81e2-4b30-8d12-f9fb79badbec" />
<img width="340" height="170" alt="Image" src="https://github.com/user-attachments/assets/86543ba9-8c02-4d79-9ba3-b598ad1d648b" />
<img width="600" height="307" alt="Image" src="https://github.com/user-attachments/assets/39242236-78ab-49a1-899f-9bca113351ac" />


- SQL queries were used to validate totals and cross-check results against the Excel dashboard  
- This ensured consistency between raw data, transformed outputs, and visual summaries  

---

## 📊 Dashboard Overview

An interactive Excel dashboard was developed to enable intuitive exploration of transaction patterns and fraud indicators.

### Key Features:

- 📅 **Daily Transactions (Bar Chart)**  
  Displays transaction distribution across days to identify trends and fluctuations  

- ⏱️ **Hourly Transactions (Line Graph)**  
  Highlights peak transaction periods and unusual activity times  

- 🧾 **Transaction Categories (Pie Chart)**  
  Shows proportional distribution of transaction types  

- 📊 **KPIs**
- 🎛️ **Interactive Slicers**  
  Used for filtering my data
The dashboard supports dynamic filtering, allowing users to drill down into specific segments and extract meaningful insights efficiently.

---

## 🎥 Dashboard Walkthrough

A short video demonstration has been included to showcase the dashboard functionality and analytical approach.

👉 *(Insert your video link or embed here)*  

The walkthrough covers:

- Dashboard navigation and structure  
- Use of slicers and interactive filters  
- Interpretation of visualisations  

---

## 📈 Key Insights

- The dataset contains **50,000 transactions**, with an overall fraud rate of approximately **4.85%**  
- Total transaction value is approximately **249,949 million**, reconciled across SQL and Excel outputs  
- Transactions occurring during unusual hours exhibit a higher fraud rate (**6%**) compared to normal hours (**3%**)
  <img width="450" height="214" alt="Image" src="https://github.com/user-attachments/assets/9ea36213-c483-4f19-95a5-053fea9165df" />

- All unusual-time transactions were flagged as fraudulent, suggesting rule-based detection patterns  
- Duplicate Transaction IDs with a combined value of **13,417 million** highlight potential control weaknesses in data generation or system processes  
- Transactions with null transaction types show a significantly higher fraud rate (**25%**) compared to the dataset average (~4.3%)
- 
  <img width="450" height="273" alt="Image" src="https://github.com/user-attachments/assets/b789e250-c2a4-4b6a-84aa-e47be0300638" /> 
- Missing Customer IDs were observed in transactions still classified as non-fraudulent, indicating gaps in validation controls  
- Fraud distribution varies across geographic locations, suggesting location-based risk exposure  
- Card type and new merchant status showed limited standalone influence on fraud occurrence  

---

## 🧠 Audit & Risk Relevance

This project demonstrates how data analytics can be applied in a professional environment to support:

- Fraud detection and continuous monitoring  
- Internal control evaluation and gap identification  
- Audit planning, testing, and substantive procedures  
- Risk assessment and anomaly detection  
- Data-driven decision-making in financial environments
<img width="600" height="350" alt="Image" src="https://github.com/user-attachments/assets/eeea7e58-3b5b-44a8-ba15-9738beb5becb" />
---

## 🛡️ Recommendations

- **Enforce uniqueness of Transaction_ID**  
  Transaction IDs should be system-generated and strictly unique  
  Duplicate IDs indicate weaknesses in upstream system controls  

- **Strengthen Customer_ID validation**  
  Customer_ID should be mandatory for all transactions  
  Missing values reduce traceability and audit reliability  

- **Implement robust handling of missing data**  
  Null or incomplete records should be flagged and resolved appropriately  
  Data completeness is critical for accurate analysis and reporting  

- **Enforce validation of critical fields**  
  Fields such as Card Type and Transaction Type should not be nullable  
  Mandatory field validation reduces operational and fraud risk  

- **Adopt structured Transaction_ID sequencing**  
  Sequential and systematic ID generation enhances audit trails and traceability  

- **Enhance fraud detection approach**  
  Rule-based indicators (e.g., unusual transaction times) are useful but limited  
  A combined approach incorporating behavioural and anomaly-based detection is recommended  
  High-risk transactions should trigger additional verification or alerts  

- **Establish continuous data quality monitoring**  
  Regular checks for duplicates, missing values, and inconsistencies should be implemented  
  Proactive data governance improves reliability and decision-making  

---

## 🔗 Dataset Source

https://www.kaggle.com/datasets/algozee/financial-transaction-fraud-dataset
