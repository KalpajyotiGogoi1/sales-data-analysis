SELECT SUM(sale_amount) AS total_sales FROM sales;

SELECT AVG(sale_amount) AS avg_sales FROM sales;

SELECT product_name, SUM(sale_amount) AS total_sales
FROM sales
JOIN products ON sales.product_id = products.product_id
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT customer_name, SUM(sale_amount) AS total_spent
FROM sales
JOIN customers ON sales.customer_id = customers.customer_id
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;
