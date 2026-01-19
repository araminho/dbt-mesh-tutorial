select
    id as supply_id,
    name as supply_name,
    sku as product_sku,
    cost,
    perishable
from {{ source('raw', 'supplies') }}
