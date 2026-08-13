{{ config(
    materialized='table'
) }}

WITH cleaned_data as (
    select
        EMP_ID,
        trim(EMP_NAME) as EMP_NAME,
        UPPER(TRIM (DEPARTMENT)) AS DEPARTMENT,
        CASE 
         WHEN SALARY < 0 THEN NULL
         ELSE SALARY
        END AS SALARY,
        JOIN_DATE as join_DATE,

        ROW_NUMBER() OVER(
            PARTITION BY EMP_ID
            ORDER BY JOIN_DATE
        )AS RN 

        from EMPLOYEE_RAW

        WHERE EMP_NAME IS NOT NULL
)

select 
    EMP_ID AS EMPLOYEE_ID,
    EMP_NAME AS EMPLOYEE_NAME,
    DEPARTMENT,
    SALARY,
    JOIN_DATE

FROM cleaned_data
WHERE RN = 1


