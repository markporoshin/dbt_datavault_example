{{
    config(
        schema='primary_data_layer',
        materialized='table'
    )
}}


select
    'Alex'          as name,
    'CTO'           as position,
    'Ski'           as hobby,
    '2022-10-01'    as load_date
union
select
    'Alex'          as name,
    'CTO'           as position,
    'Dacha'         as hobby,
    '2022-10-02'    as load_date
union
select
    'Mark'          as name,
    'DataEngineer'  as position,
    'Chess'         as hobby,
    '2022-10-01'    as load_date
union
select
    'Sanechek'      as name,
    'DataScience'   as position,
    'Math'          as hobby,
    '2022-10-01'    as load_date
union
select
    'Sanechek'      as name,
    'DataScience'   as position,
    'Basketball'    as hobby,
    '2022-10-02'    as load_date
