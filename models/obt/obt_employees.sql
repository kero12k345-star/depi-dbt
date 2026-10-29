select
    employee_id,
    full_name,
    email,
    gender,
    country,
    department,
    hire_date,
    salary,
    extract(year from hire_date) as hire_year,
    {{ add_loaded_at() }} as loaded_at
from {{ ref('ods_employees') }}