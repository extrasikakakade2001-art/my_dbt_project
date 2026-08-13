{% snapshot employee_snapshot %}
{{
    config(

target_schema = 'SNAPSHOTS',
        unique_key = 'EMP_ID',
        strategy = 'check',
        check_cols = ['DEPARTMENT','SALARY']
    )
}}

select 
    EMP_ID,
    EMP_NAME,
    DEPARTMENT,
    SALARY 
    
from  EMPLOYEE_RAW

{% endsnapshot %}