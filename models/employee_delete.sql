{{ config(
    materialized='table',
    pre_hook="
        DELETE FROM DEMO.PUBLIC.EMPLOYEE_CLEAN
        
    "
) }}

SELECT *
FROM {{ source('raw', 'EMPLOYEE_RAW') }}