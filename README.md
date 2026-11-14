# 🛒 E-Commerce Sales & Customer Analytics

An end-to-end data analytics project using **SQL, PostgreSQL, and Power BI** to analyze e-commerce sales performance, customer purchasing behavior, profitability, and regional trends through interactive dashboards.

## 📌 Project Overview

This project focuses on transforming raw e-commerce data into meaningful business insights. Using SQL for data extraction and analysis and Power BI for interactive visualization, the project helps identify sales trends, profitable product categories, customer behavior, and business performance.

The objective is to support data-driven business decisions through data analysis and visualization.

## 🎯 Project Objectives

- Analyze overall sales and profit performance.
- Identify high-performing products and categories.
- Understand customer purchasing behavior.
- Evaluate regional sales performance.
- Analyze product returns and their impact on profitability.
- Generate actionable business recommendations.

## 🛠️ Tools & Technologies

| Technology | Purpose |
|---|---|
| PostgreSQL | Database management |
| SQL | Data querying and analysis |
| Power BI | Interactive dashboards |
| DAX | KPI calculations and measures |
| Microsoft Excel | Dataset management |

## 🏗️ Project Architecture

The project follows a data analytics workflow, from raw data collection to business insights.

```mermaid
flowchart TD
    A[Raw E-Commerce Datasets] --> B[PostgreSQL Database]
    B --> C[SQL Queries and Analysis]
    C --> D[Data Extraction and Transformation]
    D --> E[Power BI]
    E --> F[Data Modeling and DAX Measures]
    F --> G[Interactive Dashboard]
    G --> H[Business Insights and Recommendations]
## 📂 Dataset Information

The project uses e-commerce datasets containing information about:

- Orders
- Customers
- Products
- Returns
- Regions

These datasets provide the foundation for analyzing sales, profitability, and customer purchasing patterns.

## ⚙️ Project Workflow

### 1. Data Preparation & SQL Analysis

- Imported CSV datasets into PostgreSQL.
- Created database tables.
- Performed SQL queries, joins, and transformations.
- Combined relevant data to prepare the final dataset.

### 2. Power BI Development

- Imported data into Power BI.
- Cleaned and transformed data.
- Created DAX measures for business KPIs.
- Developed interactive visualizations.
- Added slicers and filters for dynamic analysis.

### 3. Dashboard Development

Created an interactive E-Commerce Sales Dashboard to monitor business performance and identify important trends.

## 📊 Dashboard Preview

The dashboard provides an overview of e-commerce business performance through:

**Key Performance Indicators (KPIs)**

- Total Sales
- Total Profit
- Total Orders
- Profit Margin

**Visualizations & Analysis**

- Sales Trends Over Time
- Sales by Category
- Profit by Category
- Sales by Region
- Top-Selling Products
- Customer Analysis
- Return Analysis

## 💡 Key Business Insights

- High sales volume does not always translate into higher profitability.
- Product returns can negatively affect overall profit.
- Certain product categories contribute more significantly to profits.
- Regional performance varies across different locations.
- Excessive discounts can reduce profit margins.

## 🚀 Business Recommendations

- Focus on high-profit products and categories.
- Reduce excessive discounting.
- Improve product quality to minimize returns.
- Strengthen customer retention strategies.
- Identify underperforming regions and improve sales strategies.

## 📁 Project Structure

```text
Ecommerce-Sales-Customer-Analysis/
│
├── Dataset/
│   ├── Global Superstore.xls
│   ├── Superstore order.csv
│   ├── Superstore people.csv
│   └── superstore returns.csv
│
├── SQL/
│   └── SQL Analysis File
│
├── Power BI/
│   └── Power BI Dashboard (.pbix)
│
├── Dashboard/
│   └── Dashboard Screenshot
│
└── README.md
```

## 👩‍💻 Author

**Vedika Dherange**

Computer Engineering Student

GitHub: [VedikaDherange](https://github.com/VedikaDherange)

---

⭐ If you find this project useful, feel free to explore the repository!
