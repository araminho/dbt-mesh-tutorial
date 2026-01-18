{{ config(materialized='table') }}

with orders as (
    select * from {{ ref('stg_orders') }}
),

items as (
    select * from {{ ref('stg_items') }}
)

select
    {{ dbt_utils.generate_surrogate_key(['o.order_id', 'i.item_id']) }} as order_item_key,

    -- natural foreign keys
    o.order_id,
    o.customer_id,
    o.store_id,
    i.sku as product_sku,

    -- timestamps
    o.ordered_at,

    -- measures
    o.subtotal,
    o.tax_paid,
    o.order_total

from orders o
join items i
  on o.order_id = i.order_id
