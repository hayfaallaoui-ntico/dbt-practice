select
    order_id,
    order_date,
    customer_id,
    product_id,
    quantity,
     quantity * price as revenue
from {{ ref('int_sales_enriched') }}