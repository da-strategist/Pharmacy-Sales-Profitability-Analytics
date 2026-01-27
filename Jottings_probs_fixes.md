
Corrections:

Date related 

To enable effective utilization of the time intelligence feature in power bi, I had to create a monthkey in my dimdate mart. The reason being that, the first trial which included all columns from the dimdate model led to us having a many to many relationship between the m_store_fact model and m_dimdate model. this also resulted in wrong aggregation of values. 

The first step to resolving this was to recreate the model to have the final columns below: 
        date_trunc('month',date) as start_of_txn_month,
        Year as txn_year,
        monthnumber as month_num,
        monthname as txn_month

this resolved the first problem but also led to a different issues listed below:
        1. power bi was unable to establish a one to many relationship due to the absence of a unique key
        2. incorrect aggregations, as power bi couldn't not differentiate betwee jan_2024 and jan_2025, thus aggregating and returning same values for both.

This led to the third fix, where i had to include a monthkey to serve as a unique identifier of each row for the dimdate model. I also created same column in my m_store_fact model. Let's hope this works!!!!!!!!



we tried MBA but the current dataset does not support it

WITH product_mba_ext as (

        SELECT 
            txn_id,
            product_id,

        FROM {{ref('stg_factsales')}}
        ORDER BY 1

), products as (
        SELECT 
            product_id,
            product_name
        FROM {{ref('stg_dimproduct')}}

), prod_mba_ext as (

        SELECT 
            pm.txn_id as txn_id,
            pm.product_id as product_id,
            p.product_name as product_name
        FROM product_mba_ext pm
        LEFT JOIN products p
        ON pm.product_id = p.product_id

), mba_stepa as (

        SELECT 
            p1.product_name, 
            p2.product_name
        FROM prod_mba_ext p1
        JOIN prod_mba_ext p2
        ON p1.product_id = p2.product_id
        WHERE p1.product_name > p2.product_name
)

SELECT * FROM product_mba_ext