    SELECT 
            pharmacyid as store_id,
            pharmacyname as store_name,
            country,
            region,
            city
    FROM {{source ('pharm-raw-sources', 'dimpharmacy')}}