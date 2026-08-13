select 
    EMP_ID,
    {{ clean_name('EMP_NAME') }} as EMP_NAME,
    {{ clean_name('DEPARTMENT') }} as DEPARTMENT,
    SALARY
FROM {{ source ('raw','EMPLOYEE_RAW')}}