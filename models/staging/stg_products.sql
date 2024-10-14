-- models/staging/stg_products.sql
SELECT
    p_partkey AS product_id,
    p_name AS product_name,
    p_retailprice AS price
FROM {{ source ('tpch','part')}}