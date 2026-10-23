{% macro create_task() %}

{% set sql %}
CREATE OR REPLACE TASK {{ target.schema }}.LOAD_CUSTOMER_TASK
WAREHOUSE = COMPUTE_WH
SCHEDULE = '5 MINUTE'
AS
CALL {{ target.schema }}.SP_LOAD_CUSTOMER();
{% endset %}

{% set sql1 %}
ALTER TASK {{ target.schema }}.LOAD_CUSTOMER_TASK RESUME;
{% endset %}

{% do run_query(sql) %}
{% do run_query(sql1) %}

{% endmacro %}