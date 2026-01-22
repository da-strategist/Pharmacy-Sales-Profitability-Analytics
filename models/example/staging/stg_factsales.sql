with stg_fact as (

        SELECT 
                    salesid as txn_id,
                    productid as product_id,
                    pharmacyid as store_id,
                    datekey as date_id,
                    unitssold as unit_sold,
                    to_decimal(
                    replace(
                        regexp_replace(revenueeur, '[^0-9,.-]', ''),
                        ',',
                        '.'
                    ),
                    12,
                    2
                ) as total_rev,
                    round(costeur/100.0, 2) as total_cost,
                    round(margineur/100.0, 2) as total_margin,
                    promoflag
                FROM {{source ('pharm-raw-sources', 'factsales')}}
), stg_factsalees as

(
        SELECT 
                txn_id,
                product_id,
                store_id,
                date_id,
                unit_sold,
                total_rev,
                total_cost,
                total_margin,
                promoflag
        FROM stg_fact
)
    select * from stg_factsalees
