*# Data Dictionary*



*| Column Name        | Data Type    | Description                                                                                |*

*| ------------------ | ------------ | ------------------------------------------------------------------------------------------ |*

*| loan\_id            | Integer      | Unique identifier assigned to each loan application.                                       |*

*| age                | Integer      | Age of the borrower (in years).                                                            |*

*| income             | Decimal      | Annual income of the borrower (USD).                                                       |*

*| loan\_amount        | Decimal      | Total amount of the loan approved (USD).                                                   |*

*| credit\_score       | Integer      | Creditworthiness score of the borrower. Higher scores indicate lower credit risk.          |*

*| months\_employed    | Integer      | Number of months the borrower has been employed.                                           |*

*| num\_credit\_lines   | Integer      | Total number of active credit accounts held by the borrower.                               |*

*| interest\_rate      | Decimal      | Annual interest rate applied to the loan (%).                                              |*

*| loan\_term          | Integer      | Duration of the loan repayment period (months).                                            |*

*| dti\_ratio          | Decimal      | Debt-to-Income Ratio. Represents the proportion of income used to service debt.            |*

*| education          | Categorical  | Highest education level attained by the borrower (High School, Bachelor's, Master's, PhD). |*

*| employment\_type    | Categorical  | Employment status of the borrower (Full-time, Part-time, Self-employed, Unemployed).       |*

*| marital\_status     | Categorical  | Borrower's marital status (Single, Married, Divorced).                                     |*

*| has\_mortgage       | Binary (0/1) | Indicates whether the borrower has an existing mortgage (1 = Yes, 0 = No).                 |*

*| has\_dependents     | Binary (0/1) | Indicates whether the borrower has financial dependents (1 = Yes, 0 = No).                 |*

*| loan\_purpose       | Categorical  | Purpose of the loan (Home, Auto, Business, Education, Other).                              |*

*| has\_co\_signer      | Binary (0/1) | Indicates whether the loan has a co-signer (1 = Yes, 0 = No).                              |*

*| default            | Binary (0/1) | Target variable indicating loan repayment status (1 = Default, 0 = No Default).            |*



*---*



*# Data Quality Summary*



*| Check             | Result                                        |*

*| ----------------- | --------------------------------------------- |*

*| Total Records     | 255,347                                       |*

*| Missing Values    | None identified                               |*

*| Duplicate Records | None identified                               |*

*| Target Variable   | Default (Binary: 0 = No Default, 1 = Default) |*



*---*

