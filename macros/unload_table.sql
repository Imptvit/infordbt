{% macro unload_to_s3(t) %}

    {{ log("Unloading data", True) }}
    {% call statement('unload_test', fetch_result=true, auto_begin=true) %}
	copy into @OUTPUT_STAGE/{{t}}
    from {{t}}
    overwrite = true
    {% endcall %}
    {{ log("Unloaded data", True) }}

{% endmacro %}