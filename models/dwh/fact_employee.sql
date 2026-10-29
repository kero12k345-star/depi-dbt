select
    e.employee_id as employee_key,
    c.country_key,
    d.department_key,
    g.gender_key,
    dt.date_key,
    e.salary
from {{ ref('obt_employees') }} e
join {{ ref('dim_country') }} c on e.country = c.country
join {{ ref('dim_department') }} d on e.department = d.department
join {{ ref('dim_gender') }} g on e.gender = g.gender
join {{ ref('dim_date') }} dt on e.hire_date = dt.full_date