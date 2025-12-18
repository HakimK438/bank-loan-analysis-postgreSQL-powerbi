--Identify duplicate loan records.
select id
from bankdata
group by id
having count(*) > 1


--Check for NULL or invalid values in critical fields (loan_amount, interest_rate, term, income).
select * from bankdata
where loan_amount IS NULL OR
int_rate IS NULL OR
total_payment IS NULL OR
total_acc IS NULL

--How many total loan records are present in the dataset?
select count(*) from bankdata as Total_Loan_Records

--Which columns contain NULL values, and how many NULLs per column?
select count(loan_amount) FILTER (where loan_amount is null) as Null_loan_amount,
count(int_rate) FILTER (where int_rate is null) as Null_int_rate,
count(total_payment) FILTER (where total_payment is null) as Null_total_payment,
count(total_acc) FILTER (where total_acc is null) as Null_total_acc
from bankdata

--Identify loans with zero or negative loan amounts.
select id,loan_amount from bankdata where loan_amount = 0 or loan_amount <0 

--Check whether interest rates fall within a realistic range.
select min(int_rate) as min_rate,
max(int_rate) as max_rate
From bankdata


--What is the total loan amount disbursed?
select sum(loan_amount) as Total_Loan_Disnursed from bankdata

--What is the average loan amount per customer?
select sum(loan_amount) / count(distinct id) as average_loan_amount from bankdata


--What is the average interest rate across all loans?
SELECT 
  ROUND(AVG(int_rate), 4) AS average_interest_rate
FROM bankdata;


--How many loans are approved vs rejected (if status exists)
select count(*) filter(where loan_status = 'Fully Paid') Fully_Paid_Status,
count(*) filter(where loan_status = 'Charged Off') ChargedOff_Status,
count(*) filter(where loan_status = 'Current') as Current_Status
 from bankdata

--Loan count and total amount by loan purpose/category
select purpose,count(*) as Total_count,
sum(loan_amount) as Total_Loan
from bankdata
group by purpose
order by Total_Loan DESC



--How many loan applications were received Month-to-Date (MTD) and Previous Month-to-Date (PMTD)?
SELECT 
  SUM(loan_amount) AS month_funded_till_december_2021
FROM bankdata
WHERE issue_date >= DATE '2021-12-01'
  AND issue_date <  DATE '2022-01-01';

SELECT 
  SUM(loan_amount) AS previos_month_funded_till_december_2021
FROM bankdata
WHERE issue_date >= DATE '2021-11-01'
  AND issue_date <  DATE '2022-01-01';

  
--What is the total amount received from borrowers?
select sum(total_payment) as Total_amount_received from Bankdata

--Active loans
select sum(loan_amount-total_payment) as Amount_Remaining from bankdata
where loan_status ='Current'



--What is the average Debt-to-Income (DTI) ratio?
select avg(dti) as Average_DTI_Ratio from bankdata

--What percentage of loans are classified as good loans(Fully Paid + Current)?
select count(*)FILTER(where loan_status = 'Fully Paid' or loan_status = 'Current')::numeric / count(*) 
as Goodloans 
from bankdata


--What percentage of loans are bad loans (Charged Off)?
select count(*)FILTER(where loan_status = 'Charged Off')::numeric / count(*) 
as Goodloans 
from bankdata

--How much capital is at risk due to bad loans?
select sum(loan_amount - total_payment) as Risk_amount 
from bankdata
where loan_status = 'Charged Off'

--Average loan amount by employment type.
select emp_length ,round(avg(loan_amount),2) as average_loan ,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Amount_Received
from bankdata
group by  emp_length

--group by term
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term