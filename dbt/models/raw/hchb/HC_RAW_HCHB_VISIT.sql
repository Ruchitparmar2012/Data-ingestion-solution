{{ config(
    database="HC_RAW",
    schema="HCHB",
    alias="VISIT",
    materialized="incremental",
    unique_key="VISIT_ID",
    incremental_strategy="merge",
    tags=["RAW", "HCHB"]
) }}

SELECT
    VISIT_ID,
    PATIENT_ID,
    VISIT_DATE,
    VISIT_TYPE,
    PROVIDER_ID,
    VISIT_STATUS,
    UPDATED_DATE

FROM {{ source('HC_LANDING_HCHB', 'VISIT') }}

WHERE VISIT_ID IS NOT NULL

{% if is_incremental() %}

AND UPDATED_DATE >
(
    SELECT COALESCE(MAX(UPDATED_DATE), '1900-01-01'::TIMESTAMP_NTZ)
    FROM {{ this }}
)

{% endif %}

QUALIFY ROW_NUMBER() OVER
(
    PARTITION BY VISIT_ID
    ORDER BY UPDATED_DATE DESC
) = 1
