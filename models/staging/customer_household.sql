
{{config(materialized = 'table')}}

WITH household_customer as (
    SELECT *
    FROM {{source('snowflake_sample_data','customer')}}
    WHERE C_MKTSEGMENT = 'HOUSEHOLD'
)
SELECT *
FROM household_customer


