{% snapshot employee_track_snapshot%}
{{
    config(

target_schema = 'SNAPSHOTS',
        unique_key = 'emp_id',
        strategy = 'timestamp',
        updated_at = 'last_updated'
    )
}}

select * from demo.PUBLIC.employee

{% endsnapshot %}