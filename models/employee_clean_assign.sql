SELECT
    EMP_ID,

    {{ clean_text('EMP_NAME') }} AS EMP_NAME,

    {{ clean_text('DEPARTMENT') }} AS DEPARTMENT

FROM employee_raw