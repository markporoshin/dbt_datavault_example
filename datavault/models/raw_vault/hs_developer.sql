{{
    config(
        schema='raw_vault',
        materialized='incremental',
        distributed_by='developer_pk',
    )
}}


{%- set source_model = 'developers_stage' -%}
{%- set src_pk = "developer_pk" -%}
{%- set src_cdk = "hobby" -%}
{%- set src_hashdiff = "developer_hashdiff" -%}
{%- set src_payload = [
     'name'
] -%}
{%- set src_eff = "effective_from" -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}


{{ dbtvault.ma_sat(src_pk=src_pk,
                   src_cdk=src_cdk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_eff=src_eff,
                   src_ldts=src_ldts,
                   src_source=src_source,
                   source_model=source_model) }}
