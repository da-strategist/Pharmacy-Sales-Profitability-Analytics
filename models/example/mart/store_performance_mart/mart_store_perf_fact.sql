
with store_perf_ext as (
        SELECT 
                store_id,
                datekey,
                count(txn_id) as sales_volume,
                sum(tot_rev) as total_revenue,
                sum(tot_cost) as total_cost,
                sum(tot_margin) as total_margin
)