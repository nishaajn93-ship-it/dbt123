{{ config(materialized='view') }}

SELECT
    ORDER_ID,
    CUSTOMER_ID,
    AMOUNT
FROM MY_DB.RAW.ORDERS