
SELECT 
        product_id,
        product_name,
        product_cat,
        brand,
        isgeneric,
        list_price,
        std_price,
        launch_date
FROM {{ref('stg_dimproduct')}}