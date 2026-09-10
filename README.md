# IVF-Data-Driven-Insights
An end-to-end data analytics project analyzing IVF treatment data to identify patterns in patient characteristics, diagnoses, fertilization methods, embryo development, pregnancies, and live birth outcomes using SQL, Python, and Power BI.
Business Problem

IVF treatment data contains multiple factors related to patient characteristics, treatment procedures, and outcomes. Analyzing this data can help identify patterns and differences across patient groups and treatment stages.

The main objective of this project was to understand:

Overall IVF treatment performance
Distribution of treatment cycles across diagnoses
Live birth rate across different age groups
Impact of diagnosis on treatment outcomes
Distribution of fertilization methods
Treatment progression from mature eggs to fertilized eggs and embryos
Good-quality embryo patterns
Relationship between endometrial thickness and live birth rate
Pregnancy and live birth outcomes
Tools Used
SQL
Python
Pandas
NumPy
Matplotlib
Seaborn
Power BI
Excel
Google Colab
SQL Server
Dataset

The project uses a synthetic IVF treatment dataset created for data analytics and portfolio purposes.

Dataset File
IVF_Data_Driven_Insights_Synthetic_Dataset.csv

The dataset contains information related to:

Patient age
AMH
AFC
Diagnosis
Fertilization method
Mature eggs
Fertilized eggs
Embryos
Good-quality embryos
Endometrial thickness
Pregnancy outcome
Live birth outcome
Treatment cycle information

The dataset contains 1,500 IVF treatment cycles.

Analysis
SQL

SQL was used to perform business-oriented analysis on the IVF treatment data.

The analysis included:

Total treatment cycles
Total pregnancies
Total live births
Diagnosis-wise treatment cycles
Diagnosis-wise pregnancy outcomes
Diagnosis-wise live birth rates
Age-group analysis
Fertilization method analysis
Embryo-related analysis
Ranking and comparison
Aggregations using GROUP BY
Conditional analysis using CASE
Filtering using WHERE and HAVING
Joins
Common Table Expressions (CTEs)
Window functions
Date-based analysis
Python

Python was used for data cleaning, exploratory data analysis and visualization.

The analysis included:

Data loading using Pandas
Data type checking
Missing-value analysis
Duplicate detection and removal
Outlier detection
Feature engineering
Descriptive statistics
Group-based analysis
Exploratory Data Analysis (EDA)
Data visualization

Libraries used:

Pandas
NumPy
Matplotlib
Seaborn

The analysis was performed in Google Colab.

Power BI

An interactive IVF Treatment Analytics Dashboard was created in Power BI.

The dashboard includes:

Average Age
Average AMH
Average AFC
Total Treatment Cycles
Total Pregnancies
Total Live Births
Treatment Cycles by Diagnosis
Live Birth Rate by Age Group
Fertilization Method Distribution
Mature Eggs
Fertilized Eggs
Total Embryos
Good-Quality Embryos
Diagnosis-wise Performance
Live Birth Rate by Endometrial Thickness
Interactive filters for Cycle ID, Age Group and Diagnosis
Key Findings

The analysis provided the following observations:

A total of 1,500 IVF treatment cycles were analyzed.
There were 755 pregnancies recorded in the dataset.
The dataset recorded 367 live births.
Live birth rates varied across different age groups.
Treatment cycles were distributed differently across various diagnoses.
Fertilization methods showed different levels of usage across treatment cycles.
The treatment progression from mature eggs to fertilized eggs and embryos provided insights into the IVF process.
Good-quality embryo counts represented an important stage of treatment progression.
Diagnosis-level analysis showed differences in pregnancy and live birth rates.

Note: These findings describe patterns in the synthetic dataset and should not be interpreted as clinical or medical conclusions.

Recommendations

Based on the analysis, the following data-driven recommendations can be considered:

Monitor IVF outcomes across different age groups.
Compare treatment performance across diagnosis categories.
Track the progression from mature eggs to fertilized eggs and embryos.
Monitor good-quality embryo trends as part of treatment-stage analysis.
Use interactive dashboards to identify patterns and support data-driven planning.
Further investigate factors associated with differences in pregnancy and live birth outcomes using larger and clinically validated datasets.

These recommendations are for analytical and portfolio purposes and are not medical recommendations.

Project Workflow
Raw IVF Dataset
       ↓
Data Cleaning
       ↓
Exploratory Data Analysis
       ↓
SQL Business Analysis
       ↓
Feature Engineering
       ↓
Data Visualization
       ↓
Power BI Dashboard
       ↓
Insights & Recommendations
Project Structure
IVF-Data-Driven-Insights/
│
├── Data/
│   └── IVF_Data_Driven_Insights_Synthetic_Dataset.csv
│
├── SQL/
│   └── IVF_Data_Analysis.sql
│
├── Python/
│   └── IVF_Data_Analysis.ipynb
│
├── Power BI/
│   └── IVF_Treatment_Analytics_Dashboard.pbix
│
├── Documentation/
│   └── IVF_Data_Driven_Insights.pdf
│
├── Dashboard/
│   └── IVF_Treatment_Analytics_Dashboard.png
│
└── README.md
