  ## 📊 E-Commerce Sales Performance Analysis

This project demonstrates an end-to-end data analysis pipeline focused on identifying sales trends, regional performance disparities, and customer value for an e-commerce business. This analysis utilizes a multi-tool stack, highlighting proficiency in data transformation, advanced SQL querying, and professional visualization.

 
 ## 🛠️ Technology Stack 

| Component | Tool Used | Purpose in Project |
| :--- | :--- | :--- |
| **Data Cleaning / ETL** | Python (Pandas) | Initial data loading, cleaning, feature engineering (e.g., calculating Profit), and preparing data for the database. |
| **Database / Querying** | MySQL 8.0+ | Data storage and execution of complex analytical queries, including calculating Customer Lifetime Value and Month-over-Month Growth Rate using the LAG() window function. |
| **Visualization / Reporting** | Power BI (or Tableau) | Creation of an interactive dashboard to visualize key performance indicators (KPIs) like revenue trends and regional breakdowns. |
| **Documentation** | Markdown / PDF Report | Final communication of insights, methodology, and actionable business recommendations. |



## 📂  Project Files  

| File Name | Description |
| :--- | :--- |
| **data_processor.py** | The Python script used to ingest raw data, calculate the Profit column, and output the clean data source (cleaned_data.csv). |
| **mysql_queries.sql** | Contains the advanced SQL queries, including regional revenue aggregation and the use of the LAG() function for time-series analysis (Monthly Growth Rate). |
| **e_commerce_data.csv** | The initial, raw input dataset used for the analysis. |
| **cleaned_data.csv** | The cleaned and enhanced dataset output by the Python script, used as the source for MySQL and Power BI. |



### 💡 Key Analytical Findings

The analysis was performed on sales data spanning four months. The key insights derived from the MySQL queries and Power BI visualizations include:

* **Regional Disparity:** The North region is the primary revenue driver, contributing the highest volume of sales.
* **High-Value Customers:** A query was executed to identify customers with a Customer Lifetime Value (CLV) exceeding $1000, recommending them for targeted retention campaigns.
* **Growth Volatility:** Monthly revenue trends show significant volatility, with a sharp drop in February followed by a recovery in March/April, indicating a need for stable promotional strategies.

### 📈 Actionable Recommendations (Summary)

The final report provides concrete recommendations derived from the data:

* **Targeted Retention:** Focus resources on retaining high-value customers identified in the SQL analysis.
* **Stabilize Trends:** Investigate the cause of the sharp revenue drop in February to prevent recurrence and ensure more consistent monthly growth.

## 👁️ Final Visualization Dashboard

Below is a snapshot of the primary dashboard, summarizing Regional Sales and Monthly Revenue Trends, which were generated after cleaning the data in Python and executing queries in MySQL.

![E-Commerce Dashboard Summary](https://github.com/SamyaDutta2026/ECommerce_Data_Analysis/blob/main/SalesAnalysis.png?raw=true)

