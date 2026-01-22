
with store_ext as 
(
        SELECT
            store_id,
            date_id,
            total_rev as total_revenue,
            txn_id as sales_volume,
            total_cost as total_cost,
            total_margin as total_margin
        FROM {{ref ('stg_factsales')}}
      

), store as
(
        SELECT
            store_id,
            store_name
        FROM {{ref('stg_stores')}}

), txn_date as 
(
        SELECT
            datekey,
            date as txn_date, 
            monthname as txn_month
        FROM {{ref('stg_dimdate')}}

), store_perf as 
(
        SELECT 
            se.store_id,
            s.store_name,
            td.txn_month,
            sum(se.total_revenue) as total_revenue,
            count(se.sales_volume) as sales_volume,
            sum(se.total_cost) as total_cost,
            sum(se.total_margin) as total_margin
        FROM store_ext se 
        LEFT JOIN store s ON se.store_id = s.store_id
        LEFT JOIN txn_date td ON se.date_id = td.datekey
        GROUP BY se.store_id, s.store_name, td.txn_month 

)
        SELECT * FROM store_perf