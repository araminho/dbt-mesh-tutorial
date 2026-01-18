select
    id as order_id,
    customer as customer_id,
    store_id,
    cast(ordered_at as timestamp) as ordered_at,
    subtotal,
    tax_paid,
    order_total
from {{ source('raw', 'orders') }}
