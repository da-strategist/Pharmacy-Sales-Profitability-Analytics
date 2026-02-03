

## Pricing, Store & Product Performance Analytics Using dbt

# Introduction

This project demonstrates the practical application of dbt (data build tool) to design, transform, and model analytics-ready data for a multi-store pharmaceutical retail organization. The objective was to move from raw transactional data to decision-ready analytics marts that support store performance evaluation, product profitability analysis, promotional effectiveness, and pricing strategy diagnostics.

dbt was selected as the core transformation layer due to its strengths in:

analytics engineering best practices,

modular SQL-based transformations,

built-in testing and documentation,

and strong support for dimensional modeling.

By leveraging dbt, the project emphasizes clarity, scalability, and trust in data, ensuring that business stakeholders can rely on analytics outputs with confidence.

Project Overview and Approach

What Was Done

The project followed a structured analytics engineering workflow:

Staging Layer

Raw sales, product, store, and date data were cleaned and standardized.

No aggregations were performed at this stage to preserve data granularity.

Intermediate Models

Business logic was introduced incrementally.

Reusable transformations were created to avoid duplication and ensure consistency.

Analytics Marts

Purpose-built fact and dimension models were designed using dimensional modeling principles.

Separate marts were created to answer distinct business questions:

Store performance

Product performance and profitability

Promotional effectiveness

Pricing strategy diagnostics

Each mart was designed with a clearly defined grain, aligned KPIs, and appropriate dimensions to prevent ambiguity and double-counting in downstream reporting tools such as Power BI.

The Role of dbt in the Project

dbt was instrumental in translating business questions into reliable data models.

Key Contributions of dbt

Modularity & Reusability
dbt allowed transformations to be broken into logical layers (staging → intermediate → mart), making the project easier to understand, maintain, and extend.

Data Quality & Trust
Built-in testing (e.g., not-null checks, relationship validation, business rule tests) ensured that analytical outputs were reliable and defensible.

Documentation as a First-Class Citizen
Model and column-level documentation made the data self-explanatory, reducing dependency on tribal knowledge and enabling faster onboarding for analysts.

Version Control & Transparency
Changes to business logic were tracked, reviewable, and auditable — a critical requirement in regulated industries such as pharmaceuticals.

Deliverables and Business Value
Key Deliverables

Store Performance Mart

Enabled comparison of stores across regions and time.

Supported monthly performance tracking and regional benchmarking.

Product Performance Mart

Identified top-performing products by revenue and profitability.

Enabled analysis of product mix and margin drivers.

Promotional Effectiveness Mart

Quantified the true impact of promotions on volume, revenue, and margin.

Enabled comparison between promotional and non-promotional performance.

Pricing Strategy Mart

Assessed pricing discipline using list price vs realized selling price.

Separated pricing issues from cost-driven margin erosion.

Benefits to the Organization

Clear Decision Support
Managers can confidently answer what is happening, where, and why — without relying on ad-hoc analysis.

Separation of Concerns
By using dimensional models instead of a monolithic fact table, each business question is answered without unnecessary complexity.

Flexibility for Analytics Teams
Analysts can build dashboards, derive KPIs, and explore trends without rewriting logic or risking incorrect aggregations.

Scalability
New use cases (e.g., supplier analytics, inventory optimization) can be added by building on existing models rather than starting from scratch.

Dimensional Modeling vs Monolithic Modeling

A key design decision in this project was to adopt dimensional modeling rather than a single, wide, monolithic table.

Why Dimensional Modeling Matters

Reduces cognitive load for analysts and business users

Prevents many-to-many relationship issues in BI tools

Encourages clear ownership of metrics

Aligns naturally with how business stakeholders think (products, stores, time, regions)

This approach ensures that analytics remain accurate, explainable, and extensible as the organization grows.

Conclusion and Recommendations

This project illustrates how dbt can be used not just as a transformation tool, but as a foundation for modern analytics engineering. By combining dbt with sound dimensional modeling principles, the organization gains a robust analytics layer that supports both operational reporting and strategic decision-making.

Recommendations

Continue expanding analytics marts incrementally as new business questions arise.

Treat dbt models as shared assets across analytics, finance, and operations teams.

Invest in BI semantic layers to standardize KPI definitions on top of these marts.

Leverage dbt documentation to promote data literacy across non-technical stakeholders.

In summary, this project demonstrates how thoughtful data modeling, supported by dbt, can transform raw data into a strategic advantage — enabling faster insights, better decisions, and scalable analytics growth.