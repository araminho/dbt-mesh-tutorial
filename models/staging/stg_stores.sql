select
    id as store_id,
    name as store_name,
    cast(timestamp(opened_at) as date) as opened_at,
    tax_rate
from {{ source('raw', 'stores') }}
