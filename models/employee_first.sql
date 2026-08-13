{{ config(
    materialized='table',
    post_hook="
        INSERT INTO DEMO.PUBLIC.ETL_AUDIT
        VALUES ( 'EMPLOYEE_CLEAN', CURRENT_TIMESTAMP())
    "
) }}

SELECT *
FROM {{ source('raw', 'EMPLOYEE_RAW') }}