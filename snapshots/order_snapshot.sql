{% snapshot order_snapshot %}
{{
    config(

target_schema = 'SNAPSHOTS',
        unique_key = 'order_id',
        strategy = 'timestamp',
        updated_at = 'last_updated'
    )
}}

select * from demo.PUBLIC.orders

{% endsnapshot %}