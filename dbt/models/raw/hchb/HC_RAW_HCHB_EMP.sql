{{ config(
    database="HC_RAW",
    schema="HCHB",
    alias="EMP",
    materialized="incremental",
    unique_key="EMP_ID",
    incremental_strategy="merge",
    tags=["RAW", "HCHB"]
) }}

SELECT
    EMP_ID,
    EMP_NAME,
    EMP_DEPT,
    EMP_SALARY,
    EMP_HIRE_DATE,
    UPDATED_DATE

FROM {{ source('HC_LANDING_HCHB', 'EMP') }}

WHERE EMP_ID IS NOT NULL

{% if is_incremental() %}

AND UPDATED_DATE >
(
    SELECT COALESCE(MAX(UPDATED_DATE), '1900-01-01'::TIMESTAMP_NTZ)
    FROM {{ this }}
)

{% endif %}

QUALIFY ROW_NUMBER() OVER
(
    PARTITION BY EMP_ID
    ORDER BY UPDATED_DATE DESC
) = 1
