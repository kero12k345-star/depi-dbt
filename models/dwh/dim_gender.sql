select
    row_number() over (order by gender) as gender_key,
    gender
from (select distinct gender from {{ ref('obt_employees') }}) g