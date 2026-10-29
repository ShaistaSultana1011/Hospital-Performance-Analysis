
ALTER TABLE hospitals
CHANGE COLUMN `Patient_ID` patient_id INT,
CHANGE COLUMN `Admission_Date` admission_date DATE,
CHANGE COLUMN `Discharge_Date` discharge_date DATE,
CHANGE COLUMN `Hospital` hospital VARCHAR(100),
CHANGE COLUMN `Department` department VARCHAR(100),
CHANGE COLUMN `Gender` gender VARCHAR(20),
CHANGE COLUMN `Age` age INT,
CHANGE COLUMN `Blood_Group` blood_group VARCHAR(10),
CHANGE COLUMN `City` city VARCHAR(100),
CHANGE COLUMN `Insurance_Type` insurance_type VARCHAR(50),
CHANGE COLUMN `Admission_Type` admission_type VARCHAR(50),
CHANGE COLUMN `Severity` severity VARCHAR(50),
CHANGE COLUMN `Diagnosis` diagnosis VARCHAR(150),
CHANGE COLUMN `Doctor_Type` doctor_type VARCHAR(100),
CHANGE COLUMN `Procedure` `procedure` VARCHAR(100),
CHANGE COLUMN `Lab_Tests` lab_tests INT,
CHANGE COLUMN `Length_of_Stay` length_of_stay INT,
CHANGE COLUMN `Total_Bill` total_bill DECIMAL(12,2),
CHANGE COLUMN `Insurance_Covered` insurance_covered DECIMAL(12,2),
CHANGE COLUMN `Patient_Payment` patient_payment DECIMAL(12,2),
CHANGE COLUMN `Discharge_Status` discharge_status VARCHAR(50),
CHANGE COLUMN `Readmission_30_Days` readmission_30_days TINYINT,
CHANGE COLUMN `Patient_Satisfaction` patient_satisfaction DECIMAL(4,2),
CHANGE COLUMN `Age_Group` age_group VARCHAR(30);



select * from hospitals
limit 10;


#Q1.Which hospitals have the highest number of patients?

SELECT 
    Hospital,
    COUNT(DISTINCT patient_id) AS Total_Patients
FROM hospitals
GROUP BY Hospital
ORDER BY Total_Patients DESC;


#Q2.Which departments have the highest average hospital bill?

SELECT 
    Department,
    ROUND(AVG(Total_Bill), 2) AS Avg_Bill
FROM hospitals
GROUP BY Department
ORDER BY Avg_Bill DESC;


#Q3.Does severity affect hospital cost?

SELECT 
    Severity,
    COUNT(*) AS Patients,
    ROUND(AVG(Total_Bill), 2) AS Avg_Bill,
    ROUND(AVG(Length_of_Stay), 2) AS Avg_Length_of_Stay
FROM hospitals
GROUP BY Severity
ORDER BY Avg_Bill DESC;



#Q4.Is a longer hospital stay associated with higher bills?

SELECT 
    Length_of_Stay,
    COUNT(*) AS Patients,
    ROUND(AVG(Total_Bill), 2) AS Avg_Bill
FROM hospitals
GROUP BY Length_of_Stay
ORDER BY Length_of_Stay;


#Q5.Which diagnoses are most common?

SELECT 
    Diagnosis,
    COUNT(*) AS Patient_Count
FROM hospitals
GROUP BY Diagnosis
ORDER BY Patient_Count DESC
LIMIT 10;


#Q6.Which procedures are performed most frequently?

SELECT 
    `Procedure`,
    COUNT(*) AS Procedure_Count
FROM hospitals
GROUP BY `Procedure`
ORDER BY Procedure_Count DESC
LIMIT 10;


#Q7.Which departments have the highest readmission rate?

SELECT 
    Department,
    COUNT(*) AS Total_Patients,
    SUM(CASE 
        WHEN readmission_30_days = 'Yes' THEN 1 
        ELSE 0 
    END) AS Readmitted_Patients,
    ROUND(
        100.0 * SUM(CASE 
            WHEN readmission_30_days = 'Yes' THEN 1 
            ELSE 0 
        END) / COUNT(*), 
        2
    ) AS Readmission_Rate
FROM hospitals
GROUP BY Department
ORDER BY Readmission_Rate DESC;


#Q8.Does patient severity affect readmission?

SELECT 
    Severity,
    COUNT(*) AS Total_Patients,
    SUM(CASE 
        WHEN readmission_30_days = 'Yes' THEN 1 
        ELSE 0 
    END) AS Readmitted_Patients,
    ROUND(
        100.0 * SUM(CASE 
            WHEN readmission_30_days = 'Yes' THEN 1 
            ELSE 0 
        END) / COUNT(*),
        2
    ) AS Readmission_Rate
FROM hospitals
GROUP BY Severity
ORDER BY Readmission_Rate DESC;


#Q9.Which insurance types cover the highest amount?

SELECT 
    Insurance_Type,
    COUNT(*) AS Patients,
    ROUND(AVG(Insurance_Covered), 2) AS Avg_Insurance_Covered,
    ROUND(AVG(Patient_Payment), 2) AS Avg_Patient_Payment
FROM hospitals
GROUP BY Insurance_Type
ORDER BY Avg_Insurance_Covered DESC;


#Q10.Which departments have lower patient satisfaction?

SELECT 
    Department,
    COUNT(*) AS Patients,
    ROUND(AVG(Patient_Satisfaction), 2) AS Avg_Satisfaction
FROM hospitals
GROUP BY Department
ORDER BY Avg_Satisfaction ASC;
