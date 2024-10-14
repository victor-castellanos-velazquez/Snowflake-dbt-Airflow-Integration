SELECT
    o_orderkey AS order_id,
    o_custkey AS customer_id,
    o_orderstatus AS status,
    o_totalprice AS total_price,
    o_orderdate AS order_date
FROM {{ source ('tpch','orders')}}