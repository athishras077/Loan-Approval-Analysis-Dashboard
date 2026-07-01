select * from loan_approval limit 5;

# Does education influence loan approval decisions?
select education, loan_status, count(*) as total_applications from loan_approval group by education, loan_status order by education, loan_status;

# Loan Approval by Self-Employment
select self_employed, loan_status, count(*) as total_applications from loan_approval group by self_employed, loan_status order by self_employed;

# Loan Approval by Dependents
select no_of_dependents, loan_status, count(*) as total_applications from loan_approval group by no_of_dependents, loan_status order by no_of_dependents;

# Loan Approval by Loan Term
select loan_term, loan_status, count(*) as total_applications from loan_approval group by loan_term, loan_status order by loan_term;

# Average Income by Loan Status
select loan_status, round(avg(income_annum),2) as avg_income from loan_approval group by loan_status;

# Average Income by Loan Status
select loan_status, round(avg(loan_amount),2) as avg_loan_amt from loan_approval group by loan_status;

# Average CIBIL Score by Loan Status
select loan_status, round(avg(cibil_score),2) as avg_cibil_score from loan_approval group by loan_status;

# Total Asset Value by Loan Status
select loan_status, sum(residential_assets_value + commercial_assets_value + luxury_assets_value) as total_asset_value from loan_approval group by loan_status;

# Income Categories
select 
case
when income_annum < 3000000 then "Low Income"
when income_annum between 3000000 AND 7000000 THEN 'Middle Income'
else "High Income"
end as income_category,
count(*) as total_applicants
from loan_approval group by income_category;

# CIBIL Categories
select
case
when cibil_score >= 750 then "Excellent"
when cibil_score >= 700 then "Good"
when cibil_score >= 650 then "Fair"
when cibil_score >= 550 then "Poor"
else "Very Poor"
end as credit_category,
count(*) as total_applicants
from loan_approval group by credit_category;

# Which education group has the highest loan approval rate?
select education, count(*) as total_applications,
sum(case when loan_status = "Approved" then 1 else 0 end) as approved_loans,
round(sum(case when loan_status = "Approved" then 1 else 0 end) * 100.0 / count(*), 2) as approved_rate
from loan_approval group by education;

# Do self-employed applicants have different approval rates?
select self_employed, count(*) as total_applications,
sum(case when loan_status = "Approved" then 1 else 0 end) as approved_loans,
round(sum(case when loan_status = "Approved" then 1 else 0 end) * 100.0 / count(*), 2) as approved_rate
from loan_approval group by self_employed;

# Top 5 Highest Loan Amounts
# Which applicants requested the largest loans?
select loan_id, income_annum, loan_amount, cibil_score from loan_approval order by loan_amount desc limit 5;

# Which applicants have the highest annual income?
select loan_id, income_annum, loan_amount, cibil_score from loan_approval order by income_annum desc limit 5;

# Which applicants have both high income and excellent credit scores?
select loan_id, income_annum, loan_amount, cibil_score, loan_status from loan_approval 
where income_annum >= 7000000 and cibil_score >= 750 order by income_annum desc;




