select
    row_number() over (order by country) as country_key,
    country
from (select distinct country from {{ ref('obt_employees') }}) c