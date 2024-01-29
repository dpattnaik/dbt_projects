{{
    config(
        materialized ="table"
    )
}}

select * from {{ ref('dates') }}