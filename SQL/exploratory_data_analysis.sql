-- =====================================================
-- Total Records
-- =====================================================

-- SELECT COUNT(*) AS total_records
-- FROM loan_default;

-- =====================================================
-- Null Value Check
-- =====================================================

-- SELECT
--     SUM(CASE WHEN loan_id IS NULL THEN 1 ELSE 0 END) AS id_nulls,
--     SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS age_nulls,
--     SUM(CASE WHEN income IS NULL THEN 1 ELSE 0 END) AS income_nulls,
--     SUM(CASE WHEN loan_amount IS NULL THEN 1 ELSE 0 END) AS loan_amount_nulls,
--     SUM(CASE WHEN credit_score IS NULL THEN 1 ELSE 0 END) AS credit_score_nulls,
--     SUM(CASE WHEN months_employed IS NULL THEN 1 ELSE 0 END) AS months_employed_nulls,
--     SUM(CASE WHEN num_credit_lines IS NULL THEN 1 ELSE 0 END) AS num_credit_lines_nulls,
--     SUM(CASE WHEN interest_rate IS NULL THEN 1 ELSE 0 END) AS interest_rate_nulls,
--     SUM(CASE WHEN loan_term IS NULL THEN 1 ELSE 0 END) AS loan_term_nulls,
--     SUM(CASE WHEN dti_ratio IS NULL THEN 1 ELSE 0 END) AS dti_ratio_nulls,
--     SUM(CASE WHEN education IS NULL THEN 1 ELSE 0 END) AS education_nulls,
--     SUM(CASE WHEN employment_type IS NULL THEN 1 ELSE 0 END) AS employment_type_nulls,
--     SUM(CASE WHEN marital_status IS NULL THEN 1 ELSE 0 END) AS marital_status_nulls,
--     SUM(CASE WHEN has_mortgage IS NULL THEN 1 ELSE 0 END) AS has_mortgage_nulls,
--     SUM(CASE WHEN has_dependents IS NULL THEN 1 ELSE 0 END) AS has_dependents_nulls,
--     SUM(CASE WHEN loan_purpose IS NULL THEN 1 ELSE 0 END) AS loan_purpose_nulls,
--     SUM(CASE WHEN has_co_signer IS NULL THEN 1 ELSE 0 END) AS has_co_signer_nulls,
--     SUM(CASE WHEN `default` IS NULL THEN 1 ELSE 0 END) AS default_nulls
-- FROM loan_default;

-- =====================================================
-- Employment Type Distribution
-- =====================================================

-- SELECT
--     employment_type,
--     COUNT(*) AS total
-- FROM loan_default
-- GROUP BY employment_type;

-- =====================================================
-- Loan Default Rate
-- =====================================================

-- SELECT
--     `default`,
--     COUNT(*) AS total,
--     ROUND(
--         COUNT(*) * 100 / (SELECT COUNT(*) FROM loan_default),
--         2
--     ) AS percentage
-- FROM loan_default
-- GROUP BY `default`;

-- =====================================================
-- Overall Default Rate
-- =====================================================

-- SELECT
--     ROUND(
--         SUM(CASE WHEN `default` = 1 THEN 1 ELSE 0 END) * 100.0
--         / COUNT(*),
--         2
--     ) AS default_rate
-- FROM loan_default;

-- =====================================================
-- Summary Statistics
-- =====================================================

-- SHOW COLUMNS FROM loan_default;

-- Age Statistics

-- SELECT
--     MIN(age) AS min_age,
--     MAX(age) AS max_age,
--     AVG(age) AS avg_age
-- FROM loan_default;

-- Income Statistics

-- SELECT
--     MIN(income) AS min_income,
--     MAX(income) AS max_income,
--     AVG(income) AS avg_income
-- FROM loan_default;

-- Loan Amount Statistics

-- SELECT
--     MIN(loan_amount) AS min_loan_amt,
--     MAX(loan_amount) AS max_loan_amt,
--     ROUND(AVG(loan_amount), 2) AS avg_loan_amt
-- FROM loan_default;

-- Average Loan Amount

-- SELECT
--     ROUND(AVG(loan_amount), 2) AS avg_loan_amt
-- FROM loan_default;

-- Credit Score Statistics

-- SELECT
--     MIN(credit_score) AS min_credit_score,
--     MAX(credit_score) AS max_credit_score,
--     ROUND(AVG(credit_score), 2) AS avg_credit_score
-- FROM loan_default;

-- Average Credit Score

-- SELECT
--     ROUND(AVG(credit_score), 2) AS avg_credit_score
-- FROM loan_default;

-- Months Employed Statistics

-- SELECT
--     MIN(months_employed) AS min_months,
--     MAX(months_employed) AS max_months,
--     ROUND(AVG(months_employed), 2) AS avg_months
-- FROM loan_default;

-- Number of Credit Lines Statistics

-- SELECT
--     MIN(num_credit_lines) AS min_credit_lines,
--     MAX(num_credit_lines) AS max_credit_lines,
--     ROUND(AVG(num_credit_lines), 2) AS avg_credit_lines
-- FROM loan_default;

-- Interest Rate Statistics

-- SELECT
--     MIN(interest_rate) AS min_interest_rate,
--     MAX(interest_rate) AS max_interest_rate,
--     ROUND(AVG(interest_rate), 2) AS avg_interest_rate
-- FROM loan_default;

-- Loan Term Statistics

-- SELECT
--     MIN(loan_term) AS min_loan_term,
--     MAX(loan_term) AS max_loan_term,
--     ROUND(AVG(loan_term), 2) AS avg_loan_term
-- FROM loan_default;

-- DTI Ratio Statistics

-- SELECT
--     ROUND(MIN(dti_ratio), 1) AS min_dti_ratio,
--     ROUND(MAX(dti_ratio), 1) AS max_dti_ratio,
--     ROUND(AVG(dti_ratio), 1) AS avg_dti_ratio
-- FROM loan_default;

-- =====================================================
-- Employment Type vs Default
-- =====================================================

-- SELECT
--     employment_type,
--     `default`,
--     COUNT(*) AS default_rate_count
-- FROM loan_default
-- GROUP BY
--     employment_type,
--     `default`;

-- =====================================================
-- Education vs Default
-- =====================================================

-- SELECT
--     education,
--     `default`,
--     COUNT(*) AS default_rate_count
-- FROM loan_default
-- GROUP BY
--     education,
--     `default`;

-- =====================================================
-- Loan Purpose vs Default
-- =====================================================

-- SELECT
--     loan_purpose,
--     `default`,
--     COUNT(*) AS default_rate_count
-- FROM loan_default
-- GROUP BY
--     loan_purpose,
--     `default`;

-- =====================================================
-- Average Loan Amount by Default Status
-- =====================================================

-- SELECT
--     `default`,
--     ROUND(AVG(loan_amount), 2) AS avg_loan_amount
-- FROM loan_default
-- GROUP BY
--     `default`;

-- =====================================================
-- Average Income by Default Status
-- =====================================================

-- SELECT
--     `default`,
--     ROUND(AVG(income), 2) AS avg_income
-- FROM loan_default
-- GROUP BY
--     `default`;

-- =====================================================
-- Average Credit Score by Default Status
-- =====================================================

-- SELECT
--     `default` AS default_status,
--     ROUND(AVG(credit_score), 2) AS avg_credit_score
-- FROM loan_default
-- GROUP BY
--     `default`;

-- =====================================================
-- Average Interest Rate by Default Status
-- =====================================================

-- SELECT
--     `default` AS default_status,
--     ROUND(AVG(interest_rate), 2) AS avg_interest_rate
-- FROM loan_default
-- GROUP BY
--     `default`;

-- =====================================================
-- Age Group vs Default
-- =====================================================

-- SELECT
--     CASE
--         WHEN age < 25 THEN 'Under 25'
--         WHEN age BETWEEN 25 AND 34 THEN '25-34'
--         WHEN age BETWEEN 35 AND 44 THEN '35-44'
--         WHEN age BETWEEN 45 AND 54 THEN '45-54'
--         ELSE '55+'
--     END AS age_group,
--     `default`,
--     COUNT(*) AS total
-- FROM loan_default
-- GROUP BY
--     age_group,
--     `default`;

-- =====================================================
-- Top 10 Highest Loan Amounts
-- =====================================================

-- SELECT
--     loan_amount
-- FROM loan_default
-- ORDER BY
--     loan_amount DESC
-- LIMIT 10;

-- =====================================================
-- Loan Purpose with Highest Average Loan Amount
-- =====================================================

-- SELECT
--     loan_purpose,
--     AVG(loan_amount) AS avg_loan
-- FROM loan_default
-- GROUP BY
--     loan_purpose
-- ORDER BY
--     avg_loan DESC;

-- =====================================================
-- Average Income by Employment Type
-- =====================================================

-- SELECT
--     employment_type,
--     AVG(income) AS avg_income
-- FROM loan_default
-- GROUP BY
--     employment_type
-- ORDER BY
--     avg_income DESC;

-- =====================================================
-- Marital Status vs Default
-- =====================================================

-- SELECT
--     marital_status,
--     `default`,
--     COUNT(*) AS default_count
-- FROM loan_default
-- GROUP BY
--     marital_status,
--     `default`
-- ORDER BY
--     default_count DESC;

-- =====================================================
-- Homeowners vs Non-Homeowners
-- =====================================================

-- SELECT
--     has_mortgage,
--     `default`,
--     COUNT(*) AS total
-- FROM loan_default
-- GROUP BY
--     has_mortgage,
--     `default`;

-- =====================================================
-- Credit Score Category vs Default
-- =====================================================

-- SELECT
--     CASE
--         WHEN credit_score < 600 THEN 'Poor'
--         WHEN credit_score BETWEEN 600 AND 699 THEN 'Fair'
--         WHEN credit_score BETWEEN 700 AND 749 THEN 'Good'
--         ELSE 'Excellent'
--     END AS credit_score_category,
--     `default`,
--     COUNT(*) AS total
-- FROM loan_default
-- GROUP BY
--     credit_score_category,
--     `default`;

-- =====================================================
-- Highest-Risk Customer Profile
-- =====================================================

-- SELECT
--     employment_type,
--     loan_purpose,
--     `default`,
--     COUNT(*) AS total
-- FROM loan_default
-- GROUP BY
--     employment_type,
--     loan_purpose,
--     `default`
-- ORDER BY
--     total DESC;

-- =====================================================
-- Average Values Among Defaulters
-- =====================================================

-- SELECT
--     ROUND(AVG(age), 2) AS avg_age,
--     ROUND(AVG(income), 2) AS avg_income,
--     ROUND(AVG(loan_amount), 2) AS avg_loan_amount,
--     ROUND(AVG(credit_score), 2) AS avg_credit_score,
--     ROUND(AVG(interest_rate), 2) AS avg_interest_rate
-- FROM loan_default
-- WHERE `default` = 1;