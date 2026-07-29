-- ─────────────────────────────────────────────────────────────────────────────
--  HELPERS — ported from reference project, adapted for HCHB platform
-- ─────────────────────────────────────────────────────────────────────────────

-- Insert -1 unknown/default record for dimension tables
-- Usage in post_hook: {{ insert_unknown_record(this, 'PATIENT_KEY', {...}) }}
{% macro insert_unknown_record(model, key_col, default_values) %}
  INSERT INTO {{ model }} ({{ default_values.keys() | join(', ') }})
  SELECT {{ default_values.values() | join(', ') }}
  WHERE NOT EXISTS (
    SELECT 1 FROM {{ model }} WHERE {{ key_col }} = MD5('-1')
  )
{% endmacro %}

-- Log dbt run results to audit table
{% macro log_dbt_results(results) %}
  {% if execute %}
    {% for result in results %}
      {% set status = result.status %}
      {% set model  = result.node.unique_id %}
      {% do log("dbt run: " ~ model ~ " → " ~ status, info=True) %}
    {% endfor %}
  {% endif %}
{% endmacro %}

-- Generate source_system_id for standardized layer
-- 1=HCHB, 2=ECW, 3=WELLSKY — extend as sources are added
{% macro source_system_id(source_name) %}
  CASE '{{ source_name }}'
    WHEN 'HCHB'    THEN 1
    WHEN 'ECW'     THEN 2
    WHEN 'WELLSKY' THEN 3
    ELSE -1
  END
{% endmacro %}

-- Standard ETL audit columns appended to every model
{% macro etl_audit_cols(source_name) %}
  '{{ source_name }}'                      AS SOURCE_SYSTEM,
  {{ source_system_id(source_name) }}      AS SOURCE_SYSTEM_ID,
  CURRENT_TIMESTAMP()                      AS ETL_INSERTED_DATE,
  CURRENT_USER()                           AS ETL_INSERTED_BY
{% endmacro %}
