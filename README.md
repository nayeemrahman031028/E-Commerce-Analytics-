# SQL E-Commerce Analytics Portfolio

## Database Schema
![Database Schema](Database_schema.png)

---

**Question 1: Order Details**

```sql
SELECT o.order_id, c.name, p.product_name, 
       o.quantity, p.price, 
       (o.quantity * p.price) AS total_price
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;
Question 2: Customers Who Spent Above Average

sql
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
Question 3: Return Rate Analysis

sql
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
Question 4: Top Selling Product Per Category

sql
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
Question 5: Top Customers by Spending

sql
SELECT c.name, SUM(o.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;
Question 6: Active vs Inactive Customers

sql
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
Question 7: Customer Tier Breakdown

sql
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
Outputs & Charts
Question	Output	Chart
Q1	https://All_table_joined.png	-
Q2	https://total%2520spent%2520and%2520their%2520gold.png	https://Customer_over_avg_chart.png
Q3	https://return_rate_analysis_output.png	https://return_rate_analysis.png https://Return_rate@analysis_chart.png
Q4	https://top_selling_for_each_category_output.png	https://top_selling_for_each_category_chart.png
Q5	https://top_customers_output.png	https://top_customers.png
Q6	https://Active_vs_in_active_customers_percentage.png	https://Active_vs_in_active_customers_chart.png
Q7	https://Customer_tier_breakdown_output.png	https://Customer_tier_breakdown.png



How to Run -

Run schemas
Run data_insertion
Run queries




