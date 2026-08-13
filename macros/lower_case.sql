{% macro lowercase(column_name) %}
    UPPER({{ column_name }})
{% endmacro %}