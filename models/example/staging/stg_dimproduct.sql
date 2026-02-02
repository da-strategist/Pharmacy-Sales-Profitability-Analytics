
with raw_prods as 
(
    SELECT 
            productid as product_id,
            productname, 
            category as product_cat,
            brand as brand,
            isgeneric,
            packsize as size,
            listpriceeur as list_price,
            standardcosteur as std_cost,
            launchdate as launch_date
            
    FROM {{source('pharm-raw-sources', 'dimproduct')}}

), transformed_prod as
(
    SELECT  product_id,
            regexp_replace(productname, '\\s+[0-9]+\\s*(mg|g|ml|mcg|iu)$', '') as product_name,
            product_cat,
            brand,
            isgeneric,
            size,
            to_decimal(
                        replace(
                        regexp_replace(list_price, '[^0-9,.-]', ''),
                        ',',
                        '.'
                        ), 12, 2
                    ) as list_price,
            to_decimal(
                        replace(
                        regexp_replace(std_cost, '[^0-9,.-]', ''),
                        ',',
                        '.'
                        ), 12, 2
                    ) as std_cost,
            launch_date
    FROM raw_prods
)
  select * from transformed_prod

