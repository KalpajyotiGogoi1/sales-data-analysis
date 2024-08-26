CREATE VIEW top_selling_products AS
SELECT product_name, SUM(sale_amount) AS total_sales
FROM sales
JOIN products ON sales.product_id = products.product_id
GROUP BY product_name
ORDER BY total_sales DESC;
