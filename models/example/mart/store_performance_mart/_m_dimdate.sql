
WITH dimdate_ext as (

    SELECT 

        datekey,
        date as txn_date,
        date_trunc('month',date) as start_of_txn_month,
        Year as txn_year,
        monthnumber as month_num,
        monthname as txn_month

FROM {{ref('stg_dimdate')}}

), datedim as (

    SELECT 
        to_varchar(start_of_txn_month, 'yyyy-mm') as month_key,
        start_of_txn_month,
        txn_year,
        month_num,
        txn_month
    FROM dimdate_ext
), ddim as (
    SELECT distinct * FROM datedim
    order by 1 asc

)   select * from ddim

