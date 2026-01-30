

WITH promo_eext as (

    SELECT 
            monthkey,
            store_id,
            sum(case when promoflag = 'Yes' THEN txn_count END) as promo_transacts,
            sum(case when promoflag = 'No' THEN txn_count END) as non_promo_transacts,
            sum(case when promoflag = 'Yes' THEN units_sold END) as promo_units_sold,
            sum(case when promoflag = 'No' THEN units_sold END) as non_promo_units_sold,
            sum(case when promoflag = 'Yes' THEN total_revenue END) as promo_revenue,
            sum(case when promoflag = 'No' THEN total_revenue END) as non_promo_revenue,
            sum(case when promoflag = 'Yes' THEN total_cost END) as promo_cost,
            sum(case when promoflag = 'No' THEN total_cost END) as non_promo_cost,
            sum(case when promoflag = 'Yes' THEN total_margin END) as promo_margin,
            sum(case when promoflag = 'No' THEN total_margin END) as non_promo_margin
    FROM {{ref('int_promo_perf_fact')}}
    GROUP BY monthkey, store_id
)
    SELECT * FROM promo_eext