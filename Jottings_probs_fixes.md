
Corrections:

Date related 

To enable effective utilization of the tim intelligence feature in power bi, I had to create a monthkey in my dimdate mart. The reason being that, the first trial which included all columns from the dimdate model led to us having a many to many relationship between the m_store_fact model and m_dimdate model. this also resulted in wrong aggregation of values. 

The first step to resolving this was to recreate the model to have the final columns below: 
        date_trunc('month',date) as start_of_txn_month,
        Year as txn_year,
        monthnumber as month_num,
        monthname as txn_month

this resolved the first problem but also led to a different issues listed below:
        1. power bi was unable to establish a one to many relationship due to the absence of a unique key
        2. incorrect aggregations, as power bi couldn't not differentiate betwee jan_2024 and jan_2025, thus aggregating and returning same values for both.

This led to the third fix, where i had to include a monthkey to serve as a unique identifier of each row for the dimdate model. I also created same column in my m_store_fact model. Let's hope this works!!!!!!!!