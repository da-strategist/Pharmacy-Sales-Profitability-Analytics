
SELECT  
        store_id,
        store_name,
        country,
        region,
        city,
        store_type,
        store_cat,
        opendate
FROM {{ref('stg_stores')}}
