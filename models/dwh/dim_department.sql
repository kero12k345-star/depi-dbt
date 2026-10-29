select
    row_number() over (order by department) as department_key,
    department
from (select distinct department from {{ ref('obt_employees') }}) d