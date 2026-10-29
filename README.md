# Hospital Performance & Patient Analytics

## Business Problem

Hospitals generate large amounts of patient data, but analyzing this information across multiple hospitals and departments can be challenging. Limited visibility into patient volume, treatment costs, length of stay, readmission patterns, insurance coverage, and patient satisfaction makes it difficult to identify operational challenges and opportunities for improvement.

This project analyzes hospital patient records to uncover patterns in hospital performance, financial metrics, and patient outcomes, supporting data-driven decision-making.

---

## Objective

Analyze hospital patient data to evaluate operational performance, understand treatment costs, identify readmission patterns, and assess patient satisfaction. The goal is to generate actionable insights that can support operational planning, cost management, and improvements in patient care.

---

## Tools Used

* Python
* MySQL
* Power BI
* Microsoft Excel / CSV

---

## Dashboard Preview

<!-- Add your Power BI dashboard screenshot here -->

![Hospital Analytics Dashboard](images/dashboard-preview.png)

---

## Analysis Performed

* Data cleaning and preprocessing
* Missing value and duplicate record analysis
* Data type validation
* Exploratory Data Analysis (EDA)
* Outlier investigation
* Age group segmentation
* Hospital-wise patient volume analysis
* Department-wise treatment cost analysis
* Diagnosis and procedure frequency analysis
* Length of stay and hospital bill analysis
* Insurance coverage and patient payment analysis
* Readmission rate analysis
* Patient satisfaction analysis
* Interactive dashboard development using Power BI

---

## Key Insights

The SQL analysis and Power BI dashboards explore the following aspects of hospital performance:

* **Patient Volume:** Examines patient distribution across hospitals and departments, along with monthly patient admission trends.
* **Hospital Performance:** Compares patient volumes across hospitals and evaluates operational patterns across departments.
* **Treatment Costs:** Analyzes average hospital bills by department and patient severity to understand differences in treatment costs.
* **Diagnosis and Procedures:** Identifies the most common diagnoses and the procedures performed most frequently.
* **Length of Stay:** Examines the relationship between hospital bills and patients' length of stay.
* **Financial Analysis:** Evaluates total hospital bills, insurance coverage, and patient payments across insurance types.
* **Readmission Patterns:** Compares 30-day readmission rates across hospitals, departments, admission types, and patient severity levels.
* **Patient Satisfaction:** Examines average patient satisfaction across departments to identify areas requiring further investigation.

---

## Business Recommendations

* **Improve Resource Planning:** Use patient admission trends and hospital-wise patient volumes to support resource allocation across hospitals and departments.
* **Monitor Treatment Costs:** Investigate departments and severity categories with higher average hospital bills to understand the factors contributing to healthcare expenses.
* **Review Length of Stay:** Examine longer hospital stays and their associated costs to identify opportunities to improve operational efficiency.
* **Monitor Readmissions:** Investigate departments and patient groups with higher readmission rates to identify opportunities to improve follow-up care and patient management.
* **Enhance Patient Satisfaction:** Review satisfaction scores across departments to identify opportunities to improve the patient experience.
* **Understand Financial Coverage:** Analyze insurance coverage and patient payments to better understand healthcare costs and patients' financial responsibilities.

---

## Project Files

* **Python Analysis:** `Hospital_Data_Cleaning_and_EDA.ipynb`
* **SQL Analysis:** `hospital_performance_Analysis.sql`
* **Power BI Dashboard:** `Healthcare_Performance_Analytics.pbix`
* **Dataset:** Hospital patient records dataset

---

## Conclusion

This project demonstrates how Python, MySQL, and Power BI can be used together to transform hospital patient records into meaningful business insights. By analyzing hospital operations, treatment costs, readmissions, insurance coverage, and patient satisfaction, the project supports evidence-based decisions related to operational efficiency, financial planning, and patient outcomes.
