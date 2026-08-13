{{ config(materialized='table') }}

select 
    emp_id,
    {{ lowercase ('EMP_NAME') }} as EMP_NAME,
    DEPARTMENT,
    SALARY
FROM {{ source ('raw','EMPLOYEE_RAW')}}