{{ config(
    materialized='table',
    schema='DBT_DEV'
) }}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    CITY
FROM {{ ref('stg_customers') }}