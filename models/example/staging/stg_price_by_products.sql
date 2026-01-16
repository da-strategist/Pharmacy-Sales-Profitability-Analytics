
with price_by_brand AS
(
        select productid as product_id,
                category as product_cat,
                brand as brand_name,
                listpriceeur as price,
                launchdate as launch_date
        from {{source('pharm-raw-sources', 'dimproduct')}}

),

product_details AS
(
        select brand_name,
                product_cat,
                count(product_id) as tot_products,
                sum(price) as price_by_brand,
                avg(price) as avg_price_by_brand
        from price_by_brand
        group by 1, 2

)
        select * from product_details
