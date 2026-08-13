{{ config(
    post_hook=[
        "insert into load_audit
         select '{{ this.name }}',
            count(*),
            CURRENT_TIMESTAMP()
         from {{ this }}"
    ]
)}}

select 
    * 
from EMPLOYEE_RAW