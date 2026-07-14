# Excellence High School - Database Analysis Project

A database management and data analysis project for a high school management system (`excellence_high_school`) built using **MySQL Workbench**. This repository showcases database schema manipulation, custom data filters, structural updates, and comprehensive student academic analysis.

## 🚀 Project Objectives
The queries developed in this project satisfy a variety of data analytics requirements, including:
* **Conditional Data Extraction:** Filtering top-performing students ($GPA = 100$) at specific academic levels and identifying at-risk students ($GPA < 60$).
* **Dynamic Table Creation:** Creating dedicated subsets of data (`best_students` and `failed_students`) from existing baselines using clean `DROP TABLE IF EXISTS` logic for repeatable execution.
* **String & Pattern Matching:** Querying records using specific text constraints (e.g., names starting with specific characters or matching strict length formats).
* **Statistical Reporting:** Implementing aggregate functions (`AVG`, `MIN`, `MAX`) combined with rounding mathematical operations to track school performance metrics.
* **Data Cleansing:** Handling bulk updates and managing safe configuration states (`SQL_SAFE_UPDATES`) to format raw dataset fields cleanly.

## 🛠️ Tech Stack & Tools
* **Database Engine:** MySQL
* **IDE:** MySQL Workbench

## 📌 Repository Contents
* `script.sql`: The complete, fully commented script containing clean, executable
