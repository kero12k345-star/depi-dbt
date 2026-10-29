{% snapshot snap_employee %}

{{
    config(
      target_schema='snapshots',
      unique_key='employee_id',
      strategy='check',
      check_cols=['full_name', 'email', 'gender', 'country', 'department', 'hire_date', 'salary'],
      invalidate_hard_deletes=True
    )
}}

select * from {{ ref('ods_employees') }}

{% endsnapshot %}