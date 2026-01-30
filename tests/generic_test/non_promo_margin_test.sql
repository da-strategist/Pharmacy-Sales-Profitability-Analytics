
{% test non_promo_margin_test (model, non_promo_revenue, non_promo_cost, non_promo_margin)%}

SELECT 
        *
FROM {{model}}
WHERE abs(
    {{non_promo_margin}} - ({{non_promo_revenue}} - {{non_promo_cost}}) > 0.01
)

{%endtest%}

