create database transformation;
use transformation;
# Question 1 : Define Data Transformation in ETL and explain why it is important
# ans-Data Transformation is the process of converting raw data into a clean, consistent, and useful format before loading it into the target system.
/*Why is Data Transformation important?
1. Data Cleaning: Removes errors, duplicates, and incorrect values.
2. Consistency: Converts data into a standard format.
3. Data Accuracy: Improves the quality and reliability of data.
4. Data Integration: Combines data from different sources into a common format.
5. Better Analysis: Makes data suitable for reporting and decision-making.*/

/* Question 2 : List any four common activities involved in Data Cleaning.
Handling Missing Values: Identifying and filling or removing missing data.
Removing Duplicates: Finding and deleting repeated records.
Correcting Inconsistent Data: Standardizing formats, spelling, and values.
Handling Outliers: Identifying and treating unusually high or low values.

Question 4 : A dataset has missing values in the “Age” column. Suggest two techniques to handle this and
explain when they should be used.
Two techniques to handle missing values in the Age column are:

1. Mean Imputation:
- Replace missing Age values with the average age of all available records.
- It should be used when the data is normally distributed and has no significant outliers.
2. Median Imputation:
- Replace missing Age values with the middle value of the available ages.
- It should be used when the data is skewed or contains outliers because the median is less affected by extreme values.

Q5. Convert the following inconsistent “Gender” entries into a standardized format (“Male”, “Female”).
Given data:

["M", "male", "F", "Female", "MALE", "f"]

--SELECT
    Gender,
    CASE
        WHEN LOWER(Gender) = 'm' THEN 'Male'
        WHEN LOWER(Gender) = 'male' THEN 'Male'
        WHEN LOWER(Gender) = 'f' THEN 'Female'
        WHEN LOWER(Gender) = 'female' THEN 'Female'
        ELSE Gender
    END AS Standardized_Gender
FROM customers;

Question 6 : What is One-Hot Encoding? Give an example with the categories: “Red, Blue, Green”.
--One-Hot Encoding is a data transformation technique used to convert categorical data into numerical (0 and 1) values so that it can be used in machine learning models.

Example:

Suppose we have a Color column with three categories: Red, Blue, and Green.

After applying One-Hot Encoding:
Color	Red	Blue	Green
Red	    1	0	     0
Blue	0	1	     0
Green	0	0	     1

Question 7 : Explain the difference between Data Integration and Data Mapping in ETL.
ans--1. Data Integration:
Data Integration is the process of combining data from multiple sources into a single, unified dataset.
Example: Combining customer data from Excel files, databases, and websites into one database.
2. Data Mapping:
Data Mapping is the process of defining how data fields from a source are matched and transferred to the corresponding fields in the target system.
Example:
Suppose the source table has a column named Cust_Name, while the target table has Customer_Name.
Question 8 : Explain why Z-score Standardization is preferred over Min-Max Scaling when outliers exist.
Q8. Explain why Z-score Standardization is preferred over Min-Max Scaling when outliers exist.
Answer:
Z-score Standardization is often preferred over Min-Max Scaling when outliers exist because it converts data based on the mean and standard deviation rather than scaling values to a fixed range.