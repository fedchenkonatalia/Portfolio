<details>
  <summary><b>View Project Details (Click to expand)</b></summary>

# 🍕 Pizza Sales — Power BI Dashboard

Comprehensive sales analysis dashboard for a pizza restaurant. The project focuses on data processing, SQL validation, and interactive visualization.

## 🛠 Tools & Skills
* **Power BI:** Data modeling, DAX, Interactive Visualization.
* **SQL Server:** Data extraction and KPI validation (using `DESKTOP-GGS8TLK\SQLEXPRESS`).
* **Excel:** Source data storage and cleaning.

## 📊 Key Insights
* **Core KPIs:** Total Revenue, Total Orders, Average Order Value, and Total Pizzas Sold.
* **Sales Trends:** Analysis of orders by day of the week and month to identify peak hours/seasons.
* **Product Performance:** Sales distribution by pizza category and size.
* **Inventory Focus:** Top 5 and Bottom 5 pizzas by revenue, quantity, and total orders.

## 📂 Project Structure
* `PizzaSalesDashboard.pbix` — Full Power BI report with DAX measures.
* `pizza_sales_excel_file.xlsx` — Raw data (~48,000 rows).
* `SQLQuery1.sql` — SQL scripts used to verify Power BI calculations against the database.

## 🚀 How to Open
1. Download all files to one folder.
2. Open `PizzaSalesDashboard.pbix` in **Power BI Desktop**.
3. **Note:** Since the dashboard was originally connected to a local SQL Server, you may need to update the data source: 
   * Go to **Home → Transform Data → Data Source Settings**.
   * Change the source to the provided `pizza_sales_excel_file.xlsx`.

</details>
