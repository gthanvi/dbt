{% snapshot Country_snapshot %}
{{
    config(
      target_schema='DBT_snapshots',
      unique_key='Code',
      strategy='timestamp',
      updated_at='updateat',
    )
}}
select * from {{ ref('TransformedCountry') }}
{% endsnapshot %}