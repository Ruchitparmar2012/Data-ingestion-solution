{{ config(
    database="HC_RAW",
    schema="HCHB",
    alias="CLIENT_CONTACT_TYPES",
    materialized="incremental",
    unique_key="CCT_ID",
    incremental_strategy="merge",
    tags=["RAW", "HCHB"]
) }}

SELECT
    CCT_ID,
    CCT_DESC,
    CCT_ACTIVE,
    CCT_REQUIRED,
    CCT_INSERTDATE,
    CCT_LASTUPDATE,
    _CDC_OP,
    _CDC_TS,
    INSERTED_DATE,
    INSERTED_BY,
    UPDATED_DATE

FROM {{ source('HC_LANDING_HCHB', 'CLIENT_CONTACT_TYPES') }}

WHERE CCT_ID IS NOT NULL

{% if is_incremental() %}

AND INSERTED_DATE >
(
    SELECT COALESCE(MAX(INSERTED_DATE), '1900-01-01'::TIMESTAMP_NTZ)
    FROM {{ this }}
)

{% endif %}

QUALIFY ROW_NUMBER() OVER
(
    PARTITION BY CCT_ID
    ORDER BY INSERTED_DATE DESC
) = 1
