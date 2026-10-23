{% macro create_proc() %}

{% set sql %}
CREATE OR REPLACE PROCEDURE {{ target.schema }}.SP_LOAD_CUSTOMER()
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    insert into {{ ref('customers') }} select * from {{ source('retail_stg','customers')}};
END;
$$;
{% endset %}

{% do run_query(sql) %}

{% endmacro %}