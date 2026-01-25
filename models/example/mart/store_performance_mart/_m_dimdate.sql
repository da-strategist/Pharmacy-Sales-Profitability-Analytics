
WITH dimdate_ext as (

    SELECT 

        datekey,
        date as txn_date,
        Year as txn_year,
        monthnumber as month_num,
        monthname as txn_month

FROM {{ref('stg_dimdate')}}

), datedim as (

    SELECT 
        date_trunc('month',txn_date) as start_of_txn_month,
        txn_year,
        month_num,
        txn_month
    FROM dimdate_ext
)
    SELECT * FROM datedim
