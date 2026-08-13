SELECT
    ID,

    {{ clean_text('PRO_NAME') }} AS PRODUCT_NAME,


FROM production