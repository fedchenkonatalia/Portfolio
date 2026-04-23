use [Pizza DB]
select * from pizza_sales

SELECT SUM(cast(total_price AS FLOAT)) AS TOTAL_REVENUE from pizza_sales

SELECT SUM(cast(total_price AS FLOAT)) / COUNT(DISTINCT CAST(order_id AS int)) as AVG_Order_Value FROM pizza_sales

SELECT SUM(CAST(quantity AS int)) AS Total_Pizza_Sold from pizza_sales

SELECT COUNT(DISTINCT CAST(order_id AS int)) AS Total_ORDERS from pizza_sales

SELECT CAST(CAST(SUM(quantity) AS decimal(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS decimal(10,2)) AS decimal(10,2)) as Avg_Pizza_Per_order from pizza_sales

SELECT DATENAME(DW, CAST(order_date AS datetime)) AS order_day, 
		COUNT(DISTINCT CAST(order_id AS int)) as Total_orders
from pizza_sales
GROUP BY DATENAME(DW, CAST(order_date AS datetime))

SELECT DATENAME(MONTH, CAST(order_date AS datetime)) AS Month_Name, COUNT(DISTINCT(CAST(order_id AS int))) AS Total_Orders
FROM pizza_sales
GROUP BY DATENAME(MONTH, CAST(order_date AS datetime))
ORDER BY Total_Orders DESC

SELECT * FROM pizza_sales
SELECT 
	pizza_category, 
	sum(cast(total_price AS FLOAT)) * 100 / 
	(SELECT sum(cast(total_price AS FLOAT)) from  pizza_sales)

SELECT 
	pizza_category, 
	SUM(CAST(total_price AS FLOAT)) AS Total_Sales,
	SUM(CAST(total_price AS FLOAT)) * 100.0 / 
	(SELECT SUM(CAST(total_price AS FLOAT)) FROM pizza_sales WHERE MONTH(CAST(order_date AS datetime)) = 1) AS PCT
FROM pizza_sales 
WHERE MONTH(CAST(order_date AS datetime)) = 1
GROUP BY pizza_category;

SELECT 
    pizza_category,
    CAST(SUM(CAST(total_price AS FLOAT)) AS DECIMAL(10,2)) AS total_revenue,
    CAST(SUM(CAST(total_price AS FLOAT)) * 100.0 / 
        (SELECT SUM(CAST(total_price AS FLOAT)) FROM pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category;


SELECT 
	pizza_size, 
	CAST(SUM(CAST(total_price AS FLOAT)) AS DECIMAL(10,2)) AS Total_Sales,
	CAST(SUM(CAST(total_price AS FLOAT)) * 100.0 / 
	(SELECT SUM(CAST(total_price AS FLOAT)) FROM pizza_sales WHERE DATEPART(quarter, CAST(order_date AS datetime)) = 1) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales 
WHERE DATEPART(quarter, CAST(order_date AS datetime)) = 1
GROUP BY pizza_size
ORDER BY PCT DESC

SELECT 
	pizza_size, 
	CAST(SUM(CAST(total_price AS FLOAT)) AS DECIMAL(10,2)) AS Total_Sales,
	CAST(SUM(CAST(total_price AS FLOAT)) * 100.0 / 
	(SELECT SUM(CAST(total_price AS FLOAT)) FROM pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales 
GROUP BY pizza_size
ORDER BY PCT DESC


SELECT TOP 5 pizza_name, 
	CAST(SUM(CAST(total_price AS FLOAT)) AS DECIMAL(10,2)) AS Total_Revenue 
FROM pizza_sales
GROUP BY pizza_name
Order by Total_Revenue DESC

SELECT TOP 5 pizza_name, 
	CAST(SUM(CAST(total_price AS FLOAT)) AS DECIMAL(10,2)) AS Total_Revenue 
FROM pizza_sales
GROUP BY pizza_name
Order by Total_Revenue ASC



SELECT pizza_category, SUM(CAST(quantity AS INT)) as Total_Quantity_Sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC


SELECT TOP 5 pizza_name, 
	CAST(SUM(CAST(quantity AS FLOAT)) AS DECIMAL(10,2)) AS Total_Quantity 
FROM pizza_sales
GROUP BY pizza_name
Order by Total_Quantity  ASC

SELECT TOP 5 pizza_name, 
	COUNT(CAST(order_id AS INT)) AS Total_Qrders
FROM pizza_sales
GROUP BY pizza_name
Order by Total_Qrders  