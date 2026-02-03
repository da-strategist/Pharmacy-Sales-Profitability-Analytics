

## Executive Summary

Retail Pharmacy Analytics using dbt
1. Business Context
The organization operates a multi-region retail pharmacy network with a diverse store footprint (urban, suburban, rural) and a broad pharmaceutical product portfolio spanning OTC, generic, and branded medicines. While transactional sales data exists across stores, products, and time, decision-makers currently lack clear, trusted, and decision-ready insights into what truly drives profitability.
Most reporting today is revenue-centric and monolithic in nature, making it difficult to answer critical questions such as:
* Which stores genuinely create value versus simply generate volume?
* Which products grow revenue but silently erode margin?
* Do promotions and pricing decisions improve profitability or merely shift volume?
This project addresses these gaps by transforming raw sales data into well-defined, analytics-ready data marts, using dbt to enable transparent, scalable, and business-aligned decision-making.

2. Core Business Problems Addressed
Problem 1: Store Performance & Profitability Blind Spots
Revenue performance varies significantly across pharmacies, but revenue alone does not reflect true performance. Stores with similar size, location, and product mix often deliver very different profit outcomes.
Business Risk
* Underperforming stores are not identified early
* High-performing stores are not used as benchmarks
* Capital, staffing, and operational focus may be misallocated
Objective
* Enable monthly, like-for-like comparison of store profitability
* Identify best-in-class and underperforming stores across regions

Problem 2: Product Performance & Margin Leakage
A SKU (Stock Keeping Unit) represents a single sellable product variant (brand, dosage, pack size). While some products drive high sales volumes, they may do so at very low or eroding margins due to pricing pressure, cost structure, or heavy promotional reliance.
Business Risk
* Margin dilution from fast-moving but low-profit products
* Inefficient use of shelf space
* Poor assortment and pricing decisions
Objective
* Distinguish revenue-driving products from profit-driving products
* Detect “silent margin killers” early
* Support evidence-based assortment optimization

Problem 3: Promotion Effectiveness & ROI Uncertainty
Promotions are widely used to stimulate demand, yet their true impact on profitability remains unclear. Increased volume does not automatically translate into increased value.
Business Risk
* Promotions that boost volume but destroy margin
* Inconsistent promotional strategies across regions
* Lack of accountability for promotional ROI
Objective
* Quantify the incremental impact of promotions on units, revenue, and margin
* Separate value-creating promotions from volume-only or loss-making ones

Problem 4: Pricing Effectiveness & Realized Price Control
List prices and standard costs exist, but realized selling prices vary due to promotions and regional effects. Without structured pricing analytics, leadership cannot assess pricing discipline or margin sustainability.
Business Risk
* Excessive discounting without visibility
* Weak control over realized margins
* Inability to benchmark pricing performance across regions
Objective
* Track realized pricing performance at product and regional level
* Measure discount depth, margin erosion, and pricing discipline over time

3. Business Objectives
Strategic Objectives
* Shift decision-making from revenue-focused to profit-focused
* Enable consistent, evidence-based decisions at executive and regional levels
* Create transparency across stores, products, promotions, and pricing
Operational Objectives
* Identify underperforming and best-in-class stores
* Optimize product mix toward high-margin contributors
* Rationalize promotions based on measurable ROI
* Improve pricing discipline and margin sustainability

4. Key Metrics & KPIs
Financial Performance (Foundation)
* Total Revenue (€)
* Total Cost (€)
* Total Margin (€)
* Margin %
Purpose:Provide a consistent profitability baseline across all analytics marts.

Store Performance KPIs
* Revenue per Store
* Margin per Store
* Margin %
* Performance by:
    * Region
    * Store Size Band
    * Urban / Suburban / Rural classification
Executive Questions Answered
* Which stores underperform on profit?
* Which stores should be used as benchmarks?

Product & Portfolio KPIs
* Revenue by Product / Brand / Category
* Margin € and Margin % by Product
* Units Sold vs Margin Contribution
* Generic vs Branded:
    * Revenue Share
    * Margin Share
Executive Questions Answered
* Which products truly drive profit?
* Where is margin leakage occurring?

Promotion Effectiveness KPIs
* Promo vs Non-Promo Units Sold
* Promo vs Non-Promo Revenue
* Promo vs Non-Promo Margin
* Margin Delta (Promo vs Non-Promo)
* Promo Dependency Ratio
Executive Questions Answered
* Do promotions create value or destroy it?
* Which promotions should be scaled, redesigned, or stopped?

Pricing Strategy KPIs
* Average Selling Price (ASP)
* Average Cost Price (ACP)
* Unit Margin
* Discount vs List Price (Absolute & %)
* Margin % vs List Price
Executive Questions Answered
* Are we discounting responsibly?
* How does realized pricing impact profitability across regions?

5. Analytics Approach & Deliverables
Using dbt, the project delivers modular, dimensional analytics marts covering:
* Store Performance
* Product Performance
* Promotion Effectiveness
* Pricing Strategy
This approach replaces a monolithic reporting structure with flexible, reusable, and testable models, enabling faster insights, stronger governance, and seamless BI consumption. 

Conclusion

This project demonstrates how a well-structured analytics foundation, built with dbt and dimensional modeling principles, can transform raw retail pharmacy data into clear, trusted, and decision-ready insights.

By moving away from a monolithic reporting structure toward purpose-built marts for store performance, product profitability, promotion effectiveness, and pricing strategy, the organization gains a unified and consistent view of profitability across regions, products, and time. Revenue is no longer treated as a proxy for success; instead, margin, efficiency, and sustainability become the true measures of performance.

Most importantly, this analytics layer does not merely describe what has happened — it enables leadership to understand why performance differs, where value is being created or lost, and which levers (pricing, promotions, assortment, store strategy) should be adjusted. The result is a scalable decision framework that supports both executive strategy and operational execution.

Recommendation

Profitability must replace revenue as the primary success metric
Margin-based KPIs expose hidden underperformance and prevent capital from being allocated to low-quality growth.

Product mix is a major driver of margin leakage
High-volume products can quietly erode profit, while high-margin products represent underutilized growth opportunities.

Not all promotions create value
Promotions must be governed by ROI and margin impact, not volume uplift, to avoid systematic profit erosion.

Pricing discipline directly impacts profitability
Monitoring realized prices versus list prices enables tighter control of discounting and regional price inconsistencies.

A modular dbt-powered data mart enables scalable decision-making
Trusted, tested models allow leadership to move from reactive reporting to proactive, insight-led management.
