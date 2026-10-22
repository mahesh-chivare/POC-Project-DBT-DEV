{% macro validate_model_names() %}

{% for node in graph.nodes.values() %}

    {% if node.resource_type == 'model' %}

        {% set model_name = node.name %}

        {% if not modules.re.match('^[A-Z_]*$', model_name) %}

            {% do exceptions.raise_compiler_error(
                "Naming convention violation: " ~ model_name ~
                ". Model names must be UPPERCASE and use underscores only."
            ) %}

        {% endif %}

    {% endif %}

{% endfor %}

{% endmacro %}
