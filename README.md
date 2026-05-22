# SQL Data Cleaning and Exploratory Data Analysis Project

## Overview

This project demonstrates an end-to-end SQL data analysis workflow using MySQL.  
The project focuses on cleaning raw layoffs data and performing exploratory data analysis (EDA) to identify trends, patterns, and business insights.

The workflow includes:
- Data cleaning
- Data transformation
- Handling duplicates and null values
- Standardization
- Exploratory data analysis
- Trend analysis

---

## Dataset Used

Layoffs dataset containing company, industry, country, total layoffs, percentage layoffs, funding, and date-related information.

---

## Technologies Used

- MySQL
- SQL
- Window Functions
- Common Table Expressions (CTEs)

---

## Data Cleaning Process

The following cleaning steps were performed on the raw dataset:

- Removed duplicate records using `ROW_NUMBER()`
- Standardized inconsistent text values
- Converted date formats using `STR_TO_DATE()`
- Handled null and blank values
- Removed unnecessary columns
- Created staging tables for transformation

---

## Exploratory Data Analysis (EDA)

Performed analysis to identify meaningful insights such as:

- Total layoffs by company
- Industry-wise layoffs analysis
- Country-wise layoffs analysis
- Yearly and monthly trends
- Top companies with highest layoffs
- Rolling totals and ranking analysis

---

## SQL Concepts Used

- CTEs
- Window Functions
- `ROW_NUMBER()`
- `CASE WHEN`
- `GROUP BY`
- Aggregate Functions
- Ranking Functions
- Rolling Totals
- Joins
- Date Functions

---

## Key Insights

- Identified industries with highest layoffs
- Analyzed yearly layoff trends
- Compared company-wise workforce reductions
- Observed regional and industry impact patterns

---

## What I Learned

- Importance of data cleaning before analysis
- Real-world SQL workflow for analytics projects
- Practical usage of window functions and CTEs
- How to generate business insights from raw datasets

---

## Conclusion

This project helped strengthen my SQL skills by applying data cleaning and exploratory data analysis techniques on a real-world dataset using MySQL.
