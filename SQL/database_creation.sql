-- CREATE DATABASE finance_data;

-- USE finance_data;

-- SET GLOBAL local_infile = ON;

-- =====================================================
-- Create Table
-- =====================================================

-- CREATE TABLE IF NOT EXISTS loan_default (
--     LoanID VARCHAR(50) PRIMARY KEY,
--     Age INT,
--     Income INT,
--     LoanAmount INT,
--     CreditScore INT,
--     MonthsEmployed INT,
--     NumCreditLines INT,
--     InterestRate INT,
--     LoanTerm INT,
--     DTIRatio DECIMAL(4,2),
--     Education VARCHAR(50),
--     EmploymentType VARCHAR(50),
--     MaritalStatus VARCHAR(50),
--     HasMortgage VARCHAR(50),
--     HasDependents VARCHAR(50),
--     LoanPurpose VARCHAR(50),
--     HasCoSigner VARCHAR(50),
--     `Default` INT
-- );

-- =====================================================
-- Load Data
-- =====================================================

-- LOAD DATA LOCAL INFILE
-- 'C:/Users/ashut/Desktop/My_personal/Loan_default.csv'
-- INTO TABLE loan_default
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 LINES;

-- SELECT *
-- FROM loan_default;

-- =====================================================
-- Rename Columns
-- =====================================================

-- ALTER TABLE loan_default
--     RENAME COLUMN LoanID TO loan_id,
--     RENAME COLUMN Age TO age,
--     RENAME COLUMN LoanAmount TO loan_amount,
--     RENAME COLUMN CreditScore TO credit_score,
--     RENAME COLUMN MonthsEmployed TO months_employed,
--     RENAME COLUMN NumCreditLines TO num_credit_lines,
--     RENAME COLUMN InterestRate TO interest_rate,
--     RENAME COLUMN LoanTerm TO loan_term,
--     RENAME COLUMN DTIRatio TO dti_ratio,
--     RENAME COLUMN Education TO education,
--     RENAME COLUMN EmploymentType TO employment_type,
--     RENAME COLUMN MaritalStatus TO marital_status,
--     RENAME COLUMN HasMortgage TO has_mortgage,
--     RENAME COLUMN HasDependents TO has_dependents,
--     RENAME COLUMN LoanPurpose TO loan_purpose,
--     RENAME COLUMN HasCoSigner TO has_co_signer,
--     RENAME COLUMN `Default` TO `default`;

-- ALTER TABLE loan_default
--     RENAME COLUMN Income TO income;

