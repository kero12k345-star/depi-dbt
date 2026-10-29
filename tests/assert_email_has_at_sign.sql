select
    customer_id,
    email
from {{ ref('dim_customers') }}
where email not like '%@%'