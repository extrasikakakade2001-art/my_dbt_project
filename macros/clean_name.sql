{% macro clean_name(column_name) %}
    CASE 
        WHEN {{ column_name }} IS NULL
        THEN 'unknown'
        WHEN TRIM({{ column_name }}) = ''
        THEN 'unknown'
        WHEN UPPER({{ column_name }}) = 'NULL'
        THEN 'unknown'
        ELSE {{ column_name }}
    END
{% endmacro %}