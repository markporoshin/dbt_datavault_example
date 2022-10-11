{{
    config(
        schema='raw_vault',
        distributed_by='developer_pk',
        materialized='incremental',
    )
}}


{%- set source_model = 'developers_stage' -%}
{%- set src_pk = "developer_pk" -%}
{%- set src_nk = "name" -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}


{{ dbtvault.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                src_source=src_source, source_model=source_model) }}