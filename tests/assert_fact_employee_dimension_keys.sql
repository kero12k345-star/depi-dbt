select employee_key
from {{ ref('fact_employee') }}
where country_key is null
   or department_key is null
   or gender_key is null
   or date_key is null