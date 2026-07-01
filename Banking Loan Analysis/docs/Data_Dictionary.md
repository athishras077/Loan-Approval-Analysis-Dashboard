# Data Dictionary

## Overview

The data dictionary provides a detailed description of each feature available in the Loan Approval Dataset. It serves as a reference for understanding the dataset's structure, business meaning, and data types before performing any analysis.

---

## Dataset Summary

| Attribute          | Value                   |
| ------------------ | ----------------------- |
| Domain             | Financial Services      |
| Dataset Type       | Structured Tabular Data |
| Number of Records  | 4,269                   |
| Number of Features | 13                      |
| Target Variable    | `loan_status`           |

---

## Feature Descriptions

| Column Name                | Data Type   | Category               | Description                                                           |
| -------------------------- | ----------- | ---------------------- | --------------------------------------------------------------------- |
| `loan_id`                  | Integer     | Identifier             | Unique identifier assigned to each loan application.                  |
| `no_of_dependents`         | Integer     | Applicant Information  | Number of dependents financially supported by the applicant.          |
| `education`                | Categorical | Applicant Information  | Educational qualification of the applicant (Graduate / Not Graduate). |
| `self_employed`            | Categorical | Employment Information | Indicates whether the applicant is self-employed (Yes / No).          |
| `income_annum`             | Numeric     | Financial Information  | Annual income of the applicant.                                       |
| `loan_amount`              | Numeric     | Loan Information       | Total amount requested by the applicant.                              |
| `loan_term`                | Numeric     | Loan Information       | Duration of the loan repayment period.                                |
| `cibil_score`              | Numeric     | Credit Information     | Credit score representing the applicant's creditworthiness.           |
| `residential_assets_value` | Numeric     | Asset Information      | Estimated value of residential assets owned by the applicant.         |
| `commercial_assets_value`  | Numeric     | Asset Information      | Estimated value of commercial assets owned by the applicant.          |
| `luxury_assets_value`      | Numeric     | Asset Information      | Estimated value of luxury assets owned by the applicant.              |
| `bank_asset_value`         | Numeric     | Asset Information      | Estimated total value of the applicant's bank assets.                 |
| `loan_status`              | Categorical | Target Variable        | Final decision on the loan application (Approved / Rejected).         |

---

## Feature Classification

### Identifier

* loan_id

### Applicant Information

* no_of_dependents
* education
* self_employed

### Financial Information

* income_annum

### Loan Information

* loan_amount
* loan_term

### Credit Information

* cibil_score

### Asset Information

* residential_assets_value
* commercial_assets_value
* luxury_assets_value
* bank_asset_value

### Target Variable

* loan_status

---

## Target Variable

The target variable for this project is **loan_status**, which indicates whether a loan application was approved or rejected. All business analysis will focus on understanding the factors influencing this outcome.

---

## Notes

* Column names will be standardized during the Data Cleaning phase.
* Data types will be validated before analysis.
* Missing values, duplicates, and inconsistencies will be investigated during data quality assessment.
* This document serves as a reference throughout the project lifecycle.
