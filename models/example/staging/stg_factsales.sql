 SELECT 
            salesid as txn_id,
            productid as product_id,
            pharmacyid as store_id,
            datekey as date_id,
            unitssold as unit_sold,
            cast
                (replace(regexp_replace(revenueeur, '€', ''), ',', '.') as decimal(12,2)
                ) as tot_rev,
            costeur/100.0 as tot_cost,
            margineur/100.0 as tot_margin,
            promoflag
        FROM {{source ('pharm-raw-sources', 'factsales')}}