{{
    config(
        materialized='incremental',
        unique_key='BRANCH_KEY',
        incremental_strategy='merge',
        alias='TBL_DIM_BRANCH',
        post_hook="
            DELETE FROM {{ this }}
            WHERE SOURCE_SYSTEM_ID = 1
              AND BRANCH_KEY NOT IN (SELECT BRANCH_KEY FROM {{ ref('TBL_DIM_BRANCH_HCHB') }})
        "
    )
}}

SELECT *
FROM {{ ref('TBL_DIM_BRANCH_HCHB') }}