select
    e.EMPLOYEE_ID,
    e.EMPLOYEE_NAME,
    d.DEPARTMENT_NAME

FROM {{ ref('EMPLOYEE_CLEAN') }} e 

inner join {{ ref ('department_seed')}} d
    ON e.DEPARTMENT = d.DEPARTMENT_NAME