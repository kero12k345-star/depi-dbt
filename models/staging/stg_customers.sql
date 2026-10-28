with raw_customers as (
    select
        id as customer_id,
        trim(name) as customer_name,
        email,
        created_at
    from {{ source('raw_data', 'customers') }}
)

select * from raw_customers