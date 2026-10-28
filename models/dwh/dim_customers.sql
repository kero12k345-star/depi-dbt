with staging_customers as (
    select * from {{ ref('stg_customers') }}
)

select
    customer_id,
    customer_name,
    email,
    created_at,
    current_timestamp as loaded_at
from staging_customers