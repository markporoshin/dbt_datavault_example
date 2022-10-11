{{
    config(
        schema='raw_vault',
        distributed_by='position_pk',
        materialized='incremental',
    )
}}


{%- set source_model = 'developers_stage' -%}
{%- set src_pk = "position_pk" -%}
{%- set src_nk = "position" -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}


{{ dbtvault.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                src_source=src_source, source_model=source_model) }}