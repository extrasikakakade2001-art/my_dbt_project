{% snapshot product_snapshot %}
{{
    config(

target_schema = 'SNAPSHOTS',
        unique_key = 'PRO_ID',
        strategy = 'timestamp',
        updated_at = 'last_updated'
    )
}}

select * from demo.PUBLIC.PRO_SNAP

{% endsnapshot %}