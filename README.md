

Pharmacy Sales & Profitability Analytics 
The goal of this task is to analyze a dataset representing a European pharmacy chain distributor operating across multiple European countries. The dataset includes daily sales transactions by pharmacy and product, with supporting dimensions for time, geography, and product hierarchy.
Deliverables from this task is to build a Power BI report that helps stakeholders understand:

How sales and profitability vary across countries, regions, and individual pharmacies
How different product categories and brands perform in different locations
How regional performance contributes to overall business results

Key Questions:
How do revenue, units sold, and margin change over time, and are there clear seasonal patterns?
Which countries and regions contribute the most to total revenue and margin?
How does performance vary when drilling down from country → region → pharmacy?
Which pharmacies outperform or underperform compared to others in the same region?
How do Urban, Suburban, and Rural pharmacies differ in sales volume and profitability?
Which product categories and brands generate the most revenue, and which generate the most margin?
Are there products with high volume but low margin, or low volume but high margin?
How do promoted sales compare to non-promoted sales in terms of volume and margin?
How does regional performance contribute to overall business results?
Are there visible geographic patterns in sales or profitability when viewed on a map?



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
Test Type	                Purpose
not_null	            Required fields must exist
unique	                Primary / natural keys
accepted_values	        Static categories & codes
relationships	        Referential integrity
accepted_range	        Years, numeric bounds


Staging (Transformation models)


Data mart (Business case logic models)


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
