
with store_perf_ext as (
        SELECT 
                *
        FROM {{ref ('stg_factsales')}}
), rev_col as 
        (
            SELECT
                store_id,
                total_rev
            FROM store_perf_ext
            ---WHERE tot_rev LIKE '%1 017.23%'
                ---GROUP BY store_id
            ORDER BY 2 DESC
        )

        SELECT * FROM rev_col
        

---error: dbt1000: Internal: [Snowflake] 100038 (22018): Numeric value '1 017.23' is not recognized (sqlstate: [50, 50, 48, 49, 56], vendor_code: 100038)
