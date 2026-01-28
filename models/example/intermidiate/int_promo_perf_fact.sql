{% set promoflag = ['Yes', 'No'] %}

WITH promo_ext as (

        SELECT 
            txn_id,
            product_id,
            date_id,
            store_id,
            unit_sold,
            total_rev,
            total_cost,
            total_margin,
            promoflag
        FROM {{ref('stg_factsales')}}

), store_dim_ext as (
        
        SELECT 
            store_id,
            country,
            region,
            store_name
        FROM {{ref('stg_stores')}}
), dimdate as (

        SELECT 
            datekey,
            to_varchar(date, 'YYYY-MM') as monthkey,
            date_trunc('month', date) as start_of_month,
            monthname as txn_month
        FROM {{ref('stg_dimdate')}}
), promo as (

        SELECT 
            pe.product_id as product_id,
            d.monthkey as monthkey,
            s.store_id as store_id,
            count(pe.txn_id) as txn_count,
            sum(pe.unit_sold) as units_sold,
            sum(pe.total_rev) as total_revenue,
            sum(total_cost) as total_cost,
            sum(pe.total_margin) as total_margin,
            pe.promoflag as promoflag
        FROM promo_ext pe
        LEFT JOIN store_dim_ext s
        ON pe.store_id = s.store_id
        LEFT JOIN dimdate d 
        ON pe.date_id = d.datekey
        GROUP BY pe.product_id, d.monthkey, s.store_id, pe.promoflag


) SELECT * FROM promo