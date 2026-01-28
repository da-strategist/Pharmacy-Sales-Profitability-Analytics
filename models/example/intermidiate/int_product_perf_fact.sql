
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
product as (
        
        SELECT 
                product_id,
                product_name
        FROM {{ref('stg_dimproduct')}}

),
    date_ext as (
        SELECT 
            datekey,
            date as txn_date, 
            monthname as txn_month,
            to_varchar(date, 'yyyy-mm') as monthkey,
            year as txn_year

        FROM {{ref('stg_dimdate')}}

), product_fact as (

        SELECT 
                pf.product_id as product_id,
                de.monthkey,
                de.txn_month as txn_month,
                count(pf.txn_id) as txn_count,
                sum(unit_sold) as units_sold,
                sum(pf.total_rev) as total_rev,
                sum(pf.total_cost) as total_cost,
                pf.promoflag as promoflag
        FROM product_fact_ext pf
        LEFT JOIN PRODUCT P ON pf.product_id = p.product_id
        LEFT JOIN date_ext de ON pf.date_id = de.datekey 
        GROUP BY pf.product_id, de.monthkey, de.txn_month, pf.promoflag    
        ORDER BY 1, 2 ASC          
)
        SELECT * FROM product_fact