select
    employee_id as employee_key,
    full_name,
    email
from {{ ref('obt_employees') }}