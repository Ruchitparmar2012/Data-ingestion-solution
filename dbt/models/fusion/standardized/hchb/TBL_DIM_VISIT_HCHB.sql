{{
    config(
        materialized='table',
        alias='TBL_DIM_VISIT_HCHB'
    )
}}

SELECT
    MD5(CONCAT('HCHB', VISIT_ID))                AS VISIT_KEY,
    1                                            AS SOURCE_SYSTEM_ID,

    VISIT_ID,
    PATIENT_ID,
    PROVIDER_ID,
    VISIT_DATE,
    VISIT_TYPE,
    VISIT_STATUS,

    CURRENT_TIMESTAMP()::TIMESTAMP_NTZ          AS INSERTED_DATE,
    CURRENT_USER()                              AS INSERTED_BY,
    CURRENT_TIMESTAMP()::TIMESTAMP_NTZ          AS UPDATED_DATE,
    CURRENT_USER()                              AS UPDATED_BY

FROM {{ ref('HC_FUSION_STG_SILVER_HCHB_VISIT_CLEANSED') }}
