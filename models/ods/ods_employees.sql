select
    employee_id,
    {{ clean_text('full_name') }} as full_name,
    {{ clean_text('email') }} as email,
    gender,
    country,
    department,
    cast(hire_date as date) as hire_date,
    salary
from {{ ref('DEPI_data') }}