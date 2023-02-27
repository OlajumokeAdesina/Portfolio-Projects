-- Select the table from the schema

USE sql_sales;
SELECT *
FROM grocery_sales;

-- Select the necessary columns 
SELECT order_id, customer_name, order_year, category, sub_category, net_sales, profit, total_sales, region, city
FROM grocery_sales;

-- Year on Year sales 
SELECT order_year,SUM(total_sales) AS annual_revenue
FROM grocery_sales
GROUP BY order_year
ORDER BY order_year;

-- total revenue by category
SELECT category,SUM(total_sales) AS total_revenue
FROM grocery_sales
GROUP BY category
ORDER BY category;

-- highest sales by city
SELECT city,SUM(total_sales) as highest_sales
from grocery_sales
GROUP BY city
ORDER BY highest_sales desc

-- Create a view to visualise the data
CREATE VIEW 