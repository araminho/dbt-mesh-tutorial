select
    id as item_id,
    order_id,
    sku
from {{ source('raw', 'items') }}
