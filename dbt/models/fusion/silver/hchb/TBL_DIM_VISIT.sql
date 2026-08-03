{{
    config(
        materialized='incremental',
        unique_key='VISIT_KEY',
        incremental_strategy='merge',
        alias='TBL_DIM_VISIT',
        post_hook="
            DELETE FROM {{ this }}
            WHERE SOURCE_SYSTEM_ID = 1
              AND VISIT_KEY NOT IN (SELECT VISIT_KEY FROM {{ ref('TBL_DIM_VISIT_HCHB') }})
        "
    )
}}

SELECT *
FROM {{ ref('TBL_DIM_VISIT_HCHB') }}
