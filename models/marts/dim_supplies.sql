{{ config(materialized='table') }}

select
    {{ dbt_utils.generate_surrogate_key(['supply_id', 'product_sku']) }} as supply_key,
    supply_id,
    product_sku,
    supply_name,
    cost,
    perishable
from {{ ref('stg_supplies') }}
