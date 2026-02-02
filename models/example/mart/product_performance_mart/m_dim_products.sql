
SELECT 
        product_id,
        product_name,
        product_cat,
        brand,
        isgeneric,
        list_price,
        std_cost,
        launch_date
FROM {{ref('stg_dimproduct')}}