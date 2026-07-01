select * from loan_approval limit 5;

# Who are the highest-income applicants?
select loan_id, income_annum, loan_amount,
row_number() over(order by income_annum desc) as income_rank from loan_approval;

# Rank Applicants by Loan Amount
select loan_id, income_annum, loan_amount,
rank() over(order by loan_amount desc) as loan_rank from loan_approval;

# Rank Applicants by CIBIL Score
select loan_id, cibil_score,
dense_rank() over(order by cibil_score desc) as cibil_rank from loan_approval;

# Highest Income Applicant Within Each Education Group
select * from (
select loan_id, education, income_annum, 
row_number() over(partition by education order by income_annum desc) as rn from loan_approval) ranked where rn = 1;

# Highest Loan Amount Within Each Employment Type
select * from (
select loan_id, self_employed, income_annum,
row_number() over(partition by self_employed order by income_annum desc) as rn from loan_approval ) ranked where rn = 1;

# Income Segmentation Using CTE

with income_segment as (
select loan_id, income_annum,
case
WHEN income_annum < 3000000 THEN 'Low'
WHEN income_annum BETWEEN 3000000 AND 7000000 THEN 'Middle'
ELSE 'High' end as income_category from loan_approval )
select income_category, count(*) as applicants from income_segment group by income_category;

# Credit Score Segmentation

with credit_segment as (
select loan_id, cibil_score,
case
WHEN cibil_score >= 750 THEN 'Excellent'
WHEN cibil_score >= 700 THEN 'Good'
WHEN cibil_score >= 650 THEN 'Fair'
WHEN cibil_score >= 550 THEN 'Poor'
ELSE 'Very Poor' END AS credit_category from loan_approval )
select credit_category, count(*) as applicants from credit_segment group by credit_category;

# Asset Segmentation

with asset_segment as (
select loan_id, (residential_assets_value + commercial_assets_value + luxury_assets_value + bank_asset_value) as total_assets
from loan_approval )
select round(avg(total_assets), 2) as average_assets, MAX(total_assets) AS highest_assets, MIN(total_assets) AS lowest_assets
from asset_segment;

# High-Value Customer Identification

with premium_customer as (
select * from loan_approval where income_annum >= 7000000 and cibil_score >= 750 )
select count(*) as premium_customers from premium_customer;

# Income vs Loan Amount Ratio

select loan_id, income_annum, loan_amount,
round(loan_amount/income_annum, 2) as loan_income_ratio from loan_approval order by loan_income_ratio desc;

# Executive KPI Dashboard
select 
count(*) as total_applications,
sum(case when loan_status = "approved" then 1 else 0 end) as approved,
sum(case when loan_status = "rejected" then 1 else 0 end) as rejected,
round(avg(income_annum), 2) as avg_income,
round(AVG(loan_amount),2) AS avg_loan,
round(AVG(cibil_score),2) AS avg_cibil
FROM loan_approval;

# Approval Rate by Income Category
select 
case
when income_annum < 3000000 THEN 'Low'
when income_annum BETWEEN 3000000 AND 7000000 THEN 'Middle'
else  "High" end as income_category,
round(sum(case when loan_status = "approved" then 1 else 0 end) * 100.0 / count(*), 2) as approval_rate
from loan_approval group by income_category ; 

# Approval Rate by Credit Category

select
case
when cibil_score>=750 THEN 'Excellent'
when cibil_score>=700 THEN 'Good'
when cibil_score>=650 THEN 'Fair'
when cibil_score>=550 THEN 'Poor'
else "Very Poor" end as credit_category,
round(sum(case when loan_status = "approved" then 1 else 0 end) * 100.0 / count(*), 2) as approval_rate
from loan_approval group by credit_category;

# Top 10 Strongest Applicants

select loan_id, income_annum, cibil_score, loan_amount from loan_approval
order by cibil_score desc, income_annum desc limit 10; 

# Executive Summary Report

select 
count(*) as total_applications,
round(AVG(income_annum),2) AS average_income,
round(AVG(loan_amount),2) AS average_loan_amount,
round(AVG(cibil_score),2) AS average_cibil,
round(sum(case when loan_status = "approved" then 1 else 0 end) * 100.0 / count(*), 2) as approval_rate
from loan_approval;

