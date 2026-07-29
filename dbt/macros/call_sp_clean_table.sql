-- ─────────────────────────────────────────────────────────────────────────────
--  OPTION 1: Call SP_CLEAN_TABLE stored proc from dbt
--  Used when var('cleansing_mode') = 'proc'
--  Calls the existing Python Snowpark proc which reads rules from
--  DATA_INGESTION_SOLUTION.ETL_MANAGEMENT.CLEANSING_RULES
-- ─────────────────────────────────────────────────────────────────────────────
{% macro call_sp_clean_table(pipeline_id) %}
    CALL DATA_INGESTION_SOLUTION.SILVER_STAGING.SP_CLEAN_TABLE('{{ pipeline_id }}');
{% endmacro %}
