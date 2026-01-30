
WITH prod_mart as (

        SELECT 
            product_id,
            monthkey,
            txn_count,
            units_sold,
            total_rev as total_revenue,
            total_cost,
            promoflag
        FROM {{ref('int_product_perf_fact')}}
        ORDER BY 1, 2 ASC

) 
    SELECT * FROM prod_mart

