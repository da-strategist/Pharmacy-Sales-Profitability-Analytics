
with fact_ext_cte as (
        SELECT 
            salesid as txn_id,
            productid as product_id,
            pharmacyid as store_id,
            datekey as date_id,
            revenueeur as tot_rev,
            costeur as tot_cost,
            margineur as tot_margin
        FROM {{source ('pharm-raw-sources', 'factsales')}}

), products as (
        SELECT 
            productid as product_id,
            productname as product_name,
            category as product_cat,
            brand as product_brand
        FROM {{source('pharm-raw-sources', 'dimproduct')}}

), store as (
        SELECT 
            pharmacyid as store_id,
            pharmacyname as store_name,
            country,
            region,
            city
        FROM {{source ('pharm-raw-sources', 'dimpharmacy')}}

), txn_date as (
        SELECT
            datekey as date_id,
            date as txn_date
        FROM {{source ('pharm-raw-sources', 'dimpharmacy')}}

)