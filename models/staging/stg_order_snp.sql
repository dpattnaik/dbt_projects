{{ config(materialized='view') }}

with snp as (
 select * from {{ ref('orders_snapshot') }}
)

select * from snp where dbt_valid_to is null