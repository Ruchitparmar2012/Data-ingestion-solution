{{
    config(
        materialized='incremental',
        unique_key='BRANCH_KEY',
        incremental_strategy='merge',
        alias='GOLD_DIM_BRANCH'
    )
}}

WITH SRC AS (
    SELECT
        BRANCH_KEY,
        SOURCE_SYSTEM_ID,
        BRANCH_CODE,
        BRANCH_NAME,
        PARENT_BRANCH,
        STATE,
        IS_ACTIVE,
        CITY,
        COUNTY,
        INSERTED_DATE,
        INSERTED_BY,
        UPDATED_DATE,
        UPDATED_BY
    FROM {{ ref('TBL_DIM_BRANCH') }}
    WHERE IS_ACTIVE = 'Y'
)

SELECT
    SRC.BRANCH_KEY,
    SRC.SOURCE_SYSTEM_ID,
    SRC.BRANCH_CODE,
    SRC.BRANCH_NAME,
    SRC.PARENT_BRANCH,
    SRC.STATE,
    SRC.IS_ACTIVE,
    SRC.CITY,
    SRC.COUNTY,
    SRC.INSERTED_DATE,
    SRC.INSERTED_BY,
    SRC.UPDATED_DATE,
    SRC.UPDATED_BY,
    {% if is_incremental() %}
    COALESCE(TGT.GOLD_INSERTED_DATE, CURRENT_TIMESTAMP()) AS GOLD_INSERTED_DATE,
    COALESCE(TGT.GOLD_INSERTED_BY, CURRENT_USER())         AS GOLD_INSERTED_BY,
    CURRENT_TIMESTAMP()                                     AS GOLD_UPDATED_DATE,
    CURRENT_USER()                                          AS GOLD_UPDATED_BY
    {% else %}
    CURRENT_TIMESTAMP() AS GOLD_INSERTED_DATE,
    CURRENT_USER()      AS GOLD_INSERTED_BY,
    CURRENT_TIMESTAMP() AS GOLD_UPDATED_DATE,
    CURRENT_USER()      AS GOLD_UPDATED_BY
    {% endif %}
FROM SRC
{% if is_incremental() %}
LEFT JOIN {{ this }} AS TGT
    ON TGT.BRANCH_KEY = SRC.BRANCH_KEY
WHERE TGT.BRANCH_KEY IS NULL
   OR SRC.UPDATED_DATE > TGT.UPDATED_DATE
{% endif %}