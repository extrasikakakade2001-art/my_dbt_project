{{ config(materialized='table') }}

select

1 as EMP_ID,
'AVD' as EMP_NAME,
50000 AS SALARY 