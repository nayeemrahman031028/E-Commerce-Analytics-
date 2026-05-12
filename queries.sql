-- Show order details with customer name, product name, and total price
SELECT o.order_id, c.name, p.product_name, 
       o.quantity, p.price, 
       (o.quantity * p.price) AS total_price
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;

-- Label each order as ‘Small’ (< 100), Medium (100–500) and large (> 500)  based on total price.
SELECT order_id, 
       (o.quantity * p.price) AS total_price,
       CASE 
           WHEN (o.quantity * p.price) < 100 THEN 'Small'
           WHEN (o.quantity * p.price) BETWEEN 100 AND 500 THEN 'Medium'
           ELSE 'Large'
       END AS order_size
FROM orders o
JOIN products p ON o.product_id = p.product_id;

-- Find customers who spent more than the average total spent per customer.
SELECT c.customer_id, c.name, SUM(o.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.customer_id, c.name
HAVING SUM(o.quantity * p.price) > (
    SELECT AVG(customer_total) 
    FROM (
        SELECT SUM(o2.quantity * p2.price) AS customer_total
        FROM orders o2
        JOIN products p2 ON o2.product_id = p2.product_id
        GROUP BY o2.customer_id
    ) AS avg_table
);

-- For each category, find the most ordered product
WITH product_rank AS (
    SELECT p.category, p.product_name, SUM(o.quantity) AS total_qty,
           RANK() OVER (PARTITION BY p.category ORDER BY SUM(o.quantity) DESC) AS rnk
    FROM products p
    JOIN orders o ON p.product_id = o.product_id
    GROUP BY p.category, p.product_name
)
SELECT category, product_name, total_qty
FROM product_rank
WHERE rnk = 1;

-- Inactive vs Active  Customers  - With Active vs Inactive Summary
SELECT 
    CASE 
        WHEN o.order_id IS NOT NULL THEN 'Active'
        ELSE 'Inactive'
    END AS customer_status,
    COUNT(DISTINCT c.customer_id) AS customer_count,
    ROUND(100.0 * COUNT(DISTINCT c.customer_id) / SUM(COUNT(DISTINCT c.customer_id)) OVER(), 1) AS percentage
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY customer_status;

-- Classify products as Often Returned (return rate > 30%), Moderate (10–30%), or Low (<10%).
WITH return_stats AS (
    SELECT p.product_id, p.product_name,
           COUNT(o.order_id) AS total_orders,
           COUNT(r.return_id) AS returned_orders
    FROM products p
    LEFT JOIN orders o ON p.product_id = o.product_id
    LEFT JOIN returns r ON o.order_id = r.order_id
    GROUP BY p.product_id, p.product_name
)
SELECT product_name, total_orders, returned_orders,
       ROUND(100.0 * returned_orders / NULLIF(total_orders, 0), 2) AS return_rate_pct,
       CASE 
           WHEN (100.0 * returned_orders / NULLIF(total_orders, 0)) > 30 THEN 'Often Returned'
           WHEN (100.0 * returned_orders / NULLIF(total_orders, 0)) BETWEEN 10 AND 30 THEN 'Moderate'
           ELSE 'Low'
       END AS return_category
FROM return_stats;

-- For each customer, show total spent and a tier (Gold  if above average, otherwise  Standard)
SELECT c.name, SUM(o.quantity * p.price) AS total_spent,
       CASE 
           WHEN SUM(o.quantity * p.price) > (SELECT AVG(cust_total) 
                                             FROM (SELECT SUM(o2.quantity * p2.price) AS cust_total
                                                   FROM orders o2
                                                   JOIN products p2 ON o2.product_id = p2.product_id
                                                   GROUP BY o2.customer_id) AS t)
           THEN 'Gold'
           ELSE 'Standard'
       END AS tier
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.name;

