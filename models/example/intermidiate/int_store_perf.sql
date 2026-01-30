
with store_ext as 
(
        SELECT
            store_id,
            date_id,
            total_rev as total_revenue,
            txn_id,
            unit_sold,
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
            monthname as txn_month,
            to_varchar(date, 'yyyy-mm') as monthkey,
            year as txn_year
        FROM {{ref('stg_dimdate')}}

), store_perf as 
(
        SELECT 
            se.store_id,
            s.store_name,
            td.monthkey,
            td.txn_month,
            count(se.txn_id) as txn_count,
            sum(unit_sold) as units_sold,
            sum(se.total_revenue) as total_revenue,
            sum(se.total_cost) as total_cost,
            sum(se.total_margin) as total_margin
        FROM store_ext se 
        LEFT JOIN store s ON se.store_id = s.store_id
        LEFT JOIN txn_date td ON se.date_id = td.datekey
        GROUP BY se.store_id, s.store_name, td.monthkey, td.txn_month 

)
        SELECT * FROM store_perf