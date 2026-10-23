-- macros/deploy_all.sql

{% macro deploy_all() %}

    {{ create_proc() }}
    {{ create_stream() }}
    {{ create_task() }}
    {{ validate_model_names() }}

{% endmacro %}