# DEPI dbt Project: Employees Data Warehouse

Analytics engineering project built with **dbt + PostgreSQL**. It models employee data into a star schema, with data quality tests and SCD Type 2 history tracking.

## Architecture


seed (DEPI_data) -> ods_employees -> obt_employees -> dim_* (5) + fact_employee
                          |
                          +-> snap_employee (SCD Type 2)

| Layer | Materialization | Purpose |
|---|---|---|
| ods | view | Cleaned raw data |
| obt | view | One big table |
| dwh | table | Star schema: 5 dimensions + 1 fact |
| snapshots | table | Employee change history (SCD2) |

## Data Quality

- 30+ tests: `unique`, `not_null`, `accepted_values`, `relationships`
- Custom generic test: `positive_value`
- Singular tests for business rules

## SCD Type 2

When an employee attribute changes (for example salary), the old record is closed
(`dbt_valid_to` is set) and a new record is opened (`dbt_valid_to` is null).

> The salary of employee 1 in `seeds/DEPI_data.csv` was changed on purpose to demonstrate SCD2.

## Lineage and documentation

Live documentation and lineage graph: https://kero12k345-star.github.io/depi-dbt/

## How to run

```bash
pip install dbt-postgres
dbt seed
dbt run
dbt snapshot
dbt test
dbt docs generate


## Tech stack

dbt Core 1.10, PostgreSQL, Jinja macros, GitHub Pages