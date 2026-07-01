# Business Understanding

## Project Title

**Loan Approval Analysis: Understanding Factors Influencing Loan Approval Decisions**

---

## Introduction

Financial institutions receive thousands of loan applications from individuals seeking financial assistance. Approving a loan involves evaluating multiple applicant characteristics, including income, employment status, education, credit history, loan amount, and property information. Making incorrect approval decisions can increase financial risk, reduce profitability, and negatively impact customer satisfaction.

This project analyzes historical loan application data to understand the factors influencing loan approval decisions. The objective is to identify patterns in approved and rejected applications, evaluate key business metrics, and provide data-driven recommendations that support better lending decisions.

---

## Business Problem

The bank currently processes a large number of loan applications. However, management wants to better understand the characteristics of applicants whose loans are approved or rejected. Without proper analysis, inconsistent lending decisions may increase credit risk, reduce operational efficiency, and negatively affect customer experience.

The business requires an analytical solution that identifies the factors affecting loan approval and provides insights to improve the loan approval process.

---

## Business Objectives

The primary business objectives of this project are:

* Analyze historical loan application data.
* Identify factors that influence loan approval decisions.
* Improve consistency in the loan approval process.
* Reduce credit risk by understanding applicant profiles.
* Support evidence-based lending decisions.
* Improve operational efficiency through business insights.

---

## Analytical Objectives

The analysis aims to:

* Explore applicant demographic characteristics.
* Analyze financial attributes such as income and loan amount.
* Study the relationship between applicant characteristics and loan approval status.
* Calculate business KPIs.
* Develop interactive Power BI dashboards.
* Generate business recommendations supported by data.

---

## Assumptions

The following assumptions are made during this project:

* Historical loan records are accurate and complete.
* Applicant information is correctly recorded.
* Loan approval decisions reflect actual business practices.
* Credit history is an important indicator of repayment ability.
* Business policies remained relatively consistent during data collection.

---

## Project Scope

### In Scope

* Historical loan data analysis
* Data cleaning and preparation
* Exploratory Data Analysis (EDA)
* SQL business analysis
* KPI development
* Power BI dashboard creation
* Business insights and recommendations

### Out of Scope

* Machine Learning model deployment
* Real-time loan approval systems
* Fraud detection
* Customer identity verification
* Loan repayment monitoring

---

## Expected Business Outcome

The project will provide actionable insights into the loan approval process, helping management improve lending policies, reduce risk, and enhance operational efficiency through data-driven decision-making.

### Observation

- The `residential_assets_value` column contains 28 records with negative values (approximately 0.66% of the dataset).
- Negative asset values may indicate a data entry issue or a business-specific representation.
- Since no business documentation is available to confirm their meaning, the values were retained.
- This anomaly will be highlighted during the Exploratory Data Analysis phase and noted as a data quality consideration.