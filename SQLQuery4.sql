SELECT* FROM pizza_data;
 
SELECT (SUM(total_price)/COUNT(DISTINCT order_id)) as avg_order_value FROM pizza_data;

SELECT COUNT(quantity) as total_pizza_sold FROM pizza_data;

SELECT COUNT( DISTINCT order_id) AS total_order FROM pizza_data;

SELECT CAST(CAST(SUM(quantity) as DECIMAL(10,2)) / CAST(COUNT(DISTINCT order_id) as DECIMAL(10,2)) AS DECIMAL(10,2) ) AS avg_pizza_sales_per_order
FROM pizza_data;

 
SELECT DATENAME(DW, order_date) AS order_day ,COUNT(DISTINCT order_id) AS total_order
FROM pizza_data
GROUP BY DATENAME(DW, order_date);

SELECT DATENAME(MONTH, order_date) AS ordered_month ,COUNT(DISTINCT order_id) AS total_order
FROM pizza_data
GROUP BY DATENAME(MONTH, order_date);


SELECT pizza_category, CAST(SUM(total_price) as DECIMAL(10,2)) AS total_revenue ,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_data) AS DECIMAL(10,2)) AS PCT
FROM pizza_data
GROUP BY pizza_category ;  


SELECT pizza_size, CAST(SUM(total_price) as DECIMAL(10,2)) AS total_revenue ,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_data) AS DECIMAL(10,2)) AS PCT
FROM pizza_data
GROUP BY pizza_size;

SELECT pizza_category , SUM(quantity) AS total_qty_sales 
FROM pizza_data
GROUP BY pizza_category
ORDER BY total_qty_sales DESC;


SELECT TOP 5 pizza_name , SUM(total_price) AS total_revenue
FROM pizza_data
GROUP BY pizza_name
ORDER BY total_revenue DESC;

SELECT TOP 5 pizza_name ,SUM(total_price) AS total_revenue
FROM pizza_data
GROUP BY pizza_name
ORDER BY total_revenue ASC;


SELECT TOP 5 pizza_name ,SUM(quantity) AS total_sales
FROM pizza_data
GROUP BY pizza_name
ORDER BY total_sales DESC;

SELECT TOP 5 pizza_name ,SUM(quantity) AS total_sales
FROM pizza_data
GROUP BY pizza_name
ORDER BY total_sales ASC;

SELECT TOP 5 pizza_name ,COUNT(DISTINCT order_id) AS total_order
FROM pizza_data
GROUP BY pizza_name
ORDER BY total_order DESC;

SELECT TOP 5 pizza_name ,COUNT(DISTINCT order_id) AS total_order
FROM pizza_data
GROUP BY pizza_name
ORDER BY total_order ASC;






