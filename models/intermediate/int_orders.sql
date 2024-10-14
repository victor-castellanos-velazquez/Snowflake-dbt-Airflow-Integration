-- models/intermediate/int_orders.sql
SELECT
    o.order_id,
    o.customer_id,
    o.order_date,
    l.product_id,
    l.quantity,
    l.extended_price AS unit_price
FROM {{ ref('stg_orders') }} o
JOIN {{ ref('stg_lineitem')}} l ON o.order_id = l.order_key