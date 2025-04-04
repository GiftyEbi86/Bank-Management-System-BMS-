Bank Management System - Overview Report
Database Structure
You've created a comprehensive bank management system with the following tables:
•	customers (50 records)
•	accounts (50 records)
•	transactions (50 records)
•	loan (50 records)
•	branch (10 records)
•	employee (23 records)
Key Features Implemented
Stored Procedures
1.	Cust_account_balance: Retrieves account details for a specific customer
o	Usage: call Cust_account_balance(10)
2.	Apply_Interest_rate: Applies interest to savings accounts
o	Usage: call Apply_Interest_rate(6.25)
3.	EMI_calculator: Calculates monthly EMI for a loan
o	Usage: call EMI_calculator('L1040')
4.	Daliy_trans: Provides daily transaction summary
o	Usage: call Daliy_trans('2020-10-26')
5.	Customer_search: Searches customers by name or phone
o	Usage: call Customer_search("Brian Wright")
6.	branch_report: Generates branch performance report
o	Usage: call branch_report()
Data Volume
•	Customers: 50 records with complete personal information
•	Accounts: 50 accounts (mix of Savings, Current, and Loan types)
•	Transactions: 50 transaction records
•	Loans: 50 active loans with varying amounts and interest rates
•	Branches: 10 branches across Tamil Nadu
•	Employees: 23 employees assigned to branches
System Capabilities
•	Customer account management
•	Transaction processing
•	Loan management
•	Branch operations tracking
•	Employee management
•	Financial reporting
Sample Data Highlights
•	Largest account balance: ₹85,000 (Account No. 10050)
•	Highest loan amount: ₹80,000 (Loan ID L1050)
•	Oldest account opened: 2020-01-15 (Account No. 10001)
•	Most recent account opened: 2024-02-07 (Account No. 10050)
This system provides a complete solution for managing all core banking operations with proper relational integrity through foreign key constraints.

