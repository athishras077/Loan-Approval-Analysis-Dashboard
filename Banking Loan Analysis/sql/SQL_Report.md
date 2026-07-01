# SQL Business Analysis Report

## Project Overview

This report presents the SQL-based business analysis conducted for the **Loan Approval Analysis** project. The objective was to analyze loan application data using SQL to answer key business questions, generate actionable insights, and demonstrate practical SQL skills commonly required for Data Analyst roles.

The analysis was performed on the cleaned and analysis-ready loan approval dataset imported into a MySQL database. SQL queries were organized into three levels—Basic, Intermediate, and Advanced—to progressively address descriptive reporting, business analysis, and analytical reporting requirements.

---

# Database Information

| Item                       | Details                              |
| -------------------------- | ------------------------------------ |
| Database                   | `banking_loan_analysis`              |
| Table                      | `loan_approval`                      |
| Database Management System | MySQL 8.0                            |
| Dataset                    | Loan Approval Analysis Ready Dataset |
| Total Records              | 4,269                                |
| Total Columns              | 13                                   |

---

# SQL Objectives

The objectives of the SQL analysis were to:

* Analyze loan application data using SQL.
* Calculate business KPIs related to loan approvals.
* Explore applicant demographics and financial characteristics.
* Identify trends in loan approval decisions.
* Demonstrate SQL proficiency using industry-standard queries.
* Prepare business-ready insights for reporting and dashboard development.

---

# SQL Analysis Structure

The SQL analysis was divided into three levels:

## Level 1 – Basic SQL

Basic SQL queries focused on descriptive statistics and overall business metrics.

### Topics Covered

* SELECT statements
* WHERE clause
* GROUP BY
* ORDER BY
* Aggregate Functions
* COUNT()
* AVG()
* SUM()

### Business Questions Answered

* How many loan applications were received?
* How many loans were approved?
* How many loans were rejected?
* What is the overall approval rate?
* What is the education distribution of applicants?
* What is the self-employment distribution?
* What is the dependents distribution?
* What is the average annual income?
* What is the average loan amount?
* What is the average CIBIL score?

---

## Level 2 – Intermediate SQL

Intermediate SQL focused on business reporting and KPI analysis.

### Topics Covered

* GROUP BY with multiple columns
* CASE statements
* Aggregate analysis
* Business KPI calculations
* Conditional aggregation

### Business Questions Answered

* Does education influence loan approval?
* Does self-employment influence loan approval?
* Does the number of dependents influence loan approval?
* How does loan term relate to approval?
* What is the average income of approved vs. rejected applicants?
* What is the average loan amount by loan status?
* What is the average CIBIL score by loan status?
* How are applicants distributed across income categories?
* How are applicants distributed across credit score categories?
* Which applicants requested the highest loan amounts?
* Which applicants have the highest annual income?
* Who are the high-value loan applicants?

---

## Level 3 – Advanced SQL

Advanced SQL demonstrated analytical SQL techniques used in modern Business Intelligence and reporting environments.

### Topics Covered

* Common Table Expressions (CTEs)
* Window Functions
* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* PARTITION BY
* Executive KPI Reporting
* Customer Segmentation

### Business Questions Answered

* Who are the highest-income applicants?
* Which applicants requested the largest loans?
* Which applicants have the highest credit scores?
* Who is the highest-income applicant within each education category?
* Who requested the largest loan within each employment category?
* How are applicants segmented by income?
* How are applicants segmented by credit score?
* What is the overall asset profile of applicants?
* Who are the bank's premium loan applicants?
* What is the loan-to-income ratio of applicants?
* What executive KPIs summarize the loan portfolio?
* What are the approval rates across income and credit categories?
* Who are the strongest loan applicants?

---

# Key Business Insights

The SQL analysis provided several valuable business insights:

* Loan approval decisions are strongly associated with applicants' credit scores.
* Applicants with higher CIBIL scores generally have higher approval rates.
* Annual income alone is not a sufficient indicator of loan approval.
* Loan amount and loan term influence approval decisions and should be evaluated alongside creditworthiness.
* Education and employment status provide useful segmentation for reporting but should not be considered in isolation.
* Customer segmentation based on income and credit score helps identify premium loan applicants.
* Executive KPI queries provide management with a concise overview of the loan portfolio.

---

# SQL Skills Demonstrated

This project demonstrates proficiency in the following SQL concepts:

## Data Retrieval

* SELECT
* WHERE
* ORDER BY
* LIMIT

## Aggregation

* COUNT()
* AVG()
* SUM()
* GROUP BY
* HAVING

## Conditional Logic

* CASE Statements
* Conditional Aggregation

## Analytical SQL

* Window Functions
* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* PARTITION BY

## Advanced Query Techniques

* Common Table Expressions (CTEs)
* Business KPI Queries
* Customer Segmentation
* Executive Reporting

---

# Business Value

The SQL analysis transforms raw loan application data into actionable business information that supports:

* Loan approval monitoring
* Credit risk assessment
* Customer segmentation
* Executive reporting
* KPI tracking
* Decision-making for lending strategies

These SQL queries can be integrated into reporting pipelines, dashboards, and business intelligence solutions to provide timely insights for financial institutions.

---

# Conclusion

The SQL Business Analysis phase successfully translated business questions into SQL queries that support operational reporting and strategic decision-making.

The project demonstrates practical SQL skills expected of a Data Analyst, including data retrieval, aggregation, conditional analysis, customer segmentation, ranking, window functions, and executive KPI reporting.

The SQL outputs complement the Python-based exploratory analysis and will support the Power BI dashboard developed in the next phase of the project.
