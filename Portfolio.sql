-- Skills used: CTE's, Windows Functions, Aggregate Functions, Creating Views


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

-- Create a view for total revenue by category
CREATE VIEW TotalRevenuebyCategory AS
SELECT category,SUM(total_sales) AS total_revenue
FROM grocery_sales
GROUP BY category
ORDER BY category;

SELECT * 
FROM TotalRevenuebyCategory;

-- cities with highest sales
SELECT city,MAX(total_sales) AS highest_sales
FROM grocery_sales
GROUP BY city
ORDER BY highest_sales DESC;