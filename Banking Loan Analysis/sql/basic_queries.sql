select * from loan_approval limit 5;

# How many loan applications has the bank received?
select count(*) as total_applications from loan_approval;

# Total Approved Loans
select loan_status, count(*) as Total_loan_approval from loan_approval group by loan_status;

# Education Distribution
select education, count(*) as total_applicants from loan_approval group by education order by total_applicants desc;

# Self Employment Distribution
select self_employed, count(*) as total_applicants from loan_approval group by self_employed order by total_applicants desc;

# Dependents Distribution
select no_of_dependents, count(*) as total_applicants from loan_approval group by no_of_dependents order by no_of_dependents;

# Average Annual Income
select round(avg(income_annum),2) as avg_annual_income from loan_approval;

# Average Loan Amount
select round(avg(loan_amount),2) as avg_loan_amt from loan_approval;

# Average CIBIL Score
select round(avg(cibil_score),2) as avg_cibil_score from loan_approval;

# Loan Term Distribution
select loan_term, count(*) as total_applicants from loan_approval group by loan_term order by loan_term ;