select
    sku as product_sku,
    name as product_name,
    type as product_type,
    description,
    price
from {{ source('raw', 'products') }}
