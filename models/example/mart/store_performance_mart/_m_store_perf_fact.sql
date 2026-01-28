

with store_perf_mart_ext as (

        SELECT 
            store_id,
            monthkey,
            txn_month,
            txn_count,
            units_sold,
            total_revenue,
            total_cost,
            total_margin,
            round((total_margin/total_revenue)*100, 2) as margin_percent
        FROM {{ref('int_store_perf')}}
)
    SELECT * FROM store_perf_mart_ext