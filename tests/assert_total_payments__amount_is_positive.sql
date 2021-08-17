SELECT
    order_id,
    sum(amount) as total_amount
FROM {{ref('stg_payments')}}
group by 1
HAVING not(total_amount >= 0)