{{ config(materialized='table') }}

select 
    CUSTOMER_ID,
    CUSTOMER_NAME,
    CITY 
FROM ASSIGNMENT.PUBLIC.PRODUCTS