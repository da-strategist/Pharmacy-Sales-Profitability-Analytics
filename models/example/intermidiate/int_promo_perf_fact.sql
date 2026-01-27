
WITH promo_etx as (

        SELECT 
            product_id,
            monthkey,
            units_sold,
            total_revenue,
            total_cost,
            promoflag
        FROM {{ref('int_product_perf_fact')}}

), promo_fact as (

        SELECT 
            product_id,
            monthkey,
            
)