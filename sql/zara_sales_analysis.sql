#CREATE DATABASE zara_analysis;
#USE zara_analysis;

##Total Business Overview
/*SELECT 
COUNT(*) AS total_products,
SUM(sales_volume) AS total_sales,
AVG(price) AS avg_price
FROM zara_products;*/

##Top Selling Products
/*SELECT name,
category,
sales_volume
FROM zara_products
ORDER BY sales_volume DESC
LIMIT 10;*/

##Category Revenue Share
/*SELECT 
category,
SUM(sales_volume) AS total_sales,
ROUND(
SUM(sales_volume) * 100 /
(SELECT SUM(sales_volume) FROM zara_products),2
) AS sales_percent
FROM zara_products
GROUP BY category
ORDER BY total_sales DESC;*/

##Promotion Impact
/*SELECT 
promotion,
COUNT(*) AS total_products,
AVG(sales_volume) AS avg_sales
FROM zara_products
GROUP BY promotion;*/

##Seasonal vs Non-Seasonal
/*SELECT 
seasonal,
SUM(sales_volume) AS total_sales
FROM zara_products
GROUP BY seasonal;*/

##Highest Price Products
/*SELECT 
name,
category,
price
FROM zara_products
ORDER BY price DESC
LIMIT 10;*/

##Price vs Sales Insight
/*SELECT 
category,
AVG(price) AS avg_price,
AVG(sales_volume) AS avg_sales
FROM zara_products
GROUP BY category
ORDER BY avg_sales DESC;*/



