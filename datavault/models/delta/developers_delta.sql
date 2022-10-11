{{
    config(
        schema='delta',
        materialized='table'
    )
}}


select
    name,
    position,
    hobby,
    load_date
from
    {{ source('primary_data_layer', 'developers_source') }} src
where
    '{{ var('developers_delta')['start_date'] }}' <= src.load_date
    and
    src.load_date < '{{ var('developers_delta')['end_date'] }}'