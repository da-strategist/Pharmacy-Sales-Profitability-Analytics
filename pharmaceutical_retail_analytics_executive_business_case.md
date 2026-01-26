# Executive Business Case: Retail Pharmacy Analytics

## 1. Business Context

The organization operates a multi-region pharmaceutical retail chain with diverse store formats (urban, suburban, rural) and a broad product portfolio spanning OTC and branded/generic medicines. While sales data exists across stores, products, and time, leadership currently lacks clear, actionable visibility into what truly drives profitability and where value is being lost.

This business case defines the problems to be solved, objectives, and metrics/KPIs required to enable data-driven executive decisions using the existing data model.

---

## 2. Problem Statements

### Problem 1: Uneven Store Profitability

Revenue performance varies significantly across pharmacies, but revenue alone does not explain true performance. Some stores generate strong sales but weak margins, while others quietly outperform.

**Business Risk:**

* Underperforming stores are not identified early
* Best practices from high-performing stores are not replicated
* Capital and operational attention may be misallocated

---
## Monthly store performance
Objectives:
Identify overall monthly transaction volume
Top performing stores
Top performing regions
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Problem 2: Product Portfolio Margin Leakage

A SKU (Stock Keeping Unit) refers to a single, unique sellable product variant. In this analysis, each `ProductID` represents one SKU (for example: a specific brand, dosage, and pack size of a medicine).
The product assortment contains high-volume SKUs that may be eroding profitability due to low margins, pricing pressure, or heavy promotion usage.

Business Risk:

* Margin dilution from fast-moving but low-profit products
* Inefficient use of shelf space
* Poor pricing and assortment decisions

Tasks
Identify

Top products by revenue and margin
→ avoids the classic “high revenue, low profitability” trap

Promo impact
→ critical for decision-making (discount ≠ success)

Regional performance
→ supports localized assortment and pricing strategies

Market basket analysis


product_perf_mart desc: This model is created to help managers and analysts understand which products drive revenue and profitability, why they perform differently across regions, and whether promotions meaningfully impact performance.
---

### Problem 3: Promotion Effectiveness Uncertainty

Promotions are widely used to drive sales volume, but their true impact on profitability is unclear.

Business Risk:

* Promotions that increase volume but destroy margin
* Inconsistent promotional strategy across regions
* Lack of evidence-based promo governance

---

## 3. Business Objectives

### Strategic Objectives

* Improve overall profitability, not just revenue growth
* Enable evidence-based decisions at executive and regional levels
* Create transparency across stores, products, and promotions

### Operational Objectives

* Identify underperforming and best-in-class stores
* Optimize product mix toward high-margin contributors
* Rationalize promotions based on ROI

---

## 4. Key Metrics & KPIs

### 4.1 Financial Performance KPIs

**Core Metrics**

* Total Revenue (€)
* Total Cost (€)
* Total Margin (€)
* Margin % (Margin / Revenue)

**Usage:**

* Compare performance across stores, regions, and products
* Track profitability trends over time

---

### 4.2 Store Performance KPIs

* Revenue per Store
* Margin per Store
* Margin % per Store
* Revenue and Margin by:

  * Store Size Band (S/M/L)
  * Pharmacy Type (Urban/Suburban/Rural)
* Like-for-like performance (mature vs new stores)

**Executive Questions Answered:**

* Which stores are underperforming on profit?
* Which stores should be benchmarks?

---

### 4.3 Product & Portfolio KPIs

* Revenue by Product / Brand / Category
* Margin € and Margin % by Product
* Sales Volume vs Margin Contribution
* Generic vs Branded:

  * Revenue share
  * Margin share

**Executive Questions Answered:**

* Which products drive profit vs volume?
* Where is margin leakage occurring?

---

### 4.4 Promotion Effectiveness KPIs

* Promo vs Non-Promo Revenue
* Promo vs Non-Promo Margin
* Units Sold (Promo vs Non-Promo)
* Margin Delta (Promo impact on profitability)
* Promo Dependency Ratio (% of sales under promo)

**Executive Questions Answered:**

* Do promotions create or destroy value?
* Which promos should be scaled or stopped?

---

## 5. Success Criteria

This initiative is successful if leadership can:

* Clearly rank stores by **true profitability**
* Identify products to **keep, fix, or reconsider**
* Make promotion decisions based on **measured ROI**
* Confidently defend decisions in executive and board discussions

---

## 6. Constraints & Assumptions

* Analysis is based solely on existing tables:

  * DimDate
  * DimPharmacy
  * DimProduct
  * FactSales
* No customer, inventory, or staffing data assumed
* Focus is on **actionable insights**, not descriptive reporting

---

*Prepared from the perspective of the Executive Director to guide a real-world analytics engagement.*



-----------------------------------------------------------------------------------------------------------------------------------------------------------------


Objectives 

1. Revenue & Margin Control

    Track revenue, cost, and margin by:

        Store, city, region, country

        Product, brand, category (OTC vs Rx), generic vs branded

        Time (day → month → quarter → year)

    Identify:

        Low-margin products that sell a lot (silent profit killers)
        High-margin, low-volume products (growth opportunities)
        Store performance across regions

2. Store & Regional Performance

    Rank pharmacies by:

        Revenue, margin, margin %

        Units sold per store size band

    Compare:

        Urban vs suburban vs rural performance

        New vs mature stores (using OpenDate)

        Product Portfolio Decisions

    See:

        Which brands and categories actually drive profit

        Whether generics outperform branded products on margin

    Flag:

        Products selling close to or below cost

        Discontinued products still appearing in sales (compliance red flag)

        Promo Effectiveness (High Interest)

    Compare promo vs non-promo:

        Units uplift

        Margin erosion

        Net profit impact

        “Are promotions increasing profit or just volume?”

2. What I immediately want YOU to analyze first (priority order)


2.1: Store Profitability & Variance

Question I care about:

“Why do two similar stores perform very differently?”


        Revenue, margin, and margin % by store

Normalized by:

Store size band

Urban/rural classification

Outlier detection:

Underperforming stores

Best-in-class stores we should learn from

🔥 Priority 2: Product Margin Leakage

Question:

“Where are we bleeding margin without noticing?”

I expect:

Products with:

High sales volume but low or negative margin

Heavy promo dependency

Generic vs branded margin comparison

Category-level margin contribution

🔥 Priority 3: Promotion ROI

Question:

“Which promos should we stop immediately?”

I want:

Promo vs non-promo:

Units sold

Revenue

Margin €

Clear verdict:

Value-creating promos

Volume-only promos

Loss-making promos