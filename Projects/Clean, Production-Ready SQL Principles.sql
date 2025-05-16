-- Customer Lifetime Value (CLV) Report

WITH customer_orders AS (
    SELECT 
        ord.customer_id,
        COUNT(ord.order_id) AS total_orders,
        SUM(ord.total_amount) AS total_revenue,
        AVG(ord.total_amount) AS avg_order_value,
        MIN(ord.order_date) AS first_purchase_date,
        MAX(ord.order_date) AS last_purchase_date
    FROM orders ord
    GROUP BY ord.customer_id
)

SELECT 
    cust.customer_id,
    cust.first_name,
    cust.last_name,
    
    co.total_orders,
    ROUND(co.total_revenue, 2) AS total_revenue,
    ROUND(co.avg_order_value, 2) AS avg_order_value,
    
    co.first_purchase_date,
    co.last_purchase_date,
    DATEDIFF(co.last_purchase_date, co.first_purchase_date) AS lifetime_days,
    
    -- Simplified CLV: total revenue = avg order value × total orders
    ROUND(co.total_revenue, 2) AS clv

FROM customers cust
JOIN customer_orders co ON cust.customer_id = co.customer_id
ORDER BY clv DESC;
