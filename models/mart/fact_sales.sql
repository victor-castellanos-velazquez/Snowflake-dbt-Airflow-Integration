-- models/mart/fact_sales.sql
SELECT
    o.order_id,
    o.customer_id,
    c.customer_name,
    o.order_date,
    SUM(o.quantity * o.unit_price) as total_amount
FROM {{ ref('int_orders') }} o
JOIN {{ ref('stg_customers') }} c ON o.customer_id = c.customer_id
GROUP BY 1, 2, 3, 4