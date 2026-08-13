{{ config(
    materialized='table',

    pre_hook=[
        "INSERT INTO EMPLOYEE_AUDIT (MODEL_NAME, STATUS, START_TIME, END_TIME)
         VALUES ('emp_clean_assign', 'STARTED', CURRENT_TIMESTAMP(), NULL)"
    ],

    post_hook=[
        "UPDATE EMPLOYEE_AUDIT
         SET STATUS = 'SUCCESS',
             END_TIME = CURRENT_TIMESTAMP()
         WHERE MODEL_NAME = 'emp_clean_assign'
         AND STATUS = 'STARTED'",

        "INSERT INTO EMPLOYEE_AUDIT_SUMMARY
         SELECT
             'emp_clean_assign',
             COUNT(*),
             CURRENT_DATE()
         FROM {{ this }}"
    ]
) }}

SELECT
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY
FROM {{ source('raw', 'employee_raw') }}
WHERE EMP_ID IS NOT NULL