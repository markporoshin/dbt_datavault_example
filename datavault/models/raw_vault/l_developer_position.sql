{{
    config(
        schema='raw_vault',
        distributed_by='developer_pk',
        materialized='incremental',
    )
}}


{%- set source_model = "developers_stage" -%}
{%- set src_pk = "link_developer_position_pk" -%}
{%- set src_fk = ["position_pk", "developer_pk"] -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}


{{ dbtvault.link(src_pk=src_pk, src_fk=src_fk, src_ldts=src_ldts,
                 src_source=src_source, source_model=source_model) }}
