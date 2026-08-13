select 
    EMP_ID,
    lower (EMP_NAME) as EMP_NAME,
    salary*12 as annual_salary
    from ASSIGNMENT.PUBLIC.employee_trans