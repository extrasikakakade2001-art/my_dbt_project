{% macro clean_text(column_name) %}
    COALESCE(UPPER(TRIM({{ column_name }})), 'UNKNOWN')
{% endmacro %}