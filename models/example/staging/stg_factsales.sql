 SELECT 
            salesid as txn_id,
            productid as product_id,
            pharmacyid as store_id,
            datekey as date_id,
            revenueeur as tot_rev,
            costeur as tot_cost,
            margineur as tot_margin
        FROM {{source ('pharm-raw-sources', 'factsales')}}