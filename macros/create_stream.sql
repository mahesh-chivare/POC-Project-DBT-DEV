{% macro create_stream() %}

{% set sql %}
CREATE OR REPLACE STREAM {{ target.schema }}.CUSTOMER_STREAM
ON TABLE {{ target.schema }}.CUSTOMERS;
{% endset %}

{% do run_query(sql) %}

{% endmacro %}