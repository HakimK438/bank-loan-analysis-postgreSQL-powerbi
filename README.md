# Bank Loan Analysis (PostgreSQL & Power BI)

An end-to-end data analysis project where I explored bank loan data using PostgreSQL for querying and Power BI for visualization.  
The goal of this project was to understand loan performance, assess financial risk, and extract meaningful business insights from real-world data.

---

## Project Overview
This project analyzes bank loan data to study lending patterns, borrower behavior, repayment performance, and risk exposure.  
I used PostgreSQL to design the database, clean and analyze the data, and Power BI to transform the results into clear, decision-ready dashboards.

This is my **first complete data analytics project**, built to apply what I’ve learned in SQL and data visualization to a realistic financial use case.

---

## Objectives
- Understand loan disbursement and repayment trends  
- Classify loans into good and bad categories  
- Evaluate financial risk from charged-off loans  
- Perform time-based analysis (MTD and PMTD)  
- Build KPIs and dashboards useful for business decision-making  

---

## Tools & Technologies
- **Database:** PostgreSQL  
- **Query Language:** SQL  
- **Visualization:** Power BI  
- **Data Format:** CSV  

---

## Dataset
The dataset consists of anonymized bank loan records and includes information such as:
- Loan amount and interest rate  
- Loan status (Fully Paid, Current, Charged Off)  
- Employment details  
- Debt-to-income (DTI) ratio  
- Loan issue and payment dates  

The data is used purely for learning and analytical purposes.

---

## Database Design
A structured relational table (`BankData`) was created with carefully chosen data types to handle:
- Financial values with proper precision  
- Date-based analysis  
- Categorical loan and borrower attributes  

Basic data validation and integrity checks were applied during analysis.

---

## Key SQL Analysis

### Data Quality Checks
- Identified duplicate records  
- Checked for NULL values in critical fields  
- Detected invalid or zero loan amounts  
- Validated realistic interest rate ranges  

### Business Metrics
- Total loan amount disbursed  
- Average loan amount per customer  
- Average interest rate across all loans  
- Loan distribution by purpose and term  

### Risk Analysis
- Percentage of good vs bad loans  
- Capital at risk due to charged-off loans  
- Outstanding balance for active loans  

### Time-Based Analysis
- Month-to-Date (MTD) loan funding  
- Previous Month-to-Date (PMTD) comparison  

---

## Power BI Dashboard
The Power BI dashboard brings the analysis together through:
- High-level loan performance KPIs  
- Loan status breakdown  
- Risk and recovery insights  
- Time-based funding trends  
- Segmentation by purpose, term, and employment length  

Dashboard screenshots are available in the `/screenshots` folder.

---

## Key Learnings
- Hands-on experience with PostgreSQL for analytical querying  
- Writing SQL queries focused on business questions, not just syntax  
- Understanding loan performance and financial risk metrics  
- Designing dashboards that communicate insights clearly  
- Structuring a complete data project for GitHub  

---

## Future Improvements
- Add indexes for query performance optimization  
- Use window functions for deeper trend analysis  
- Automate data refresh  
- Extend the project with predictive risk analysis  

---

## Author
**Abdul Hakim**  
Student | Aspiring Data Analyst  
