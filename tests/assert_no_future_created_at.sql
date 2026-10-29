select
    customer_id,
    created_at
from {{ ref('dim_customers') }}
where created_at > current_timestamp + interval '1 day'