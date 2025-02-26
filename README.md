# 🚖 Goodcabs Ad-Hoc Analysis with MySQL & Jupyter Notebook

This project is an **ad-hoc data analysis** of Goodcabs' operations, focusing on **trip patterns, passenger behavior, and target performance**. The analysis was conducted using **MySQL** for querying and **Jupyter Notebook** for documentation, with queries executed directly from Jupyter by connecting to a **MySQL database hosted locally**.

---

## 📌 Project Overview

### 🚨 Problem Statement: Goodcabs Data Analysis

Goodcabs, a ride-hailing service operating in multiple tier-2 cities, aims to analyze its **trip performance, passenger behavior, and business targets** to enhance operational efficiency and customer retention.

### 🔍 Business Challenges

1. **Understanding Passenger Behavior**  
   - How many passengers are first-time riders vs. repeat customers?  
   - What factors influence repeat trip frequency?  
   - Are there seasonal or weekday/weekend trends in trip patterns?  

2. **Evaluating City-Wise Performance**  
   - Which cities have the highest and lowest trip volumes?  
   - How does passenger engagement vary across different locations?  
   - What are the key factors impacting city-wise trip demand?  

3. **Assessing Revenue & Fare Insights**  
   - What are the average fare amounts per trip across cities?  
   - How do fare trends vary with trip distance and passenger type?  
   - Are there pricing anomalies affecting revenue generation?  

4. **Comparing Actual Performance Against Targets**  
   - Are monthly targets for new passengers and trips being met?  
   - How do actual passenger ratings compare with target ratings?  
   - What corrective actions can improve performance in underperforming cities?  

### 📌 Objective

The goal of this project is to conduct an **ad-hoc analysis** using SQL queries on MySQL databases and document insights in a structured manner. The findings will help **Goodcabs optimize trip efficiency, improve passenger retention, and align business performance with strategic targets**.

---

## 🛠️ Tech Stack

- **Database**: MySQL (Local Instance)
- **Query Execution**: SQL (via Jupyter Notebook)
- **Programming Language**: Python
- **Libraries Used**: `mysql-connector-python`, `pandas`, `matplotlib`, `seaborn`
- **Data Visualization**: Matplotlib, Seaborn

---

## 📂 Dataset Description

The dataset consists of **two databases**:  

### 1️⃣ `trips_db` - Trip & Passenger Data  
- `dim_city` - City-level details  
- `dim_date` - Date segmentation (weekday/weekend)  
- `fact_passenger_summary` - Monthly passenger stats (new vs repeat)  
- `dim_repeat_trip_distribution` - Breakdown of repeat trips  
- `fact_trips` - Individual trip details (distance, fare, ratings)  

### 2️⃣ `targets_db` - Monthly Business Targets  
- `city_target_passenger_rating` - Target ratings for each city  
- `monthly_target_new_passengers` - New passenger targets per city  
- `monthly_target_trips` - Expected trip volume per city  

*(Detailed schema available in [`meta_data.txt`](meta_data.txt)).*

---

## 🔍 Key Insights from Ad-Hoc Analysis

### 🏙️ **City-Wise Trip Performance**
- Identified **top-performing cities** based on total trip volume.
- Examined cities with **high repeat passenger retention**.

### 🚶‍♂️ **Passenger Behavior Trends**
- Analyzed the **ratio of new vs. repeat passengers** across cities.
- Identified **peak travel days** (weekday vs weekend patterns).

### 💰 **Fare & Ratings Distribution**
- Assessed **average fare per trip** across different cities.
- Examined **passenger vs driver rating trends**.

### 🎯 **Target vs Actual Performance**
- Compared **monthly targets vs actual trip count**.
- Assessed **targeted vs actual new passenger acquisition**.

---

## 📜 Project Files

- 📄 **[ADHOC Requests.ipynb](https://github.com/prudhvi1029/GoodCabs-Ad-Hoc-Data-Analysis/blob/main/ADHOC%20Requests.ipynb)** - Jupyter Notebook with SQL execution and analysis.
- 🗄️ **[queries.sql](#)** - SQL queries used for extracting insights. *(Upload the file and update the link)*
- 📊 **[meta_data.txt](https://github.com/prudhvi1029/GoodCabs-Ad-Hoc-Data-Analysis/blob/main/DataSets/meta_data.txt)** - Table schema and descriptions.
- 📝 **[problem_statement.pdf](https://github.com/prudhvi1029/GoodCabs-Ad-Hoc-Data-Analysis/blob/main/problem_statement.pdf)** - Business problem and objectives.
- ❓ **[ad-hoc-requests.pdf](https://github.com/prudhvi1029/GoodCabs-Ad-Hoc-Data-Analysis/blob/main/ad-hoc-requests.pdf)** - Business queries analyzed in this project.
- 🔍 **[primary_and_secondary_questions.pdf](https://github.com/prudhvi1029/GoodCabs-Ad-Hoc-Data-Analysis/blob/main/primary_and_secondary_questions.pdf)** - Key questions guiding the analysis.

---

## 🚀 How to Run the Analysis

1. **Set Up MySQL Database**
   - Install **MySQL** and create the **trips_db** and **targets_db** databases.
   - Import the datasets (CSV or SQL dump).

2. **Install Required Python Libraries**
   ```bash
   pip install mysql-connector-python pandas matplotlib seaborn

3. **Connect Jupyter Notebook to MySQL**  
- Open **`ADHOC Requests.ipynb`** in Jupyter Notebook.  
- Update the **database connection credentials** to match your MySQL setup.  
- Ensure MySQL is running locally, and the **trips_db** and **targets_db** databases are accessible.  

4. **Run SQL Queries**  
- Execute the notebook cells to **retrieve data from MySQL**.  
- Use **SQL queries** to extract trip details, passenger trends, and business insights.  
- Analyze the retrieved data using **Python & Pandas** for further insights.  

---

## 🔮 Future Scope  

- **Power BI Dashboard Development**: A **Power BI dashboard** will be built soon to visualize key metrics and **address primary and secondary business questions**.  
- **Forecasting Passenger Demand**: Apply **trend analysis & forecasting techniques** to predict future ride demand.  

