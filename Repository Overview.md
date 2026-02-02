

Pharmacy Sales & Profitability Analytics 

The goal of this task is to build analytic models that will be utilized BI teams of various business units to uncover insights relevenat to their daily operations. The dataset utilized in this project was generated from an European pharmacy chain distributor operating across multiple European countries. It includes daily sales transactions by pharmacy and product, with supporting dimensions for time, geography, and product hierarchy.


Deliverables from this task are analytical models built of the historical data to enable Data analysts and visualization experts build reports that helps stakeholders understand KPIs and factors driving them:

The delivered models are as follows:

## Pricing performance mart model
## Product Performance mart model
## promo performance mart model
## store performance mart model

Each of the above a key business questions 


Tasks:

Below are the steps taken to complete this task

Load source data into raw schema using dbt seeds

Apply source tests to validate raw data contracts

Transform and standardize data into staging models

Apply staging tests to validate transformations and business logic

Build analytics models (facts & dimensions) in the data mart

Apply mart-level tests aligned to business questions

Expose the data mart to Power BI for reporting and insights




Tests:

RAW (Sources / Seeds)

Here we try test for the accuracy, completeness and validity of our data

These are data contracts.

✔ Tests that belong here
Test Type	                            Purpose
not_null	                        Required fields must exist
unique	                             Primary / natural keys
Singular tests                       Static categories
Generic tests (using macros)        
relationships	                     Referential integrity



Staging: This layer holds clean/ transformed data (Transformation models)

Intermidiate: This layer holds data with aggregations based on business logic

Data mart: This layer holds the final data that is exposed to BI tools for visualization and reporting


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
