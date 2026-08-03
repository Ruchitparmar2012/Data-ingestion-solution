{{
    config(
        materialized='incremental',
        unique_key='VISIT_KEY',
        incremental_strategy='merge',
        alias='GOLD_DIM_VISIT'
    )
}}

WITH SRC AS (
    SELECT
        VISIT_KEY,
        SOURCE_SYSTEM_ID,
        VISIT_ID,
        PATIENT_ID,
        PROVIDER_ID,
        VISIT_DATE,
        VISIT_TYPE,
        VISIT_STATUS,
        INSERTED_DATE,
        INSERTED_BY,
        UPDATED_DATE,
        UPDATED_BY
    FROM {{ ref('TBL_DIM_VISIT') }}
    WHERE VISIT_STATUS = 'ACTIVE'
)

SELECT
    SRC.VISIT_KEY,
    SRC.SOURCE_SYSTEM_ID,
    SRC.VISIT_ID,
    SRC.PATIENT_ID,
    SRC.PROVIDER_ID,
    SRC.VISIT_DATE,
    SRC.VISIT_TYPE,
    SRC.VISIT_STATUS,
    SRC.INSERTED_DATE,
    SRC.INSERTED_BY,
    SRC.UPDATED_DATE,
    SRC.UPDATED_BY,

    {% if is_incremental() %}
    COALESCE(TGT.GOLD_INSERTED_DATE, CURRENT_TIMESTAMP()) AS GOLD_INSERTED_DATE,
    COALESCE(TGT.GOLD_INSERTED_BY, CURRENT_USER())         AS GOLD_INSERTED_BY,
    CURRENT_TIMESTAMP()                                   AS GOLD_UPDATED_DATE,
    CURRENT_USER()                                        AS GOLD_UPDATED_BY
    {% else %}
    CURRENT_TIMESTAMP() AS GOLD_INSERTED_DATE,
    CURRENT_USER()      AS GOLD_INSERTED_BY,
    CURRENT_TIMESTAMP() AS GOLD_UPDATED_DATE,
    CURRENT_USER()      AS GOLD_UPDATED_BY
    {% endif %}

FROM SRC

{% if is_incremental() %}
LEFT JOIN {{ this }} AS TGT
    ON TGT.VISIT_KEY = SRC.VISIT_KEY
WHERE TGT.VISIT_KEY IS NULL
   OR SRC.UPDATED_DATE > TGT.UPDATED_DATE
{% endif %}
