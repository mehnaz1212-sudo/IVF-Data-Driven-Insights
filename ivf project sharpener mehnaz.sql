CREATE DATABASE IVF_Analytics;
USE IVF_Analytics;

SELECT *
FROM dbo.IVF_Data_Cleaned;

-- Count the rows
SELECT COUNT(*) AS Total_Cycles
FROM IVF_Data_Cleaned;

-- View specific columns
SELECT Patient_Age,
       Diagnosis,
       Clinical_Pregnancy
FROM IVF_Data_Cleaned;

-- WHERE Clause-- Patients older than 35
SELECT *
FROM IVF_Data_Cleaned
WHERE Patient_Age > 35;



-- ORDER BY-- Sort by age
SELECT *
FROM IVF_Data_Cleaned
ORDER BY Patient_Age;


-- Sort by cycle cost
SELECT *
FROM IVF_Data_Cleaned
ORDER BY Cycle_Cost_INR DESC;

-- Aggregate Functions
-- Average age
SELECT AVG(Patient_Age) AS Average_Age
FROM IVF_Data_Cleaned;


-- Maximum AMH
SELECT MAX(AMH_ng_mL) AS Highest_AMH
FROM IVF_Data_Cleaned;


-- Minimum cycle cost
SELECT MIN(Cycle_Cost_INR) AS Lowest_Cost
FROM IVF_Data_Cleaned;


-- GROUP BY
-- Number of patients in each age group
SELECT Age_Group,
       COUNT(*) AS Total
FROM IVF_Data_Cleaned
GROUP BY Age_Group;


-- Average AMH by age group
SELECT Age_Group,
       AVG(AMH_ng_mL) AS Average_AMH
FROM IVF_Data_Cleaned
GROUP BY Age_Group;


-- Average cost by diagnosis
SELECT Diagnosis,
       AVG(Cycle_Cost_INR) AS Average_Cost
FROM IVF_Data_Cleaned
GROUP BY Diagnosis;


-- HAVING
-- Diagnoses with more than 200 cases
SELECT Diagnosis,
       COUNT(*) AS Total
FROM IVF_Data_Cleaned
GROUP BY Diagnosis
HAVING COUNT(*) > 200;


-- CASE Statement
-- Categorize age
SELECT Patient_Age,
       CASE
           WHEN Patient_Age < 30 THEN 'Young'
           WHEN Patient_Age <= 35 THEN 'Middle'
           ELSE 'Older'
       END AS Age_Category
FROM IVF_Data_Cleaned;


--Subquery
-- Patients older than the average age
SELECT *
FROM IVF_Data
WHERE Patient_Age >
(
    SELECT AVG(Patient_Age)
    FROM IVF_Data_Cleaned
);


-- CTE
-- Calculate the average AMH
WITH AMH_CTE AS
(
    SELECT Age_Group,
           AVG(AMH_ng_mL) AS Average_AMH
    FROM IVF_Data_Cleaned
    GROUP BY Age_Group
)
SELECT *
FROM AMH_CTE;


-- Window Functions
-- Rank patients by AMH
SELECT Patient_Age,
       AMH_ng_mL,
       RANK() OVER
       (
           ORDER BY AMH_ng_mL DESC
       ) AS AMH_Rank
FROM IVF_Data_Cleaned;



-- Row number
SELECT Cycle_ID,
       ROW_NUMBER() OVER
       (
           ORDER BY Cycle_Cost_INR DESC
       ) AS Row_Num
FROM IVF_Data_Cleaned;


-- Dense rank
SELECT Cycle_ID,
       Cycle_Cost_INR,
       DENSE_RANK() OVER
       (
           ORDER BY Cycle_Cost_INR DESC
       ) AS Cost_Rank
FROM IVF_Data_Cleaned;


-- JOINs

-- my dataset contains only one table, so I created another table.

CREATE TABLE Doctors
(
    Doctor_ID INT,
    Diagnosis VARCHAR(100)
);

INSERT INTO Doctors
VALUES
(1,'PCOS'),
(2,'Male Factor'),
(3,'Endometriosis');

-- INNER JOIN

SELECT a.Cycle_ID,
       a.Diagnosis,
       b.Doctor_ID
FROM IVF_Data_Cleaned a
INNER JOIN Doctors b
ON a.Diagnosis = b.Diagnosis;


-- Running Totals

-- Calculated the cumulative cycle cost.

SELECT Cycle_ID,
       Cycle_Cost_INR,
       SUM(Cycle_Cost_INR)
       OVER
       (
           ORDER BY Cycle_ID
       ) AS Running_Total
FROM IVF_Data_Cleaned;



--Percentiles

-- Divided patients into age groups.

SELECT Patient_Age,
       NTILE(4)
       OVER
       (
           ORDER BY Patient_Age
       ) AS Age_Quartile
FROM IVF_Data_Cleaned;



-- Cohort Analysis

-- Analyze patients by age group.

SELECT Age_Group,
       COUNT(*) AS Total_Cycles,
       AVG(Cycle_Cost_INR) AS Average_Cost
FROM IVF_Data_Cleaned
GROUP BY Age_Group;



-- Funnel Analysis

-- Analyzed the IVF treatment process.

SELECT
SUM(Eggs_Retrieved) AS Eggs_Retrieved,
SUM(Mature_Eggs) AS Mature_Eggs,
SUM(Fertilized_Eggs) AS Fertilized_Eggs,
SUM(Embryos_Developed) AS Embryos_Developed
FROM IVF_Data_Cleaned;



-- Customer Segmentation

-- Segment patients by AMH.

SELECT Patient_Age,
       AMH_ng_mL,
       CASE
           WHEN AMH_ng_mL < 2 THEN 'Low'
           WHEN AMH_ng_mL < 4 THEN 'Medium'
           ELSE 'High'
       END AS AMH_Segment
FROM IVF_Data_Cleaned;