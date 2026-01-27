{% set promoflag = ['Yes', 'No'] %}

WITH promo_ext as (

        SELECT 
            product_id,
            monthkey,
            units_sold,
            total_rev as total_revenue,
            total_cost,
            promoflag
        FROM {{ref('int_product_perf_fact')}}

), promo_fact as (

        SELECT 
            product_id,
            monthkey,
            SUM(case when promoflag = 'Yes' THEN units_sold end) as promo_units_sold,
            SUM(case when promoflag = 'No' THEN units_sold end) as non_promo_units_sold,
            SUM(case when promoflag = 'Yes' THEN total_revenue end) as promo_revenue,
            SUM(case when promoflag = 'No' THEN total_revenue end) as non_promo_revenue
        FROM promo_ext
        GROUP BY product_id, monthkey

) SELECT * FROM promo_fact