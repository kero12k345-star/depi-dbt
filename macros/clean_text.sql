{% macro clean_text(column_name) %}
    trim(lower({{ column_name }}))
{% endmacro %}
