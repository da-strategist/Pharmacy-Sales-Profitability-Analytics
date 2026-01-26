
WITH product_fact_ext as (

        SELECT 
            txn_id,
            product_id,
            date_id,
            unit_sold,
            total_rev,
            total_cost,
            total_margin,
            promoflag
        FROM {{ref('stg_factsales')}}
), 

    date_ext as (
        SELECT 
            datekey,
            date as txn_date,                
            date_trunc('month',date) as start_of_txn_month,
            Year as txn_year,
            monthnumber as month_num,
            monthname as txn_month

        FROM {{ref('stg_dimdate')}}

)