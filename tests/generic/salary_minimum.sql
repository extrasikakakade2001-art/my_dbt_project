{% test salary_minimum(model, column_name, minimum_salary) %}

SELECT
    *
FROM {{ model }}
WHERE {{ column_name }} < {{ minimum_salary }}

{% endtest %}