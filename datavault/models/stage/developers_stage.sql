{{
    config(
        schema='stage',
        materialized='table',
    )
}}


{%- set yaml_metadata -%}
source_model: 'developers_delta'
derived_columns:
  EFFECTIVE_FROM: 'now()'
  RECORD_SOURCE: "!SYNTHETIC_SOURCE"
hashed_columns:
 DEVELOPER_PK:
  - 'name'
 POSITION_PK:
  - 'position'
 DEVELOPER_HASHDIFF:
  is_hashdiff: true
  columns:
    - 'hobby'
    - 'name'
 LINK_DEVELOPER_POSITION_PK:
  - 'position'
  - 'name'
{%- endset -%}


{% set metadata_dict = fromyaml(yaml_metadata) %}

{% set source_model = metadata_dict['source_model'] %}

{% set derived_columns = metadata_dict['derived_columns'] %}

{% set hashed_columns = metadata_dict['hashed_columns'] %}


{{ dbtvault.stage(include_source_columns=true,
                  source_model=source_model,
                  derived_columns=derived_columns,
                  hashed_columns=hashed_columns,
                  ranked_columns=none) }}