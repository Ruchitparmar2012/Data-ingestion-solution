-- ─────────────────────────────────────────────────────────────────────────────
--  DB CONFIG MACROS
--  Use these in models instead of hardcoded database names.
--  Controlled by Azure DevOps pipeline env vars per environment.
-- ─────────────────────────────────────────────────────────────────────────────

{% macro landing_db() %}
  {{ env_var('DBT_LANDING_DB', 'HC_LANDING') }}
{% endmacro %}

{% macro raw_db() %}
  {{ env_var('DBT_RAW_DB', 'HC_RAW') }}
{% endmacro %}

{% macro fusion_db() %}
  {{ env_var('DBT_FUSION_DB', 'HC_FUSION') }}
{% endmacro %}

{% macro consumption_db() %}
  {{ env_var('DBT_CONSUMPTION_DB', 'HC_CONSUMPTION') }}
{% endmacro %}

-- Resolve source database for a given source system
-- Usage: {{ source_db('HCHB') }}  →   HC_LANDING.HCHB
{% macro source_db(source_system) %}
  {{ landing_db() }}.{{ source_system }}
{% endmacro %}

-- Resolve raw database for a given source system
{% macro raw_schema_ref(source_system, table_name) %}
  {{ raw_db() }}.{{ source_system }}.{{ table_name }}
{% endmacro %}
