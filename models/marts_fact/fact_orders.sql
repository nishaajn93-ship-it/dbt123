{{ config(
    materialized='table',
    schema='DBT_DEV'
) }}

SELECT
    O.ORDER_ID,
    C.CUSTOMER_ID,
    C.CUSTOMER_NAME,
    O.AMOUNT
FROM {{ ref('stg_orders') }} O

INNER JOIN {{ ref('dim_customers') }} C
    ON O.CUSTOMER_ID = C.CUSTOMER_ID