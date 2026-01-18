{{ config(materialized='table') }}

select
    product_sku,
    product_name,
    product_type,
    description,
    price
from {{ ref('stg_products') }}
