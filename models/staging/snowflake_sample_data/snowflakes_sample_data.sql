WITH house_hold_customers AS (
    SELECT * 
    FROM {{ source('snowflake_sample_data', 'customer') }}
    --WHERE C_MKTSEGMENT = 'HOUSEHOLD'
)
SELECT *
FROM house_hold_customers