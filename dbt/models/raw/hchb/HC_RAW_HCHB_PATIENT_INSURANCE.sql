{{ config(
    database="HC_RAW",
    schema="HCHB",
    alias="PATIENT_INSURANCE",
    materialized="incremental",
    unique_key="PATIENT_INSURANCE_ID",
    incremental_strategy="merge",
    tags=["RAW", "HCHB"]
) }}

SELECT
    PATIENT_INSURANCE_ID,
    PATIENT_ID,
    INSURANCE_ID,
    POLICY_NUMBER,
    START_DATE,
    END_DATE,
    IS_PRIMARY,
    INSERTED_DATE,
    UPDATED_DATE

FROM {{ source('HC_LANDING_HCHB', 'PATIENT_INSURANCE') }}

WHERE PATIENT_INSURANCE_ID IS NOT NULL

{% if is_incremental() %}

AND INSERTED_DATE >
(
    SELECT COALESCE(MAX(INSERTED_DATE), '1900-01-01'::TIMESTAMP_NTZ)
    FROM {{ this }}
)

{% endif %}

QUALIFY ROW_NUMBER() OVER
(
    PARTITION BY PATIENT_INSURANCE_ID
    ORDER BY INSERTED_DATE DESC
) = 1
