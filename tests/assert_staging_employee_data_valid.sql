select employee_id
from {{ ref('ods_employees') }}
where salary <= 0 or email not like '%@%'