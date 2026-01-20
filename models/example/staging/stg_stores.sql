
with store_raw as 
(

        SELECT 
                pharmacyid as store_id,
                pharmacyname,
                country,
                region,
                city, 
                pharmacytype as store_type,
                opendate,
                storesizeband as store_cat,
                latitude,
                longitude
        FROM {{source ('pharm-raw-sources', 'dimpharmacy')}}

), stores as (
        SELECT 
                store_id,
                regexp_replace(pharmacyname, '\\s#\\d+$', '') as store_name,
                country,
                region,
                city,
                store_type,
                opendate,
                store_cat,
                latitude,
                longitude
        FROM store_raw
)
        SELECT * FROM stores