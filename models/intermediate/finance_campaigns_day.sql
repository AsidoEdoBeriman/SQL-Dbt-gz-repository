SELECT
    c.date_date
    ,(f.operational_margin - c.ads_cost) AS ads_margin
    ,f.average_basket
    ,f.operational_margin
    ,c.ads_cost
FROM {{ ref('int_campaigns_day') }} c
JOIN {{ ref('finance_days') }} f
    USING(date_date)
    GROUP BY date_date,f.operational_margin,c.ads_cost,f.average_basket,f.operational_margin
    ORDER BY date_date DESC