
{%test promo_margin_test (model, promo_revenue, promo_cost, promo_margin)%}



SELECT 
        *
FROM {{model}}
WHERE abs(
                {{promo_margin}} -({{promo_revenue}} - {{promo_cost}})) > 0.01
{%endtest%}