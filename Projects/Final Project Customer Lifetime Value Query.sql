CREATE TABLE clv_report AS
WITH customer_metrics AS (
    SELECT 
        ord.customer_id,
        COUNT(ord.order_id) AS total_orders,
        SUM(ord.total_amount) AS total_revenue,
        AVG(ord.total_amount) AS avg_order_value,
        MIN(ord.order_date) AS first_purchase_date,
        MAX(ord.order_date) AS last_purchase_date
    FROM orders ord
    GROUP BY ord.customer_id
),

clv_base AS (
    SELECT 
        cm.customer_id,
        CONCAT(cust.first_name,' ',cust.last_name) AS full_name,
        cm.total_orders,
        ROUND(cm.total_revenue, 2) AS total_revenue,
        ROUND(cm.avg_order_value, 2) AS avg_order_value,
        cm.first_purchase_date,
        cm.last_purchase_date,
        DATEDIFF(cm.last_purchase_date, cm.first_purchase_date) AS customer_lifetime_days,
        ROUND(cm.total_revenue, 2) AS clv
    FROM customer_metrics cm
    JOIN customers cust ON cm.customer_id = cust.customer_id
)

SELECT 
    *,
    
    CASE 
        WHEN clv >= 1000 THEN 'High Value'
        WHEN clv >= 500 THEN 'Mid Value'
        ELSE 'Low Value'
    END AS clv_segment

FROM clv_base;

SELECT *
FROM clv_report;
