SELECT
    l_orderkey AS order_key,
    l_partkey AS product_id,
    l_quantity AS quantity,
    l_extendedprice AS extended_price
FROM {{source ('tpch','lineitem')}}