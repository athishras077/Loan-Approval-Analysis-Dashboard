# Dashboard Design Plan

# Loan Approval Analysis Project

---

# Overview

This document outlines the design strategy for the Loan Approval Analysis Power BI dashboard. The objective is to create an interactive, business-oriented dashboard that enables stakeholders to monitor loan approval performance, analyze applicant characteristics, assess credit risk, and support data-driven decision-making.

The dashboard is designed following Business Intelligence (BI) best practices, ensuring a logical flow of information, clear visual hierarchy, and an intuitive user experience.

---

# Dashboard Objectives

The primary objectives of the dashboard are to:

* Monitor overall loan application performance.
* Track loan approval and rejection trends.
* Analyze applicant demographics and financial characteristics.
* Evaluate applicant creditworthiness.
* Identify customer segments and lending patterns.
* Support executive reporting and operational decision-making.

---

# Target Audience

The dashboard is intended for multiple business stakeholders.

| Stakeholder          | Dashboard Purpose                                   |
| -------------------- | --------------------------------------------------- |
| Executive Management | Monitor overall lending performance and KPIs        |
| Credit Risk Manager  | Assess applicant credit quality and approval trends |
| Branch Manager       | Track branch-level lending performance              |
| Loan Officers        | Analyze applicant characteristics before approval   |
| Business Analysts    | Explore trends, patterns, and customer segments     |

---

# Dashboard Structure

The dashboard is organized into three pages, each designed for a specific analytical purpose.

---

# Page 1 – Executive Overview

## Purpose

Provide senior management with a high-level overview of the bank's loan portfolio and lending performance.

## KPI Cards

* Total Loan Applications
* Approved Loans
* Rejected Loans
* Loan Approval Rate
* Average Loan Amount
* Average CIBIL Score

## Visualizations

* Clustered Column Chart – Approved vs Rejected Loans
* Donut Chart – Loan Status Distribution
* Bar Chart – Applications by Education
* Bar Chart – Applications by Self-Employment
* Column Chart – Applications by Loan Term

## Interactive Filters

* Education
* Self-Employment
* Loan Status

---

# Page 2 – Financial & Credit Analysis

## Purpose

Analyze applicants' financial profiles and evaluate credit risk.

## KPI Cards

* Average Annual Income
* Average Loan Term
* Average Residential Asset Value
* Average Commercial Asset Value

## Visualizations

* Income Distribution
* Loan Amount Distribution
* Average Loan Amount by Loan Status
* CIBIL Score Distribution
* Approval Rate by Credit Category

## Interactive Filters

* Credit Category
* Loan Term

---

# Page 3 – Customer & Asset Analysis

## Purpose

Explore applicant segmentation and asset ownership patterns.

## Visualizations

* Dependents Distribution
* Loan Approval by Number of Dependents
* Asset Distribution
* Approval Rate by Income Category
* Education vs Loan Status Matrix

## Interactive Filters

* Income Category
* Number of Dependents
* Education

---

# Dashboard Navigation

The dashboard uses a multi-page layout with navigation buttons.

Navigation Flow:

Executive Overview

↓

Financial & Credit Analysis

↓

Customer & Asset Analysis

This structure allows users to move from high-level KPIs to detailed business analysis.

---

# Dashboard Theme

A consistent visual theme will be used throughout the dashboard.

| Element         | Design Standard    |
| --------------- | ------------------ |
| Background      | White / Light Gray |
| Primary Color   | Dark Blue          |
| Approved Status | Green              |
| Rejected Status | Red                |
| Titles          | Dark Gray          |
| Slicers         | Light Blue         |
| Borders         | Light Gray         |

The same color will always represent the same business concept across all pages.

---

# Dashboard Design Principles

The dashboard will follow the following Business Intelligence design principles:

* Display the most important KPIs at the top of each page.
* Maintain a consistent layout across all pages.
* Use appropriate chart types for each business question.
* Minimize unnecessary colors and decorative elements.
* Ensure sufficient whitespace for readability.
* Use meaningful chart titles and labels.
* Apply consistent formatting for fonts, colors, and spacing.
* Enable interactive filtering using slicers.
* Design for executive readability and quick decision-making.

---

# Visual Selection Strategy

| Business Requirement    | Recommended Visual       |
| ----------------------- | ------------------------ |
| KPI Monitoring          | KPI Card                 |
| Category Comparison     | Clustered Bar Chart      |
| Percentage Distribution | Donut Chart              |
| Numerical Distribution  | Histogram / Column Chart |
| Trend Comparison        | Column Chart             |
| Relationship Analysis   | Scatter Plot             |
| Detailed Summary        | Matrix                   |
| Filtering               | Slicer                   |

Each visual has been selected based on its ability to answer a specific business question clearly and effectively.

---

# Dashboard Layout Strategy

Each dashboard page follows the same visual hierarchy.

## Top Section

Executive KPI Cards

## Middle Section

Primary analytical charts

## Bottom Section

Supporting visuals and detailed comparisons

## Right Panel

Interactive slicers and filters

This layout ensures users see the most important information first while maintaining an intuitive navigation flow.

---

# Dashboard Success Criteria

The dashboard will be considered successful if it enables users to:

* View key lending KPIs at a glance.
* Identify loan approval trends.
* Analyze applicant demographics and financial profiles.
* Assess applicant credit risk.
* Explore customer segments using interactive filters.
* Generate business insights without requiring SQL or Python knowledge.

---

# Expected Business Benefits

The dashboard provides several business benefits:

* Improved visibility into loan approval performance.
* Faster identification of approval and rejection trends.
* Better understanding of applicant financial characteristics.
* Enhanced credit risk monitoring.
* Executive-level KPI reporting.
* Support for data-driven lending decisions.

---

# Future Enhancements

Potential improvements include:

* Time-series analysis using monthly or quarterly loan data.
* Branch-level performance comparison.
* Geographic analysis using applicant location.
* Predictive loan approval scoring using Machine Learning.
* Real-time dashboard refresh using SQL Server or cloud-based data sources.
* Row-Level Security (RLS) for branch-specific access.
* Power BI Service deployment with scheduled refresh.

---

# Conclusion

This dashboard design plan establishes the structure, objectives, and visualization strategy for the Loan Approval Analysis dashboard. By following Business Intelligence best practices, the dashboard will provide stakeholders with an intuitive, interactive, and business-focused reporting solution.

The dashboard is designed to transform raw loan application data into actionable insights that support operational monitoring, executive reporting, and strategic decision-making.
