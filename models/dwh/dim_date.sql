select
    row_number() over (order by hire_date) as date_key,
    hire_date as full_date,
    extract(year from hire_date) as year,
    extract(month from hire_date) as month,
    extract(day from hire_date) as day
from (select distinct hire_date from {{ ref('obt_employees') }}) d