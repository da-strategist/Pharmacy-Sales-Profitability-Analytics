

WITH pricing_ext as (

        SELECT 
                product_id,
                monthkey,
                store_id,
                units_sold,
                total_revenue,
                total_cost
        FROM {{ref('int_promo_perf_fact')}}
), pricing as (

        SELECT 
                product_id, 
                monthkey,
                store_id,
                sum(units_sold) as units_sold,
                sum(total_revenue) as total_revenue,
                sum(total_cost) as total_cost
        FROM pricing_ext
        GROUP BY product_id, monthkey, store_id
)
    SELECT * FROM pricing