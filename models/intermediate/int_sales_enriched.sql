select
    o.order_id,
    o.order_date,
    o.customer_id,
    o.product_id,
    c.customer_name,
    c.country,
    p.product_name,
    p.category,
    p.price,
    o.quantity,
    o.quantity * p.price as revenue
from {{ ref('stg_orders') }} o
left join {{ ref('stg_customers') }} c
    on o.customer_id = c.customer_id
left join {{ ref('stg_products') }} p
    on o.product_id = p.product_id